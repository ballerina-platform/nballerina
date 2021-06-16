import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.err;

type Scope record {|
    string name;
    bir:Register reg;
    Scope? prev;
|};

type CodeGenError err:Semantic|err:Unimplemented;

class CodeGenContext {
    final Module mod;
    final bir:FunctionCode code;
    final string functionName;

    function init(Module mod, string functionName) {
        self.mod = mod;
        self.code = {};
        self.functionName = functionName;
    }

    function createRegister(bir:SemType t, string? varName = ()) returns bir:Register {
        return bir:createRegister(self.code, t, varName);
    }
    
    function createBasicBlock() returns bir:BasicBlock {
        return bir:createBasicBlock(self.code);
    }

    function semanticErr(err:Message msg) returns err:Semantic {
        return err:semantic(msg, functionName=self.functionName);
    }
    
}

function codeGenFunction(Module mod, string functionName, bir:FunctionSignature signature, string[] paramNames, Stmt[] body) returns bir:FunctionCode|CodeGenError {
    CodeGenContext cx = new(mod, functionName);
    bir:BasicBlock startBlock = cx.createBasicBlock();
    Scope? scope = ();
    foreach int i in 0 ..< paramNames.length() {
        bir:Register reg = cx.createRegister(signature.paramTypes[i], paramNames[i]);
        scope = { name: paramNames[i], reg, prev: scope };
    }
    bir:BasicBlock? endBlock = check codeGenStmts(cx, startBlock, scope, body);
    if !(endBlock is ()) {
        bir:RetInsn ret = { operand: () };
        endBlock.insns.push(ret);
    }
    codeGenOnPanic(cx);
    return cx.code;
}

function codeGenOnPanic(CodeGenContext cx) {
    bir:BasicBlock[] blocks = cx.code.blocks;
    bir:BasicBlock? onPanicBlock = ();
    foreach var b in blocks {
        if bir:isBasicBlockPotentiallyPanicking(b) {
            bir:BasicBlock pb;
            if onPanicBlock is () {
                pb = cx.createBasicBlock();
                onPanicBlock = pb;
            }
            else {
                pb = onPanicBlock;
            }
            b.onPanic = pb.label;
        }
    }
    if !(onPanicBlock  is ()) {
        bir:Register reg = cx.createRegister(t:ERROR);
        bir:CatchInsn catch = { result: reg };
        onPanicBlock.insns.push(catch);
        onPanicBlock.insns.push(<bir:AbnormalRetInsn>{operand: reg});
    }
}

function codeGenStmts(CodeGenContext cx, bir:BasicBlock bb, Scope? initialScope, Stmt[] stmts) returns CodeGenError|bir:BasicBlock? {
    bir:BasicBlock? curBlock = bb;
    Scope? scope = initialScope;
    foreach var stmt in stmts {
        if curBlock is () {
            return cx.semanticErr("unreachable code");
        }
        else if stmt is IfElseStmt {
            curBlock = check codeGenIfElseStmt(cx, curBlock, scope, stmt);
        }
        else if stmt is WhileStmt {
            // JBUG cast
            curBlock = check codeGenWhileStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is ReturnStmt {
            // JBUG cast
            curBlock = check codeGenReturnStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is VarDeclStmt {
            [curBlock, scope] = check codeGenVarDeclStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is AssignStmt {
            curBlock = check codeGenAssignStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is FunctionCallExpr {
            bir:Register reg;
            [reg, curBlock] = check codeGenFunctionCall(cx, <bir:BasicBlock>curBlock, scope, stmt);
            if reg.semType !== t:NIL {
                return cx.semanticErr("return type of function call statement not nil");
            }
        }
        else {
            return err:unreached();
        }
    }
    return curBlock;
}

function codeGenWhileStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, WhileStmt stmt) returns CodeGenError|bir:BasicBlock? {
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:BranchInsn jumpToLoopHead = { dest: loopHead.label };
    startBlock.insns.push(jumpToLoopHead);
    var [condition, nextBlock] = check codeGenExprForBoolean(cx, loopHead, scope, stmt.condition);
    if condition is bir:Register {
        bir:BasicBlock afterCondition = cx.createBasicBlock();
        bir:CondBranchInsn branch = { operand: condition, ifFalse: exit.label, ifTrue: afterCondition.label };
        nextBlock.insns.push(branch);
        bir:BasicBlock? loopEnd = check codeGenStmts(cx, afterCondition, scope, stmt.body);
        if !(loopEnd is ()) {
            loopEnd.insns.push(jumpToLoopHead);
        }
        return exit;
    }
    else if condition == false {
        return startBlock;
    }
    else {
        // not much point without break
        return err:unimplemented("'while true' not implemented yet");
    }
}

function codeGenIfElseStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, IfElseStmt stmt) returns CodeGenError|bir:BasicBlock? {
    var { condition, ifTrue, ifFalse } = stmt;
    var [operand, branchBlock] = check codeGenExprForBoolean(cx, startBlock, scope, condition);
    if operand is boolean {
        if operand {
            return codeGenStmts(cx, branchBlock, scope, ifTrue);
        }
        else if ifFalse.length() == 0 {
            return branchBlock;
        }
        else {
            return codeGenStmts(cx, branchBlock, scope, ifFalse);
        }
    }
    else {
        bir:BasicBlock ifBlock = cx.createBasicBlock();
        var ifContBlock = check codeGenStmts(cx, ifBlock, scope, ifTrue);
        bir:BasicBlock contBlock;
        if ifFalse.length() == 0 {
            // just an if branch
            contBlock = cx.createBasicBlock();
            bir:CondBranchInsn condBranch = { operand, ifTrue: ifBlock.label, ifFalse: contBlock.label };
            branchBlock.insns.push(condBranch);
            if !(ifContBlock is ()) {
                bir:BranchInsn branch = { dest: contBlock.label };
                ifContBlock.insns.push(branch);
            }
            return contBlock;    
        }
        else {
            // an if and an else
            bir:BasicBlock elseBlock = cx.createBasicBlock();
            var elseContBlock = check codeGenStmts(cx, elseBlock, scope, ifFalse);
            bir:CondBranchInsn condBranch = { operand, ifTrue: ifBlock.label, ifFalse: elseBlock.label };
            branchBlock.insns.push(condBranch);
            if ifContBlock is () && elseContBlock is () {
                // e.g. both arms have a return
                return ();
            }
            contBlock = cx.createBasicBlock();
            bir:BranchInsn branch = { dest: contBlock.label };
            if !(ifContBlock is ()) {
                ifContBlock.insns.push(branch);
            }
            if !(elseContBlock is ()) {
                elseContBlock.insns.push(branch);
            }
            return contBlock;
        }
    }
}

function codeGenReturnStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, ReturnStmt stmt) returns CodeGenError? {
    var { returnExpr } = stmt;
    var [operand, nextBlock] = check codeGenExpr(cx, startBlock, scope, returnExpr);
    bir:RetInsn insn = { operand };
    nextBlock.insns.push(insn);
    return ();
}

function codeGenVarDeclStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, VarDeclStmt stmt) returns CodeGenError|[bir:BasicBlock?, Scope?] {
    var { varName, initExpr, semType } = stmt;
    if semType is () {
        panic error("type was not normalized");
    }
    else {
        var [operand, nextBlock] = check codeGenExpr(cx, startBlock, scope, initExpr);
        bir:Register result = cx.createRegister(semType, varName);
        bir:AssignInsn insn = { result, operand };
        nextBlock.insns.push(insn);
        return [nextBlock, { name: varName, reg: result, prev: scope }];
    }   
}

function codeGenAssignStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, AssignStmt stmt) returns CodeGenError|bir:BasicBlock? {
    var { varName, expr } = stmt;
    bir:Register reg = check mustLookup(cx, varName, scope);
    var [operand, nextBlock] = check codeGenExpr(cx, startBlock, scope, expr);
    bir:AssignInsn load = { result: reg, operand };
    nextBlock.insns.push(load);
    return nextBlock;
}

function codeGenExprForInt(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns CodeGenError|[bir:IntOperand, bir:BasicBlock] {
    var [op, nextBlock] = check codeGenExpr(cx, bb, scope, expr);
    if op is bir:IntOperand {
        // rest of the type checking is in the verifier
        return [op, nextBlock];
    }
    return cx.semanticErr("expected integer operand");
}

function codeGenExprForBoolean(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns CodeGenError|[bir:BooleanOperand, bir:BasicBlock] {
    var [op, nextBlock] = check codeGenExpr(cx, bb, scope, expr);
    if op is bir:BooleanOperand {
        // rest of the type checking is in the verifier
        return [op, nextBlock];
    }
    return cx.semanticErr("expected boolean operand");
}

function codeGenExpr(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns CodeGenError|[bir:Operand, bir:BasicBlock] {
    match expr {
        // Binary int operations
        var { op, left, right } => {
            // JBUG #31123 using guard gets unreachable pattern error
            if op is bir:ArithmeticBinaryOp {
                var [l, block1] = check codeGenExprForInt(cx, bb, scope, left);
                var [r, nextBlock] = check codeGenExprForInt(cx, block1, scope, right);
                bir:Register result = cx.createRegister(t:INT);
                bir:IntArithmeticBinaryInsn insn = { op, operands: [l, r], result };
                bb.insns.push(insn);
                return [result, nextBlock];
            }
            // Compare
            else {
                bir:Insn insn;
                bir:Register result = cx.createRegister(t:BOOLEAN);
                var [l, block1] = check codeGenExpr(cx, bb, scope, left);
                var [r, nextBlock] = check codeGenExpr(cx, block1, scope, right);
                TypedOperandPair? pair = typedOperandPair(l, r);
                if pair is () {
                    return cx.semanticErr("different basic types for relational operator");
                }
                else if op is "!="|"==" {
                    insn = <bir:EqualInsn> { negate: op == "!=", operands: pair[1], result };
                }
                else if pair is IntOperandPair {
                    insn = <bir:IntCompareInsn> { op, operands: pair[1], result };
                }
                else {
                    // pair is BooleanOperandPair 
                    insn = <bir:BooleanCompareInsn> { op, operands: pair[1], result };
                }
                bb.insns.push(insn);
                return [result, nextBlock];
            }              
        }
        // Negation
        { op: "-",  operand: var o } => {
            var [operand, nextBlock] = check codeGenExprForInt(cx, bb, scope, o);
            bir:Register reg = cx.createRegister(t:INT);
            if operand is int {
                // XXX catch overflow
                return [-operand, nextBlock];
            }
            else {
                bir:IntNegateInsn insn = { operand, result: reg };
                bb.insns.push(insn);
                return [reg, nextBlock];
            }
        }
        { op: "!",  operand: var o } => {
            var [operand, nextBlock] = check codeGenExprForBoolean(cx, bb, scope, o);
            bir:Register reg = cx.createRegister(t:BOOLEAN);
            if operand is boolean {
                return [!operand, nextBlock];
            }
            else {
                bir:BooleanNotInsn insn = { operand, result: reg };
                bb.insns.push(insn);
                return [reg, nextBlock];
            }
        }
        // Variable reference
        var { varName } => {
            return [check mustLookup(cx, varName, scope), bb];
        }
        // Constant
        var { value } => {
            return [value, bb];
        }
        // Function call
        var callExpr if callExpr is FunctionCallExpr => {
            return codeGenFunctionCall(cx, bb, scope, callExpr);
        }
    }
    return err:unreached();
}

function codeGenFunctionCall(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, FunctionCallExpr expr) returns CodeGenError|[bir:Register, bir:BasicBlock] {
    string? prefix = expr.prefix;
    bir:FunctionRef func;
    if prefix is () {
        func =  check genLocalFunctionRef(cx, scope, expr.funcName);
    }
    else {
        func = check genImportedFunctionRef(cx, scope, prefix, expr.funcName);
    }
    bir:BasicBlock curBlock = bb;
    bir:Operand[] args = [];
    foreach var argExpr in expr.args {
        var [arg, nextBlock] = check codeGenExpr(cx, curBlock, scope, argExpr);
        curBlock = nextBlock;
        args.push(arg);
    }
    bir:Register result = cx.createRegister(func.signature.returnType);
    bir:CallInsn call = {
        func,
        result,
        args: args.cloneReadOnly(),
        position: expr.pos
    };
    curBlock.insns.push(call);
    return [result, curBlock];
}

function genLocalFunctionRef(CodeGenContext cx, Scope? scope, string identifier) returns bir:FunctionRef|CodeGenError {
    if !(lookup(identifier, scope) is ()) {
        return err:unimplemented("local variables cannot yet have function type");
    }
    bir:FunctionSignature signature;
    ModuleLevelDef? def = cx.mod.defs[identifier];
    if def is FunctionDef {
        signature = <bir:FunctionSignature>def.signature;
        boolean isPublic = def.vis == "public";
        bir:InternalSymbol symbol = { identifier, isPublic };
        return { symbol, signature };
    }
    else {
        err:Message msg;
        if def is () {
            msg = `${identifier} is not defined`;
        }
        else {
            msg = `${identifier} is not a function`;
        }
        return cx.semanticErr(msg);
    }  
}

function genImportedFunctionRef(CodeGenContext cx, Scope? scope, string prefix, string identifier) returns bir:FunctionRef|CodeGenError {
    bir:ModuleId? moduleId = cx.mod.imports[prefix];
    if moduleId is () {
        return cx.semanticErr(`no import declaration for prefix ${prefix}`);
    }
    else {
        bir:FunctionSignature? signature = getLibFunction(moduleId, identifier);
        if signature is () {
            return err:unimplemented(`unsupported library function ${prefix}:${identifier}`);
        }
        else {
            bir:ExternalSymbol symbol = { module: moduleId, identifier };
            return { symbol, signature };
        }
    }
}

function mustLookup(CodeGenContext cx, string name, Scope? scope) returns bir:Register|CodeGenError {
    return lookup(name, scope) ?: cx.semanticErr(`variable ${name} not found`);
}

function lookup(string name, Scope? scope) returns bir:Register? {
    Scope? tem = scope;
    while true {
        if tem is () {
            break;
        }
        else if tem.name == name {
            return tem.reg;
        }
        else {
            tem = tem.prev;
        }
    }
    return ();
}

type BooleanOperandPair readonly & ["boolean", [bir:BooleanOperand, bir:BooleanOperand]];
type IntOperandPair readonly & ["int", [bir:IntOperand, bir:IntOperand]];
type TypedOperandPair BooleanOperandPair|IntOperandPair;

type TypedOperand readonly & (["int", bir:IntOperand] | ["boolean", bir:BooleanOperand]);

function typedOperandPair(bir:Operand lhs, bir:Operand rhs) returns TypedOperandPair? {
    TypedOperand? l = typedOperand(lhs);
    TypedOperand? r = typedOperand(rhs);
    if l is ["int", bir:IntOperand] && r is ["int", bir:IntOperand] {
        return ["int", [l[1], r[1]]];
    }
    if l is ["boolean", bir:BooleanOperand] && r is ["boolean", bir:BooleanOperand] {
        return ["boolean", [l[1], r[1]]];
    }
    return ();
}


function typedOperand(bir:Operand operand) returns TypedOperand? {
    if operand is bir:Register {
        if operand.semType === t:BOOLEAN {
            return ["boolean", operand];
        }
        else if operand.semType === t:INT {
            return ["int", operand];
        }
    }
    else if operand is int {
        return ["int", operand];
    }
    else if operand is boolean {
        return ["boolean", operand];
    }
    return ();
}


