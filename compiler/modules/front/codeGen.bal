import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.err;

type Environment record {|
    Binding? bindings;
|};

type Binding record {|
    string name;
    bir:Register reg;
    boolean isFinal;
    Binding? prev;
|};

type StmtEffect record {|
    bir:BasicBlock? block;
    Binding? bindings = ();
|};

type ExprEffect record {|
    bir:BasicBlock block;
    bir:Operand result;
|};

type BooleanExprEffect record {|
    *ExprEffect;
    bir:BooleanOperand result;
|};

type IntExprEffect record {|
    *ExprEffect;
    bir:IntOperand result;
|};

type RegExprEffect record {|
    *ExprEffect;
    bir:Register result;
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
    Binding? bindings = ();
    foreach int i in 0 ..< paramNames.length() {
        bir:Register reg = cx.createRegister(signature.paramTypes[i], paramNames[i]);
        bindings = { name: paramNames[i], reg, prev: bindings, isFinal: true };
    }
    var { block: endBlock } = check codeGenStmts(cx, startBlock, { bindings }, body);
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

function codeGenStmts(CodeGenContext cx, bir:BasicBlock bb, Environment initialEnv, Stmt[] stmts) returns CodeGenError|StmtEffect {
    bir:BasicBlock? curBlock = bb;
    Environment env = initialEnv;
    foreach var stmt in stmts {
        StmtEffect effect;
        if curBlock is () {
            return cx.semanticErr("unreachable code");
        }
        else if stmt is IfElseStmt {
            effect = check codeGenIfElseStmt(cx, curBlock, env, stmt);
        }
        else if stmt is WhileStmt {
            // JBUG #31327 cast
            effect = check codeGenWhileStmt(cx, <bir:BasicBlock>curBlock, env, stmt);
        }
        else if stmt is ForeachStmt {
            effect = check codeGenForeachStmt(cx, <bir:BasicBlock>curBlock, env, stmt);
        }
        else if stmt is BreakStmt {
            effect = check codeGenBreakStmt(cx, <bir:BasicBlock>curBlock);
        }
        else if stmt is ContinueStmt {
            effect = check codeGenContinueStmt(cx, <bir:BasicBlock>curBlock);
        }
        else if stmt is ReturnStmt {
            // JBUG #31327 cast
            effect = check codeGenReturnStmt(cx, <bir:BasicBlock>curBlock, env, stmt);
        }
        else if stmt is VarDeclStmt {
            effect = check codeGenVarDeclStmt(cx, <bir:BasicBlock>curBlock, env, stmt);
        }
        else if stmt is AssignStmt {
            effect = check codeGenAssignStmt(cx, <bir:BasicBlock>curBlock, env, stmt);
        }
        else {
            effect = check codeGenCallStmt(cx, <bir:BasicBlock>curBlock, env, stmt);
        }
        curBlock = effect.block;
        Binding? bindings = effect.bindings;
        if !(bindings is ()) {
            env.bindings = bindings;
        }
    }
    return { block: curBlock };
}

function codeGenForeachStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, ForeachStmt stmt) returns CodeGenError|StmtEffect {
    string varName = stmt.varName;
    if lookup(varName, env) !== () {
        return cx.semanticErr(`duplicate declaration of ${varName}`);
    }
    RangeExpr range = stmt.range;
    var { result: lower, block: evalUpper } = check codeGenExprForInt(cx, startBlock, env, range.lower);
    var { result: upper, block: initLoopVar } = check codeGenExprForInt(cx, evalUpper, env, range.upper);
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
    Binding loopBindings = { name: varName, reg: loopVar, prev: env.bindings, isFinal: true };
    var { block: loopBody } = check codeGenStmts(cx, afterCondition, { bindings: loopBindings }, stmt.body);
    
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
    return { block: exit };
}

function codeGenWhileStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, WhileStmt stmt) returns CodeGenError|StmtEffect {
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:BranchInsn branchToLoopHead = { dest: loopHead.label };
    startBlock.insns.push(branchToLoopHead);
    var { result: condition, block: nextBlock } = check codeGenConditionalExpr(cx, loopHead, env, stmt.condition);
    if condition is false {
        if stmt.body.length() > 0 {
            return cx.semanticErr("unreachable code");
        }
        return { block: nextBlock };
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
        var { block: loopEnd } = check codeGenStmts(cx, nextBlock, env, stmt.body);
        if cx.loopUsedBreak() {
            exitReachable = true;
        }
        cx.popLoopContext();
        if !(loopEnd is ()) {
            loopEnd.insns.push(branchToLoopHead);
        }
        return { block: exitReachable ? exit : () };
    }
}

function codeGenBreakStmt(CodeGenContext cx, bir:BasicBlock startBlock) returns CodeGenError|StmtEffect {
    bir:Label dest = check cx.onBreakLabel();
    bir:BranchInsn branch = { dest };
    startBlock.insns.push(branch);
    return { block: () };
}

function codeGenContinueStmt(CodeGenContext cx, bir:BasicBlock startBlock) returns CodeGenError|StmtEffect {
    bir:Label dest = check cx.onContinueLabel();
    bir:BranchInsn branch = { dest };
    startBlock.insns.push(branch);
    return { block: () };
}

function codeGenIfElseStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, IfElseStmt stmt) returns CodeGenError|StmtEffect {
    var { condition, ifTrue, ifFalse } = stmt;
    var { result: operand, block: branchBlock } = check codeGenConditionalExpr(cx, startBlock, env, condition);
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
        return codeGenStmts(cx, branchBlock, env, taken);
    }
    else {
        bir:BasicBlock ifBlock = cx.createBasicBlock();
        var { block: ifContBlock } = check codeGenStmts(cx, ifBlock, env, ifTrue);
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
            return { block: contBlock };    
        }
        else {
            // an if and an else
            bir:BasicBlock elseBlock = cx.createBasicBlock();
            var { block: elseContBlock } = check codeGenStmts(cx, elseBlock, env, ifFalse);
            bir:CondBranchInsn condBranch = { operand, ifTrue: ifBlock.label, ifFalse: elseBlock.label };
            branchBlock.insns.push(condBranch);
            if ifContBlock is () && elseContBlock is () {
                // e.g. both arms have a return
                return { block: () };
            }
            contBlock = cx.createBasicBlock();
            bir:BranchInsn branch = { dest: contBlock.label };
            if !(ifContBlock is ()) {
                ifContBlock.insns.push(branch);
            }
            if !(elseContBlock is ()) {
                elseContBlock.insns.push(branch);
            }
            return { block: contBlock };
        }
    }
}

function codeGenReturnStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, ReturnStmt stmt) returns CodeGenError|StmtEffect {
    var { returnExpr } = stmt;
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, startBlock, env, returnExpr);
    bir:RetInsn insn = { operand };
    nextBlock.insns.push(insn);
    return { block: () };
}

function codeGenVarDeclStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, VarDeclStmt stmt) returns CodeGenError|StmtEffect {
    var { varName, initExpr, semType, isFinal } = stmt;
    if lookup(varName, env) !== () {
        return cx.semanticErr(`duplicate declaration of ${varName}`);
    }
    if semType is () {
        panic error("type was not normalized");
    }
    else {
        var { result: operand, block: nextBlock } = check codeGenExpr(cx, startBlock, env, initExpr);
        bir:Register result = cx.createRegister(semType, varName);
        bir:AssignInsn insn = { result, operand };
        nextBlock.insns.push(insn);
        return { block: nextBlock, bindings: { name: varName, reg: result, prev: env.bindings, isFinal } };
    }   
}

function codeGenAssignStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, AssignStmt stmt) returns CodeGenError|StmtEffect {
    var { lValue, expr } = stmt;
    if lValue is VarRefExpr {
        return codeGenAssignToVar(cx, startBlock, env, lValue.varName, expr);
    }
    else {
        return codeGenAssignToMember(cx, startBlock, env, lValue, expr);
    }
}

function codeGenAssignToVar(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, string varName, Expr expr) returns CodeGenError|StmtEffect {
    bir:Register reg = check mustLookup(cx, varName, env, forAssign=true);
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, startBlock, env, expr);
    bir:AssignInsn assign = { result: reg, operand };
    nextBlock.insns.push(assign);
    return { block: nextBlock };
}

function codeGenAssignToMember(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, MemberAccessLExpr lValue, Expr expr) returns CodeGenError|StmtEffect {
    bir:Register reg = check mustLookup(cx, lValue.container.varName, env);
    var { result: index, block: nextBlock } = check codeGenExpr(cx, startBlock, env, lValue.index);
    bir:Operand operand;
    { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, expr);
    TypedOperand? t = typedOperand(index);
    bir:Insn insn;
    if t is ["int", bir:IntOperand] {
        insn = <bir:ListSetInsn>{ list: reg, index: t[1], operand, position: lValue.pos };
    }
    else if t is ["string", bir:StringOperand] {
        insn = <bir:MappingSetInsn> { operands: [ reg, t[1], operand], position: lValue.pos };
    }
    else {
        return cx.semanticErr("key in assignment to member must be int or string");
    }
    nextBlock.insns.push(insn);
    return { block: nextBlock };
}

function codeGenCallStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, CallStmt stmt) returns CodeGenError|StmtEffect {
    // stmt is FunctionCallExpr or MethodCallExpr
    bir:Register reg;
    bir:BasicBlock nextBlock;
    if stmt is FunctionCallExpr {
        { result: reg, block: nextBlock } = check codeGenFunctionCall(cx, <bir:BasicBlock>startBlock, env, stmt);
    }
    else {
        { result: reg, block: nextBlock } = check codeGenMethodCall(cx, <bir:BasicBlock>startBlock, env, stmt);
    }
    if reg.semType !== t:NIL {
        return cx.semanticErr("return type of function or method in call statement must be nil");
    }
    return { block: nextBlock };
}

function codeGenConditionalExpr(CodeGenContext cx, bir:BasicBlock block, Environment env, Expr expr) returns CodeGenError|BooleanExprEffect {
    var constValue = check evalConstExpr(expr);
    if constValue is boolean {
        return { result: constValue, block };
    }
    return codeGenExprForBoolean(cx, block, env, expr);
}

function codeGenExprForBoolean(CodeGenContext cx, bir:BasicBlock bb, Environment env, Expr expr) returns CodeGenError|BooleanExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, env, expr);
    if result is bir:BooleanOperand {
        // rest of the type checking is in the verifier
        return { result, block };
    }
    return cx.semanticErr("expected boolean operand");
}

function codeGenExprForInt(CodeGenContext cx, bir:BasicBlock bb, Environment env, Expr expr) returns CodeGenError|IntExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, env, expr);
    if result is bir:IntOperand {
        // rest of the type checking is in the verifier
        return { result, block };
    }
    return cx.semanticErr("expected integer operand");
}

function codeGenExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, Expr expr) returns CodeGenError|ExprEffect {
    match expr {
        var { arithmeticOp: op, left, right, pos } => {
            var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, env, right);
            TypedOperandPair? pair = typedOperandPair(l, r);
            bir:Register result;
            if pair is IntOperandPair {
                result = cx.createRegister(t:INT);
                bir:IntArithmeticBinaryInsn insn = { op, operands: pair[1], result, position: pos };
                bb.insns.push(insn);
            }
            else if pair is StringOperandPair {
                result = cx.createRegister(t:STRING);
                bir:StringConcatInsn insn = { operands:  pair[1], result };
                bb.insns.push(insn);
            }
            else {
                return cx.semanticErr("+ not supported for operand types");
            }               
            return { result, block: nextBlock };
        }
        // Negation
        { op: "-",  operand: var o, pos: var pos } => {
            var { result: operand, block: nextBlock } = check codeGenExprForInt(cx, bb, env, o);
            bir:Register result = cx.createRegister(t:INT);
            bir:IntArithmeticBinaryInsn insn = { op: "-", operands: [0, operand], result, position: pos };
            bb.insns.push(insn);
            return { result, block: nextBlock };
        }
        // Bitwise complement 
        { op: "~",  operand: var o } => {
            var { result: operand, block: nextBlock } = check codeGenExprForInt(cx, bb, env, o);
            bir:Register result = cx.createRegister(t:INT);
            bir:IntBitwiseBinaryInsn insn = { op: "^", operands: [-1, operand], result };
            bb.insns.push(insn);
            return { result, block: nextBlock };
        }
        var { bitwiseOp: op, left, right } => {
            var { result: l, block: block1} = check codeGenExprForInt(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExprForInt(cx, block1, env, right);
            t:SemType lt = bitwiseOperandType(l);
            t:SemType rt = bitwiseOperandType(l);
            t:SemType resultType = op == "&" ? t:intersect(lt, rt) : t:union(lt, rt);
            bir:Register result = cx.createRegister(resultType);
            bir:IntBitwiseBinaryInsn insn = { op, operands: [l, r], result };
            bb.insns.push(insn);
            return { result, block: nextBlock };
        }
        var { equalityOp: op, left, right } => {
            bir:Register result = cx.createRegister(t:BOOLEAN);
            var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, env, right);
            // XXX Can we do all the checking in the verifier?
            bir:EqualityInsn insn = { op, operands: [l, r], result };
            bb.insns.push(insn);
            return { result, block: nextBlock };
        }
        var { relationalOp: op, left, right } => {
            bir:Register result = cx.createRegister(t:BOOLEAN);
            var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, env, right);
            TypedOperandPair? pair = typedOperandPair(l, r);
            if pair is IntOperandPair|BooleanOperandPair|StringOperandPair {
                bir:CompareInsn insn = { op, orderType: pair[0], operands: pair[1], result };
                bb.insns.push(insn);
                return { result, block: nextBlock };  
            }
            else {
                return cx.semanticErr("operands of relational operator are not ordered");
            }               
        }
        { op: "!",  operand: var o } => {
            var { result: operand, block: nextBlock } = check codeGenExprForBoolean(cx, bb, env, o);
            bir:Register reg = cx.createRegister(t:BOOLEAN);
            if operand is boolean {
                // Do it like this, because type of result is boolean not a singleton
                bir:AssignInsn insn = { operand: !operand, result: reg };
                bb.insns.push(insn);
            }
            else {
                bir:BooleanNotInsn insn = { operand, result: reg };
                bb.insns.push(insn);
            }
            return { result: reg, block: nextBlock };

        }
        var { td, operand: o } => {
            var { result: operand, block: nextBlock } = check codeGenExpr(cx, bb, env, o);
            // JBUG #31782 cast needed
            TypeCastExpr tcExpr = <TypeCastExpr>expr;
            if operand is bir:Register {
                if t:isSubtype(cx.mod.tc, operand.semType, tcExpr.semType) {
                    // it's redundant, so we can remove it
                    return { result: operand, block: nextBlock };
                }
                t:SemType resultType = t:intersect(operand.semType, tcExpr.semType);
                bir:Register reg = cx.createRegister(resultType);
                bir:TypeCastInsn insn = { operand, semType: tcExpr.semType, position: tcExpr.pos, result:reg };
                bb.insns.push(insn);
                return { result: reg, block: nextBlock };
            }
            else {
                if !t:containsConst(tcExpr.semType, operand) {
                    // the verifier uses the same wording
                    return err:semantic("type cast cannot succeed", pos=tcExpr.pos);
                }
                return { result: operand, block: nextBlock };
            }
        }
        // Type test
        var { td, left, semType } => {
            var { result: operand, block: nextBlock } = check codeGenExpr(cx, bb, env, left);
            if operand is bir:Register {
                if t:isSubtype(cx.mod.tc, operand.semType, semType) {
                    // always true
                    return { result: true, block: bb };
                }
                if t:isEmpty(cx.mod.tc, t:intersect(operand.semType, semType)) {
                    // always false
                    return { result: true, block: bb };
                }
                bir:Register reg = cx.createRegister(t:BOOLEAN);
                bir:TypeTestInsn insn = { operand, semType, result: reg };
                bb.insns.push(insn);
                return { result: reg, block: nextBlock };
            }
            else {
                // revisit when we revamp constants
                return { result: t:containsConst(semType, operand), block: bb };
            }
        }
        // Variable reference
        var { varName } => {
            return { result: check mustLookup(cx, varName, env), block: bb };
        }
        // Constant
        var { value } => {
            return { result: value, block: bb };
        }
        // Function/method call
        var callExpr if callExpr is (FunctionCallExpr|MethodCallExpr) => {
            if callExpr is FunctionCallExpr {
                return codeGenFunctionCall(cx, bb, env, callExpr);
            }
            else {
                return codeGenMethodCall(cx, bb, env, callExpr);
            }
        }
        // Member access E[i]
        var { container, index, pos } => {
            var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, container);
            var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, env, index);
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
                return { result, block: nextBlock };
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
                { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, member);
                operands.push(operand);
            }
            // In subset 3, we have only mutable lists of any
            // We will have to do more work in future subsets to determine the types here
            bir:Register result = cx.createRegister(t:LIST_RW);
            bir:ListConstructInsn insn = { operands: operands.cloneReadOnly(), result };
            nextBlock.insns.push(insn);
            return { result, block: nextBlock };
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
                { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, value);
                operands.push(operand);
                fieldNames.push(name);
            }
            bir:Register result = cx.createRegister(t:MAPPING_RW);
            bir:MappingConstructInsn insn = { fieldNames: fieldNames.cloneReadOnly(), operands: operands.cloneReadOnly(), result };
            nextBlock.insns.push(insn);
            return { result, block: nextBlock };
        }
    }
    panic err:impossible();
}

function codeGenFunctionCall(CodeGenContext cx, bir:BasicBlock bb, Environment env, FunctionCallExpr expr) returns CodeGenError|RegExprEffect {
    string? prefix = expr.prefix;
    bir:FunctionRef func;
    if prefix is () {
        func =  check genLocalFunctionRef(cx, env, expr.funcName);
    }
    else {
        func = check genImportedFunctionRef(cx, env, prefix, expr.funcName);
    }
    bir:BasicBlock curBlock = bb;
    bir:Operand[] args = [];
    foreach var argExpr in expr.args {
        var { result: arg, block: nextBlock } = check codeGenExpr(cx, curBlock, env, argExpr);
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
    return { result, block: curBlock };
}

function genLocalFunctionRef(CodeGenContext cx, Environment env, string identifier) returns bir:FunctionRef|CodeGenError {
    if !(lookup(identifier, env) is ()) {
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

function genImportedFunctionRef(CodeGenContext cx, Environment env, string prefix, string identifier) returns bir:FunctionRef|CodeGenError {
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

function codeGenMethodCall(CodeGenContext cx, bir:BasicBlock bb, Environment env, MethodCallExpr expr) returns CodeGenError|RegExprEffect {
    var { result: target, block: curBlock } = check codeGenExpr(cx, bb, env, expr.target);
    bir:FunctionRef func = check getLangLibFunctionRef(cx, target, expr.methodName);
    bir:Operand[] args = [target];
    foreach var argExpr in expr.args {
        var { result: arg, block: nextBlock } = check codeGenExpr(cx, curBlock, env, argExpr);
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
    return { result, block: curBlock };
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

function mustLookup(CodeGenContext cx, string name, Environment env, boolean forAssign = false) returns bir:Register|CodeGenError {
    Binding? binding = lookup(name, env);
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

function lookup(string name, Environment env) returns Binding? {
    Binding? tem = env.bindings;
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


