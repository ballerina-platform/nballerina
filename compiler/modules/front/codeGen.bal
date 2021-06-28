import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.err;

type Scope record {|
    string name;
    bir:Register reg;
    boolean isFinal;
    Scope? prev;
|};

type CodeGenError err:Semantic|err:Unimplemented;

type LoopContext record {|
    bir:BasicBlock onBreak;
    bir:BasicBlock onContinue;
    // JBUG #31311 does not allow `outer` here
    LoopContext? enclosing;
    // will use this with while true to determine whether
    // following block is reachable
    boolean breakUsed = false;
|};


class CodeGenContext {
    final Module mod;
    final bir:FunctionCode code;
    final string functionName;
    LoopContext? loopContext = ();

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
    
    function pushLoopContext(bir:BasicBlock onBreak, bir:BasicBlock onContinue) {
        LoopContext c = { onBreak, onContinue, enclosing: self.loopContext };
        self.loopContext = c;
    }

    function loopUsedBreak() returns boolean {
        return (<LoopContext>self.loopContext).breakUsed;
    }

    function popLoopContext() {
        self.loopContext = (<LoopContext>self.loopContext).enclosing;
    }

    function onBreakLabel() returns bir:Label|err:Semantic {
        LoopContext? c = self.loopContext;
        if c is () {
            return self.semanticErr("break not in loop");
        }
        else {
            c.breakUsed = true;
            return c.onBreak.label;
        }
    }

    function onContinueLabel() returns bir:Label|err:Semantic {
        LoopContext? c = self.loopContext;
        if c is () {
            return self.semanticErr("continue not in loop");
        }
        else {
            return c.onContinue.label;
        }
    }
}

function codeGenFunction(Module mod, string functionName, bir:FunctionSignature signature, string[] paramNames, Stmt[] body) returns bir:FunctionCode|CodeGenError {
    CodeGenContext cx = new(mod, functionName);
    bir:BasicBlock startBlock = cx.createBasicBlock();
    Scope? scope = ();
    foreach int i in 0 ..< paramNames.length() {
        bir:Register reg = cx.createRegister(signature.paramTypes[i], paramNames[i]);
        scope = { name: paramNames[i], reg, prev: scope, isFinal: true };
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
    if !(onPanicBlock is ()) {
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
            // JBUG #31327 cast
            curBlock = check codeGenWhileStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is BreakStmt {
            curBlock = check codeGenBreakStmt(cx, <bir:BasicBlock>curBlock);
        }
        else if stmt is ContinueStmt {
            curBlock = check codeGenContinueStmt(cx, <bir:BasicBlock>curBlock);
        }
        else if stmt is ReturnStmt {
            // JBUG #31327 cast
            curBlock = check codeGenReturnStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is VarDeclStmt {
            [curBlock, scope] = check codeGenVarDeclStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else if stmt is AssignStmt {
            curBlock = check codeGenAssignStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
        else {
            // stmt is FunctionCallExpr 
            bir:Register reg;
            [reg, curBlock] = check codeGenFunctionCall(cx, <bir:BasicBlock>curBlock, scope, stmt);
            if reg.semType !== t:NIL {
                return cx.semanticErr("return type of function call statement not nil");
            }
        }
    }
    return curBlock;
}

function codeGenWhileStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, WhileStmt stmt) returns CodeGenError|bir:BasicBlock? {
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:BranchInsn branchToLoopHead = { dest: loopHead.label };
    startBlock.insns.push(branchToLoopHead);
    var [condition, nextBlock] = check codeGenExprForBoolean(cx, loopHead, scope, stmt.condition);
    if condition is false {
        return nextBlock;
    }
    else {
        cx.pushLoopContext(exit, loopHead);
        boolean exitReachable;
        if condition is bir:Register {
            bir:BasicBlock afterCondition = cx.createBasicBlock();
            bir:CondBranchInsn branch = { operand: condition, ifFalse: exit.label, ifTrue: afterCondition.label };
            nextBlock.insns.push(branch);
            nextBlock = afterCondition;
            exitReachable = true;
        }
        else {
            exitReachable = false;
        }
        bir:BasicBlock? loopEnd = check codeGenStmts(cx, nextBlock, scope, stmt.body);
        if cx.loopUsedBreak() {
            exitReachable = true;
        }
        cx.popLoopContext();
        if !(loopEnd is ()) {
            loopEnd.insns.push(branchToLoopHead);
        }
        return exitReachable ? exit : ();
    }
}

function codeGenBreakStmt(CodeGenContext cx, bir:BasicBlock startBlock) returns CodeGenError? {
    bir:Label dest = check cx.onBreakLabel();
    bir:BranchInsn branch = { dest };
    startBlock.insns.push(branch);
    return ();
}

function codeGenContinueStmt(CodeGenContext cx, bir:BasicBlock startBlock) returns CodeGenError? {
    bir:Label dest = check cx.onContinueLabel();
    bir:BranchInsn branch = { dest };
    startBlock.insns.push(branch);
    return ();
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
        return [nextBlock, { name: varName, reg: result, prev: scope, isFinal: false }];
    }   
}

function codeGenAssignStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, AssignStmt stmt) returns CodeGenError|bir:BasicBlock? {
    var { varName, expr } = stmt;
    bir:Register reg = check mustLookup(cx, varName, scope, forAssign=true);
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
        var { arithmeticOp: op, left, right, pos } => {
            var [l, block1] = check codeGenExprForInt(cx, bb, scope, left);
            var [r, nextBlock] = check codeGenExprForInt(cx, block1, scope, right);
            bir:Register result = cx.createRegister(t:INT);
            bir:IntArithmeticBinaryInsn insn = { op, operands: [l, r], result, position: pos };
            bb.insns.push(insn);
            return [result, nextBlock];
        }
        var { bitwiseOp: op, left, right } => {
            var [l, block1] = check codeGenExprForInt(cx, bb, scope, left);
            var [r, nextBlock] = check codeGenExprForInt(cx, block1, scope, right);
            bir:Register result = cx.createRegister(t:INT);
            bir:IntBitwiseBinaryInsn insn = { op, operands: [l, r], result };
            bb.insns.push(insn);
            return [result, nextBlock];
        }
        var { equalityOp: op, left, right } => {
            bir:Register result = cx.createRegister(t:BOOLEAN);
            var [l, block1] = check codeGenExpr(cx, bb, scope, left);
            var [r, nextBlock] = check codeGenExpr(cx, block1, scope, right);
            // XXX Can we do all the checking in the verifier?
            bir:EqualityInsn insn = { op, operands: [l, r], result };
            bb.insns.push(insn);
            return [result, nextBlock];
        }
        var { relationalOp: op, left, right } => {
            bir:Insn insn;
            bir:Register result = cx.createRegister(t:BOOLEAN);
            var [l, block1] = check codeGenExpr(cx, bb, scope, left);
            var [r, nextBlock] = check codeGenExpr(cx, block1, scope, right);
            TypedOperandPair? pair = typedOperandPair(l, r);
            if pair is () {
                return cx.semanticErr("different basic types for relational operator");
            }
            else if pair is IntOperandPair {
                insn = <bir:IntCompareInsn> { op, operands: pair[1], result };
            }
            else if pair is BooleanOperandPair {
                insn = <bir:BooleanCompareInsn> { op, operands: pair[1], result };
            }
            else {
                return cx.semanticErr("cannot apply relational operator to nil operands");
            }
            bb.insns.push(insn);
            return [result, nextBlock];         
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
        var { td, operand: o } => {
            var [operand, nextBlock] = check codeGenExpr(cx, bb, scope, o);
            // JBUG cast needed
            TypeCastExpr tcExpr = <TypeCastExpr>expr;
            if operand is bir:Register {
                if t:isSubtype(cx.mod.tc, operand.semType, tcExpr.semType) {
                    // it's redundant, so we can remove it
                    return [operand, nextBlock];
                }
                t:SemType resultType = t:intersect(operand.semType, tcExpr.semType);
                bir:Register reg = cx.createRegister(resultType);
                bir:TypeCastInsn insn = { operand, semType: tcExpr.semType, position: tcExpr.pos, result:reg };
                bb.insns.push(insn);
                return [reg, nextBlock];
            }
            else {
                if !t:containsConst(tcExpr.semType, operand) {
                    // the verifier uses the same wording
                    return err:semantic("type cast cannot succeed", pos=tcExpr.pos);
                }
                return [operand, nextBlock];
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

function mustLookup(CodeGenContext cx, string name, Scope? scope, boolean forAssign = false) returns bir:Register|CodeGenError {
    Scope? binding = lookup(name, scope);
    if binding is () {
        return cx.semanticErr(`variable ${name} not found`);
    }
    else if forAssign && binding.isFinal {
        return cx.semanticErr(`cannot assign to parameter ${name}`);
    }
    else {
        return binding.reg;
    }
}

function lookup(string name, Scope? scope) returns Scope? {
    Scope? tem = scope;
    while true {
        if tem is () {
            break;
        }
        else if tem.name == name {
            return tem;
        }
        else {
            tem = tem.prev;
        }
    }
    return ();
}

type NilOperand ()|bir:Register;
type BooleanOperandPair readonly & ["boolean", [bir:BooleanOperand, bir:BooleanOperand]];
type IntOperandPair readonly & ["int", [bir:IntOperand, bir:IntOperand]];
type NilOperandPair readonly & ["nil", [NilOperand, NilOperand]];

type TypedOperandPair BooleanOperandPair|IntOperandPair|NilOperandPair;

type TypedOperand readonly & (["int", bir:IntOperand] | ["boolean", bir:BooleanOperand] | ["nil", NilOperand]);

function typedOperandPair(bir:Operand lhs, bir:Operand rhs) returns TypedOperandPair? {
    TypedOperand? l = typedOperand(lhs);
    TypedOperand? r = typedOperand(rhs);
    if l is ["int", bir:IntOperand] && r is ["int", bir:IntOperand] {
        return ["int", [l[1], r[1]]];
    }
    if l is ["boolean", bir:BooleanOperand] && r is ["boolean", bir:BooleanOperand] {
        return ["boolean", [l[1], r[1]]];
    }
    if l is ["nil", NilOperand] && r is ["int", NilOperand] {
        return ["nil", [l[1], r[1]]];
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
        else if operand.semType === t:NIL {
            return ["nil", operand];
        }
    }
    else if operand is int {
        return ["int", operand];
    }
    else if operand is boolean {
        return ["boolean", operand];
    }
    else {
        return ["nil", operand];
    }
    return ();
}


