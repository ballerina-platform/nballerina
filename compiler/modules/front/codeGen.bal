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
    bir:BasicBlock? onContinue;
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
    
    function pushLoopContext(bir:BasicBlock onBreak, bir:BasicBlock? onContinue) {
        LoopContext c = { onBreak, onContinue, enclosing: self.loopContext };
        self.loopContext = c;
    }

    function loopUsedBreak() returns boolean {
        return (<LoopContext>self.loopContext).breakUsed;
    }

    function loopContinueBlock() returns bir:BasicBlock? {
        return (<LoopContext>self.loopContext).onContinue;
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
            bir:BasicBlock b = c.onContinue ?: self.createBasicBlock();
            c.onContinue = b;
            return b.label;
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
        else if stmt is ForeachStmt {
            curBlock = check codeGenForeachStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
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
            curBlock = check codeGenCallStmt(cx, <bir:BasicBlock>curBlock, scope, stmt);
        }
    }
    return curBlock;
}

function codeGenForeachStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, ForeachStmt stmt) returns CodeGenError|bir:BasicBlock? {
    string varName = stmt.varName;
    if lookup(varName, scope) !== () {
        return cx.semanticErr(`duplicate declaration of ${varName}`);
    }
    RangeExpr range = stmt.range;
    var [lower, evalUpper] = check codeGenExprForInt(cx, startBlock, scope, range.lower);
    var [upper, initLoopVar] = check codeGenExprForInt(cx, evalUpper, scope, range.upper);
    bir:Register loopVar = cx.createRegister(t:INT, varName);
    bir:AssignInsn init = { result: loopVar, operand: lower };
    initLoopVar.insns.push(init);
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:BranchInsn branchToLoopHead = { dest: loopHead.label };
    initLoopVar.insns.push(branchToLoopHead);
    bir:Register condition = cx.createRegister(t:BOOLEAN);
    bir:CompareInsn compare = { op: "<", orderType: "int", operands: [loopVar, upper], result: condition };
    loopHead.insns.push(compare);
    bir:BasicBlock afterCondition = cx.createBasicBlock();
    bir:CondBranchInsn branch = { operand: condition, ifFalse: exit.label, ifTrue: afterCondition.label };
    loopHead.insns.push(branch);
    cx.pushLoopContext(exit, ());
    Scope loopScope = { name: varName, reg: loopVar, prev: scope, isFinal: true };
    bir:BasicBlock? loopBody = check codeGenStmts(cx, afterCondition, loopScope, stmt.body);
    
    bir:BasicBlock? loopStep = cx.loopContinueBlock();
    if !(loopBody is ()) {
        loopStep = loopStep ?: cx.createBasicBlock();
        bir:BranchInsn branchToLoopStep = { dest: (<bir:BasicBlock>loopStep).label };
        loopBody.insns.push(branchToLoopStep);
    }

    if !(loopStep is ()) {
        bir:IntNoPanicArithmeticBinaryInsn increment = { op: "+", operands: [loopVar, 1], result: loopVar };
        loopStep.insns.push(increment);
        loopStep.insns.push(branchToLoopHead);
    }
    cx.popLoopContext();
    return exit;
}

function codeGenWhileStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, WhileStmt stmt) returns CodeGenError|bir:BasicBlock? {
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:BranchInsn branchToLoopHead = { dest: loopHead.label };
    startBlock.insns.push(branchToLoopHead);
    var [condition, nextBlock] = check codeGenConditionalExpr(cx, loopHead, scope, stmt.condition);
    if condition is false {
        if stmt.body.length() > 0 {
            return cx.semanticErr("unreachable code");
        }
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
    var [operand, branchBlock] = check codeGenConditionalExpr(cx, startBlock, scope, condition);
    if operand is boolean {
        Stmt[] taken;
        Stmt[] notTaken;
        if operand {
            taken = ifTrue;
            notTaken = ifFalse;
        }
        else {
            taken = ifFalse;
            notTaken = ifTrue;
        }
        if notTaken.length() > 0 {
            // XXX position should come from first member of notTaken
            return cx.semanticErr("unreachable code");
        }
        return codeGenStmts(cx, branchBlock, scope, taken);
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
    var { varName, initExpr, semType, isFinal } = stmt;
    if lookup(varName, scope) !== () {
        return cx.semanticErr(`duplicate declaration of ${varName}`);
    }
    if semType is () {
        panic error("type was not normalized");
    }
    else {
        var [operand, nextBlock] = check codeGenExpr(cx, startBlock, scope, initExpr);
        bir:Register result = cx.createRegister(semType, varName);
        bir:AssignInsn insn = { result, operand };
        nextBlock.insns.push(insn);
        return [nextBlock, { name: varName, reg: result, prev: scope, isFinal }];
    }   
}

function codeGenAssignStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, AssignStmt stmt) returns CodeGenError|bir:BasicBlock? {
    var { lValue, expr } = stmt;
    if lValue is VarRefExpr {
        return codeGenAssignToVar(cx, startBlock, scope, lValue.varName, expr);
    }
    else {
        return codeGenAssignToMember(cx, startBlock, scope, lValue, expr);
    }
}

function codeGenAssignToVar(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, string varName, Expr expr) returns CodeGenError|bir:BasicBlock? {
    bir:Register reg = check mustLookup(cx, varName, scope, forAssign=true);
    var [operand, nextBlock] = check codeGenExpr(cx, startBlock, scope, expr);
    bir:AssignInsn assign = { result: reg, operand };
    nextBlock.insns.push(assign);
    return nextBlock;
}

function codeGenAssignToMember(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, MemberAccessLExpr lValue, Expr expr) returns CodeGenError|bir:BasicBlock? {
    bir:Register reg = check mustLookup(cx, lValue.container.varName, scope, forAssign=true);
    var [index, nextBlock] = check codeGenExprForInt(cx, startBlock, scope, lValue.index);
    bir:Operand operand;
    [operand, nextBlock] = check codeGenExpr(cx, nextBlock, scope, expr);
    bir:ListSetInsn set = { list: reg, index, operand, position: lValue.pos };
    nextBlock.insns.push(set);
    return nextBlock;
}

function codeGenCallStmt(CodeGenContext cx, bir:BasicBlock startBlock, Scope? scope, CallStmt stmt) returns CodeGenError|bir:BasicBlock? {
    // stmt is FunctionCallExpr or MethodCallExpr
    bir:Register reg;
    bir:BasicBlock nextBlock;
    if stmt is FunctionCallExpr {
        [reg, nextBlock] = check codeGenFunctionCall(cx, <bir:BasicBlock>startBlock, scope, stmt);
    }
    else {
        [reg, nextBlock] = check codeGenMethodCall(cx, <bir:BasicBlock>startBlock, scope, stmt);
    }
    if reg.semType !== t:NIL {
        return cx.semanticErr("return type of function or method in call statement must be nil");
    }
    return nextBlock;
}

function codeGenConditionalExpr(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns CodeGenError|[bir:BooleanOperand, bir:BasicBlock] {
    var constValue = check evalConstExpr(expr);
    if constValue is boolean {
        return [constValue, bb];
    }
    return codeGenExprForBoolean(cx, bb, scope, expr);
}

function codeGenExprForBoolean(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns CodeGenError|[bir:BooleanOperand, bir:BasicBlock] {
    var [op, nextBlock] = check codeGenExpr(cx, bb, scope, expr);
    if op is bir:BooleanOperand {
        // rest of the type checking is in the verifier
        return [op, nextBlock];
    }
    return cx.semanticErr("expected boolean operand");
}

function codeGenExprForInt(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, Expr expr) returns CodeGenError|[bir:IntOperand, bir:BasicBlock] {
    var [op, nextBlock] = check codeGenExpr(cx, bb, scope, expr);
    if op is bir:IntOperand {
        // rest of the type checking is in the verifier
        return [op, nextBlock];
    }
    return cx.semanticErr("expected integer operand");
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
        // Negation
        { op: "-",  operand: var o, pos: var pos } => {
            var [operand, nextBlock] = check codeGenExprForInt(cx, bb, scope, o);
            bir:Register result = cx.createRegister(t:INT);
            bir:IntArithmeticBinaryInsn insn = { op: "-", operands: [0, operand], result, position: pos };
            bb.insns.push(insn);
            return [result, nextBlock];
        }
        var { bitwiseOp: op, left, right } => {
            var [l, block1] = check codeGenExprForInt(cx, bb, scope, left);
            var [r, nextBlock] = check codeGenExprForInt(cx, block1, scope, right);
            t:SemType lt = bitwiseOperandType(l);
            t:SemType rt = bitwiseOperandType(l);
            t:SemType resultType = op == "&" ? t:intersect(lt, rt) : t:union(lt, rt);
            bir:Register result = cx.createRegister(resultType);
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
            bir:Register result = cx.createRegister(t:BOOLEAN);
            var [l, block1] = check codeGenExpr(cx, bb, scope, left);
            var [r, nextBlock] = check codeGenExpr(cx, block1, scope, right);
            TypedOperandPair? pair = typedOperandPair(l, r);
            if pair is IntOperandPair|BooleanOperandPair|StringOperandPair {
                bir:CompareInsn insn = { op, orderType: pair[0], operands: pair[1], result };
                bb.insns.push(insn);
                return [result, nextBlock];  
            }
            else {
                return cx.semanticErr("operands of relational operator are not ordered");
            }               
        }
        { op: "!",  operand: var o } => {
            var [operand, nextBlock] = check codeGenExprForBoolean(cx, bb, scope, o);
            bir:Register reg = cx.createRegister(t:BOOLEAN);
            if operand is boolean {
                // Do it like this, because type of result is int not a singleton
                bir:AssignInsn insn = { operand: !operand, result: reg };
                bb.insns.push(insn);
            }
            else {
                bir:BooleanNotInsn insn = { operand, result: reg };
                bb.insns.push(insn);
            }
            return [reg, nextBlock];

        }
        var { td, operand: o } => {
            var [operand, nextBlock] = check codeGenExpr(cx, bb, scope, o);
            // JBUG #31782 cast needed
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
        // Function/method call
        var callExpr if callExpr is (FunctionCallExpr|MethodCallExpr) => {
            if callExpr is FunctionCallExpr {
                return codeGenFunctionCall(cx, bb, scope, callExpr);
            }
            else {
                return codeGenMethodCall(cx, bb, scope, callExpr);
            }
        }
        // Member access E[i]
        var { container, index, pos } => {
            var [l, block1] = check codeGenExpr(cx, bb, scope, container);
            var [r, nextBlock] = check codeGenExpr(cx, block1, scope, index);
            if l is bir:Register {
                bir:Register result = cx.createRegister(t:ANY);
                TypedOperand? k = typedOperand(r);
                bir:Insn insn;
                if k is ["int", bir:IntOperand] {
                    insn = <bir:ListGetInsn>{ result, list: l, operand: k[1], position: pos };
                }
                else if k is ["string", bir:StringOperand] {
                    insn = <bir:MappingGetInsn>{ result, operands: [l, k[1]] };
                }
                else {
                    return cx.semanticErr("member access key must be a string or an int");
                }
                bb.insns.push(insn);
                return [result, nextBlock];
            }
            else {
                return cx.semanticErr("cannot apply member access to constant of simple type");
            }
        }
        // List construct
        var { members } => {
            bir:BasicBlock nextBlock = bb;
            bir:Operand[] operands = [];
            foreach var member in members {
                bir:Operand operand;
                [operand, nextBlock] = check codeGenExpr(cx, nextBlock, scope, member);
                operands.push(operand);
            }
            // In subset 3, we have only mutable lists of any
            // We will have to do more work in future subsets to determine the types here
            bir:Register result = cx.createRegister(t:LIST_RW);
            bir:ListConstructInsn insn = { operands: operands.cloneReadOnly(), result };
            nextBlock.insns.push(insn);
            return [result, nextBlock];
        }
        // Mapping construct
        var { fields } => {
            bir:BasicBlock nextBlock = bb;
            bir:Operand[] operands = [];
            string[] fieldNames= [];
            map<err:Position> fieldPos = {};
            foreach var { pos, name, value } in fields {
                err:Position? prevPos = fieldPos[name];
                if prevPos == () {
                    fieldPos[name] = pos;
                }
                else {
                    return err:semantic(`duplicate field ${name}`, pos=pos);
                }
                bir:Operand operand;
                [operand, nextBlock] = check codeGenExpr(cx, nextBlock, scope, value);
                operands.push(operand);
                fieldNames.push(name);
            }
            bir:Register result = cx.createRegister(t:MAPPING_RW);
            bir:MappingConstructInsn insn = { fieldNames: fieldNames.cloneReadOnly(), operands: operands.cloneReadOnly(), result };
            nextBlock.insns.push(insn);
            return [result, nextBlock];
        }
    }
    panic err:impossible();
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

function codeGenMethodCall(CodeGenContext cx, bir:BasicBlock bb, Scope? scope, MethodCallExpr expr) returns CodeGenError|[bir:Register, bir:BasicBlock] {
    var [target, curBlock] = check codeGenExpr(cx, bb, scope, expr.target);
    bir:FunctionRef func = check getLangLibFunctionRef(cx, target, expr.methodName);
    bir:Operand[] args = [target];
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

type LangLibModuleName "int"|"boolean"|"string"|"array"|"map";

function getLangLibFunctionRef(CodeGenContext cx, bir:Operand target, string methodName) returns bir:FunctionRef|CodeGenError {
    TypedOperand? t = typedOperand(target);
    if !(t is ()) && t[0] is LangLibModuleName {
        bir:ModuleId moduleId = { organization: "ballerina", names: ["lang", t[0]] };
        bir:FunctionSignature? signature = getLibFunction(moduleId, methodName);
        if signature is () {
            return err:unimplemented(`unrecognized lang library function ${t[0] + ":" + methodName}`);
        }
        else {
            bir:ExternalSymbol symbol = { module: moduleId, identifier: methodName };
            return { symbol, signature }; 
        }
    }
    return err:unimplemented(`cannot resolve ${methodName} to lang lib function`);
}

function mustLookup(CodeGenContext cx, string name, Scope? scope, boolean forAssign = false) returns bir:Register|CodeGenError {
    Scope? binding = lookup(name, scope);
    if binding is () {
        return cx.semanticErr(`variable ${name} not found`);
    }
    else if forAssign && binding.isFinal {
        return cx.semanticErr(`cannot assign to ${name}`);
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

function bitwiseOperandType(bir:IntOperand operand) returns t:SemType {
    t:SemType t;
    if operand is int {
        t = t:intConst(operand);
    }
    else {
        t = operand.semType;
    }
    return t:widenUnsigned(t);
}

type NilOperand ()|bir:Register;
type BooleanOperandPair readonly & ["boolean", [bir:BooleanOperand, bir:BooleanOperand]];
type IntOperandPair readonly & ["int", [bir:IntOperand, bir:IntOperand]];
type StringOperandPair readonly & ["string", [bir:StringOperand, bir:StringOperand]];

type NilOperandPair readonly & ["nil", [NilOperand, NilOperand]];

type TypedOperandPair BooleanOperandPair|IntOperandPair|StringOperandPair|NilOperandPair;

type TypedOperand readonly & (["array", bir:Register]
                              |["map", bir:Register]
                              |["string", bir:StringOperand]
                              |["int", bir:IntOperand]
                              |["boolean", bir:BooleanOperand]
                              |["nil", NilOperand]);

function typedOperandPair(bir:Operand lhs, bir:Operand rhs) returns TypedOperandPair? {
    TypedOperand? l = typedOperand(lhs);
    TypedOperand? r = typedOperand(rhs);
    if l is ["int", bir:IntOperand] && r is ["int", bir:IntOperand] {
        return ["int", [l[1], r[1]]];
    }
    if l is ["string", bir:StringOperand] && r is ["string", bir:StringOperand] {
        return ["string", [l[1], r[1]]];
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
        else if operand.semType === t:STRING {
            return ["string", operand];
        }
        else if operand.semType === t:NIL {
            return ["nil", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:LIST) {
            return ["array", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:MAPPING) {
            return ["map", operand];
        }
    }
    else if operand is string {
        return ["string", operand];
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


