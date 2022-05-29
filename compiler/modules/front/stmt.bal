import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type Position d:Position;

type Range d:Range;

type BindingChain record {|
    Binding head;
    BindingChain? prev;
|};

type Environment record {|
    BindingChain? bindings;
    // A list of registers that were narrowed but have been assigned to
    // Holds the number of the original, unnarrowed register
    Assignment[] assignments = [];
|};

type Assignment readonly & record {|
    int unnarrowedReg;
    int? narrowedReg;
    Position pos;
|};

type StmtEffect record {|
    bir:BasicBlock? block;
    BindingChain? bindings = ();
    Assignment[] assignments = [];
|};

// Linked list of incoming branches to a TypeMerger
type TypeMergeOrigin record {|
    TypeMergeOrigin? prev;
    bir:Label label;
    BindingChain? bindings;
|};

// A partially constructed potential TypeMergeInsn
type TypeMerger record {|
    TypeMergeOrigin? origins = ();
    bir:BasicBlock dest;
|};

type TypeMergerPair record {|
    TypeMerger? trueMerger = ();
    TypeMerger? falseMerger = ();
|};

// At least one TypeMerger is non-nil
type CondExprEffect TypeMergerPair;

// One and only one TypeMerger is non-nil
type PrevTypeMergers TypeMergerPair;
type LExprEffect record {|
    bir:BasicBlock block;
    bir:Register result;
|};

type LoopContext record {|
    // number of first register created in the loop, including the ones created in the cond
    int startRegister;
    bir:BasicBlock? onBreak;
    bir:BasicBlock? onContinue;
    LoopContext? enclosing;
    // will use this with while true to determine whether
    // following block is reachable
    Assignment[] onBreakAssignments = [];
    Assignment[] onContinueAssignments = [];
    boolean continueIsBackward;
|};

class StmtContext {
    *err:SemanticContext;
    final ModuleSymbols mod;
    final s:SourceFile file;
    final s:FunctionDefn functionDefn;
    final bir:FunctionCode code;
    final t:SemType returnType;
    LoopContext? loopContext = ();
    bir:RegionIndex[] openRegions = [];
    bir:RegisterScope[] scopeStack = [];

    function init(ModuleSymbols mod, s:FunctionDefn functionDefn, t:SemType returnType) {
        self.mod = mod;
        self.functionDefn = functionDefn;
        self.file = functionDefn.part.file;
        self.code = {};
        self.returnType = returnType;
        self.scopeStack.push({ scope: (), startPos: functionDefn.startPos, endPos: functionDefn.endPos });
    }

    function createVarRegister(bir:SemType t, Position pos, string name) returns bir:VarRegister {
        return bir:createVarRegister(self.code, t, pos, name, self.getCurrentScope());
    }

    function createFinalRegister(bir:SemType t, Position pos, string name) returns bir:FinalRegister {
        return bir:createFinalRegister(self.code, t, pos, name, self.getCurrentScope());
    }

    function createNarrowRegister(bir:SemType t, bir:Register underlying, Position? pos) returns bir:NarrowRegister {
        return bir:createNarrowRegister(self.code, t, underlying, pos);
    }

    function createParamRegister(bir:SemType t, Position pos, string name) returns bir:ParamRegister {
        return bir:createParamRegister(self.code, t, pos, name, self.getCurrentScope());
    }

    public function getCurrentScope() returns bir:RegisterScope {
        return self.scopeStack[self.scopeStack.length() - 1];
    }

    function popScope() {
        _ = self.scopeStack.pop();
    }

    function pushScope(Position startPos, Position endPos) {
        bir:RegisterScope scope = self.getCurrentScope();
        self.scopeStack.push({ scope, startPos, endPos });
    }

    function createTmpRegister(bir:SemType t, Position? pos = ()) returns bir:TmpRegister {
        return bir:createTmpRegister(self.code, t, pos);
    }

    function nextRegisterNumber() returns int {
        return self.code.registers.length();
    }

    function registerVarName(int registerNumber) returns string? {
        return bir:getRegister(self.code, registerNumber).name;
    }

    function registerPosition(int registerNumber) returns Position? {
        return bir:getRegister(self.code, registerNumber).pos;
    }

    function createBasicBlock(string? name = ()) returns bir:BasicBlock {
        return bir:createBasicBlock(self.code, name);
    }

    function openRegion(bir:Label entry, bir:RegionKind kind, bir:Label? exit = ()) {
        bir:RegionIndex regionIndex = self.code.regions.length();
        int openCount = self.openRegions.length();
        bir:RegionIndex? parent = openCount > 0 ? self.openRegions[openCount - 1] : ();
        self.code.regions.push({ entry, kind, exit, parent });
        self.openRegions.push(regionIndex);
    }

    function closeRegion(bir:Label? exit = ()) {
        int regionIndex = self.openRegions.pop();
        self.code.regions[regionIndex].exit = exit;
    }

    function qNameRange(Position startPos) returns Range {
        return self.file.qNameRange(startPos);
    }

    public function semanticErr(d:Message msg, Position|Range pos, error? cause = ()) returns err:Semantic {
        return err:semantic(msg, loc=self.location(pos), cause=cause, defnName=self.functionDefn.name);
    }

    function unimplementedErr(d:Message msg, Position|Range pos, error? cause = ()) returns err:Unimplemented {
        return err:unimplemented(msg, loc=self.location(pos), cause=cause, defnName=self.functionDefn.name);
    }

    private function location(Position|Range pos) returns d:Location {
        return d:location(self.file, pos);
    }

    function pushLoopContext(bir:BasicBlock? onBreak, bir:BasicBlock? onContinue, boolean continueIsBackward, int startRegister) {
        LoopContext c = { onBreak, onContinue, enclosing: self.loopContext, continueIsBackward, startRegister };
        self.loopContext = c;
    }

    function loopContinueBlock() returns bir:BasicBlock? {
        return (<LoopContext>self.loopContext).onContinue;
    }

    function loopBreakBlock() returns bir:BasicBlock? {
        return (<LoopContext>self.loopContext).onBreak;
    }

    function loopStartRegister() returns int {
        return (<LoopContext>self.loopContext).startRegister;
    }

    function popLoopContext() {
        self.loopContext = (<LoopContext>self.loopContext).enclosing;
    }

    function onBreakLabel(Position pos) returns bir:Label|err:Semantic {
        LoopContext? c = self.loopContext;
        if c == () {
            return self.semanticErr("break not in loop", pos);
        }
        else {
            bir:BasicBlock b = c.onBreak ?: self.createBasicBlock();
            c.onBreak = b;
            return b.label;
        }
    }

    // Returns basic block to branch on continue, and whether the branch will be backwards
    function onContinueLabel(Position pos) returns [bir:Label, boolean]|err:Semantic {
        LoopContext? c = self.loopContext;
        if c == () {
            return self.semanticErr("continue not in loop", pos);
        }
        else {
            bir:BasicBlock b = c.onContinue ?: self.createBasicBlock();
            c.onContinue = b;
            return [b.label, c.continueIsBackward];
        }
    }

    function addOnBreakAssignments(Assignment[] assignments) {
        if assignments.length() == 0 {
            return;
        }
        LoopContext c = <LoopContext>self.loopContext;
        addAssignments(c.onBreakAssignments, assignments, c.startRegister);
    }

    function addOnContinueAssignments(Assignment[] assignments) {
        if assignments.length() == 0 {
            return;
        }
        LoopContext c = <LoopContext>self.loopContext;
        addAssignments(c.onContinueAssignments, assignments, c.startRegister);
    }

    function onBreakAssignments() returns Assignment[] {
        return  (<LoopContext>self.loopContext).onBreakAssignments;
    }

    function onContinueAssignments() returns Assignment[] {
        return  (<LoopContext>self.loopContext).onContinueAssignments;
    }

    function exprContext(Environment env) returns ExprContext {
        return new ExprContext(self.mod, self.functionDefn, self.code, env, self);
    }

    function codeGenExpr(bir:BasicBlock block, Environment env, t:SemType? expectedType, s:Expr expr) returns CodeGenError|ExprEffect {
        return codeGenExpr(self.exprContext(env), block, expectedType, expr);
    }

    function codeGenExprForInt(bir:BasicBlock block, Environment env, s:Expr expr) returns CodeGenError|IntExprEffect {
        return codeGenExprForInt(self.exprContext(env), block, expr);
    }

    function codeGenExprForString(bir:BasicBlock block, Environment env, s:Expr expr) returns CodeGenError|StringExprEffect {
        return codeGenExprForString(self.exprContext(env), block, expr);
    }

    function codeGenExprForBoolean(bir:BasicBlock block, Environment env, s:Expr expr) returns CodeGenError|BooleanExprEffect {
        return codeGenExprForBoolean(self.exprContext(env), block, expr);
    }

    function resolveTypeDesc(s:TypeDesc td) returns t:SemType|ResolveTypeError {
        return resolveSubsetTypeDesc(self.mod, self.functionDefn, td);
    }

}

function codeGenFunction(ModuleSymbols mod, s:FunctionDefn defn, bir:FunctionSignature signature) returns bir:FunctionCode|CodeGenError {
    StmtContext cx = new(mod, defn, signature.returnType);
    bir:BasicBlock startBlock = cx.createBasicBlock();
    BindingChain? bindings = ();
    foreach int i in 0 ..< defn.params.length() {
        var param = defn.params[i];
        bir:ParamRegister reg = cx.createParamRegister(signature.paramTypes[i], param.namePos, param.name);
        bindings = { head: { name: <string>param.name, reg, isFinal: true }, prev: bindings };
    }
    var { block: endBlock } = check codeGenScope(cx, startBlock, { bindings }, defn.body);
    if endBlock != () {
        bir:RetInsn ret = { operand: bir:NIL_OPERAND, pos: defn.body.closeBracePos };
        endBlock.insns.push(ret);
    }
    codeGenOnPanic(cx, defn.body.closeBracePos);
    return cx.code;
}

function codeGenOnPanic(StmtContext cx, Position pos) {
    bir:BasicBlock[] blocks = cx.code.blocks;
    bir:BasicBlock? onPanicBlock = ();
    foreach var b in blocks {
        if bir:isBasicBlockPotentiallyPanicking(b) {
            bir:BasicBlock pb;
            if onPanicBlock == () {
                pb = cx.createBasicBlock();
                onPanicBlock = pb;
            }
            else {
                pb = onPanicBlock;
            }
            b.onPanic = pb.label;
        }
    }
    if onPanicBlock != () {
        bir:TmpRegister reg = cx.createTmpRegister(t:ERROR, pos);
        bir:CatchInsn catch = { result: reg, pos };
        onPanicBlock.insns.push(catch);
        onPanicBlock.insns.push(<bir:AbnormalRetInsn>{ operand: reg, pos });
    }
}

type Scope s:StmtBlock|s:IfElseStmt;

type ScopedStmt s:MatchStmt|s:WhileStmt|s:ForeachStmt;
// If the scope doesn't complete normally, will return empty assignments and bindings.
function codeGenScope(StmtContext cx, bir:BasicBlock bb, Environment initialEnv, Scope scope, BindingChain? initialBindings = ()) returns CodeGenError|StmtEffect {
    BindingChain? bodyBindings = initialBindings ?: initialEnv.bindings;
    Environment env = { bindings: bodyBindings, assignments: initialEnv.assignments.clone() };
    final int startRegister = cx.nextRegisterNumber();
    // Assignments are not invalidated for the initialBinding in the caller (eg: in if-stmt's cond), but here, such that it only affects the current scope.
    invalidateAssignments(env.assignments, env.bindings, initialEnv.bindings);
    bir:BasicBlock? curBlock = bb;
    // Similar to env.bindings, but only contains the bindings of variables defined outside of current scope
    if scope is s:IfElseStmt {
        StmtEffect effect = check codeGenIfElseStmt(cx, bb, env, scope);
        curBlock = effect.block;
        applyStmtEffect(env, effect);
    }
    else {
        foreach var stmt in scope.stmts {
            StmtEffect effect = check codeGenStmt(cx, curBlock, env, stmt);
            curBlock = effect.block;
            applyStmtEffect(env, effect);
        }
    }
    check unusedLocalVariables(cx, env, initialEnv.bindings);
    Assignment[] assignments = [];
    addAssignments(assignments, env.assignments, startRegister);
    BindingChain? bindings = curBlock != () ? addBindings(bodyBindings, env.bindings, startRegister) : ();
    return { block: curBlock, assignments, bindings };
}

// Add `Bindings` from `bodyBindings`, up to `bindingLimit`, that narrows outside registers, on top `bindingLimit`.
function addBindings(BindingChain? bindingLimit, BindingChain? bodyBindings, int startRegister) returns BindingChain? {
    Binding[] extras = [];
    BindingChain? bindings = bodyBindings;
    while bindings !== bindingLimit {
        // Since `bindingLimit` is a sub-chain of `bodyBindings`, we never reach nil on `bindings`.
        var { head, prev } = <BindingChain>bindings;
        extras.unshift(head);
        bindings = prev;
    }
    BindingChain? newBindings = bindingLimit;
    foreach var extra in extras {
        Binding? unnarrowed = extra.unnarrowed;
        if unnarrowed != () && unnarrowed.reg.number < startRegister {
            newBindings = { prev: newBindings, head: extra };
        }
    }
    return newBindings;
}

function codeGenStmt(StmtContext cx, bir:BasicBlock? curBlock, Environment env, s:Stmt stmt) returns CodeGenError|StmtEffect {
    if curBlock == () {
        return cx.semanticErr("unreachable code", s:range(stmt));
    }
    else if stmt is ScopedStmt {
        return codeGenScopedStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:IfElseStmt {
        return codeGenIfElseStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:BreakContinueStmt {
        return codeGenBreakContinueStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:ReturnStmt {
        return codeGenReturnStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:PanicStmt {
        return codeGenPanicStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:VarDeclStmt {
        return codeGenVarDeclStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:AssignStmt {
        return codeGenAssignStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:CompoundAssignStmt {
        return codeGenCompoundAssignStmt(cx, curBlock, env, stmt);
    }
    else {
        return codeGenCallStmt(cx, curBlock, env, stmt);
    }
}

function codeGenScopedStmt(StmtContext cx, bir:BasicBlock curBlock, Environment env, ScopedStmt stmt) returns CodeGenError|StmtEffect {
    StmtEffect|CodeGenError effect;
    cx.pushScope(stmt.startPos, stmt.endPos);
    if stmt is s:MatchStmt {
        effect = codeGenMatchStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:WhileStmt {
        effect = codeGenWhileStmt(cx, curBlock, env, stmt);
    }
    else {
        effect = codeGenForeachStmt(cx, curBlock, env, stmt);
    }
    cx.popScope();
    return effect;
}

function applyStmtEffect(Environment env, StmtEffect effect) {
    BindingChain? bindings = effect.bindings;
    if effect.block == () {
        env.assignments.setLength(0);
    }
    else {
        invalidateAssignments(env.assignments, bindings, env.bindings);
        env.assignments.push(...effect.assignments);
    }
    if bindings != () {
        env.bindings = bindings;
    }
}

function invalidateAssignments(Assignment[] assignments, BindingChain? effectBindings, BindingChain? bindingLimit) {
    if effectBindings == () {
        return;
    }
    BindingChain? bindings = effectBindings;
    while bindings !== bindingLimit {
        // Since `bindingLimit` is a sub-chain of `effectBindings`, we never reach nil on `bindings`.
        var { head, prev } = <BindingChain>bindings;
        // Only the first assign to var generates an Assignment (until Assignment is invalidated)
        // So at most one Assignment has to be invalidated
        Binding? unnarrowed = head.unnarrowed;
        if unnarrowed != () {
            int? invalidated = findAssignmentByUnnarrowedReg(assignments, unnarrowed.reg.number);
            if invalidated != () {
                _ = assignments.remove(invalidated);
            }
        }
        bindings = prev;
    }
}

function unusedLocalVariables(StmtContext cx, Environment env, BindingChain? bindingLimit) returns CodeGenError? {
    BindingChain? bindings = env.bindings;
    while bindings !== bindingLimit {
        // Since `bindingLimit` is a sub-chain of `env.binding`, we never reach nil on `bindings`.
        var { head, prev } = <BindingChain>bindings;
        if head.unnarrowed == () && !head.used {
            return cx.semanticErr(`unused local variable ${head.name}`, <Position>head.reg.pos);}
        bindings = prev;
    }
}

function codeGenForeachStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:ForeachStmt stmt) returns CodeGenError|StmtEffect {
    string varName = stmt.name;
    if envDefines(varName, env) {
        return cx.semanticErr(`duplicate declaration of ${varName}`, stmt.namePos);
    }
    s:RangeExpr range = stmt.range;
    var { result: lower, block: evalUpper } = check cx.codeGenExprForInt(startBlock, env, range.lower);
    var { result: upper, block: initLoopVar } = check cx.codeGenExprForInt(evalUpper, env, range.upper);
    bir:VarRegister loopVar = cx.createVarRegister(t:INT, stmt.namePos, varName);
    bir:AssignInsn init = { pos: stmt.kwPos, result: loopVar, operand: lower };
    initLoopVar.insns.push(init);
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:BranchInsn branchToLoopHead = { dest: loopHead.label, pos: stmt.body.startPos };
    initLoopVar.insns.push(branchToLoopHead);
    bir:TmpRegister condition = cx.createTmpRegister(t:BOOLEAN, stmt.range.opPos);
    bir:CompareInsn compare = { op: "<", pos: stmt.range.opPos, operands: [loopVar, upper], result: condition };
    loopHead.insns.push(compare);
    bir:BasicBlock loopBody = cx.createBasicBlock();
    bir:CondBranchInsn branch = { operand: condition, ifFalse: exit.label, ifTrue: loopBody.label, pos: stmt.range.opPos };
    loopHead.insns.push(branch);
    cx.pushLoopContext(exit, (), false, cx.nextRegisterNumber());
    BindingChain loopBindings = { head: { name: varName, reg: loopVar, isFinal: true }, prev: env.bindings };
    var { block: loopEnd, assignments } = check codeGenScope(cx, loopBody, { bindings: loopBindings }, stmt.body);

    bir:BasicBlock? loopStep = cx.loopContinueBlock();
    if loopEnd != () {
        loopStep = loopStep ?: cx.createBasicBlock();
        bir:BranchInsn branchToLoopStep = { dest: (<bir:BasicBlock>loopStep).label, pos: stmt.kwPos };
        loopEnd.insns.push(branchToLoopStep);
        check validLoopAssignments(cx, assignments);
    }
    check validLoopAssignments(cx, cx.onContinueAssignments());
    assignments.push(...cx.onContinueAssignments());
    assignments.push(...cx.onBreakAssignments());
    if loopStep != () {
        bir:TmpRegister nextLoopVal = cx.createTmpRegister(t:INT);
        bir:IntNoPanicArithmeticBinaryInsn increment = { op: "+", pos: stmt.kwPos, operands: [loopVar, singletonIntOperand(cx.mod.tc, 1)], result: nextLoopVal };
        bir:AssignInsn incrementAssign = { result: loopVar, operand: nextLoopVal, pos: stmt.kwPos };
        bir:BranchInsn backwardBranchToLoopHead = { dest: loopHead.label, pos: stmt.body.startPos, backward: true };
        loopStep.insns.push(increment, incrementAssign, backwardBranchToLoopHead);
    }
    cx.popLoopContext();
    // XXX shouldn't we be passing up assignments here
    return { block: exit };
}

function codeGenWhileStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:WhileStmt stmt) returns CodeGenError|StmtEffect {
    ExprContext ec = cx.exprContext(env);
    bir:BasicBlock loopHead = cx.createBasicBlock(); // where we go to on continue
    cx.openRegion(loopHead.label, bir:REGION_LOOP);
    bir:BranchInsn forwardBranchToLoopHead = { dest: loopHead.label, pos: stmt.body.startPos };
    startBlock.insns.push(forwardBranchToLoopHead);

    // Its OK to assign to bindings created in the cond, so loop assignable variables should start from here
    int startRegister = cx.nextRegisterNumber();
    var { trueMerger, falseMerger } = check codeGenExprForCond(ec, loopHead, stmt.condition);
    if trueMerger is () && falseMerger is TypeMerger {
        if stmt.body.length() == 0 {
            return codeGenTypeMergeFromMerger(ec, falseMerger, stmt.body.startPos);
        }
        else {
            return cx.semanticErr("unreachable code", stmt.body.stmts[0].startPos);
        }
    }
    else if trueMerger is TypeMerger && falseMerger is () {
        return finishCodeGenWhileStmt(cx, env, stmt, loopHead, trueMerger, startRegister);
    }
    else if trueMerger is TypeMerger && falseMerger is TypeMerger {
        var { block: exit, binding: _ } = codeGenTypeMergeFromMerger(ec, falseMerger, stmt.body.endPos); // binding is ignored, see: #ballerina-spec/1019
        return finishCodeGenWhileStmt(cx, env, stmt, loopHead, trueMerger, startRegister, exit);
    }
    panic err:impossible();
}

// JBUG #35748 had to be broken into a separate function
function finishCodeGenWhileStmt(StmtContext cx, Environment env, s:WhileStmt stmt, bir:BasicBlock loopHead, TypeMerger loopBodyMerger, int startRegister, bir:BasicBlock? exit = ()) returns CodeGenError|StmtEffect {
    ExprContext ec = cx.exprContext(env);
    var { block: loopBody, bindings: loopBodyBindings } = codeGenTypeMergeFromMerger(ec, loopBodyMerger, stmt.body.startPos);
    cx.pushLoopContext(exit, loopHead, true, startRegister);
    var { block: loopEnd, assignments } = check codeGenScope(cx, loopBody, env, stmt.body, loopBodyBindings);
    if loopEnd != () {
        bir:BranchInsn backwardBranchToLoopHead = { dest: loopHead.label, pos: stmt.body.startPos, backward: true };
        loopEnd.insns.push(backwardBranchToLoopHead);
        check validLoopAssignments(cx, assignments);
    }
    check validLoopAssignments(cx, cx.onContinueAssignments());
    // We won't use these if the exit isn't reachable
    assignments.push(...cx.onContinueAssignments());
    assignments.push(...cx.onBreakAssignments());
    bir:BasicBlock? breakBlock = cx.loopBreakBlock();
    cx.popLoopContext();
    if breakBlock != () {
        cx.closeRegion(breakBlock.label);
        return { block: breakBlock, assignments };
    }
    else {
        cx.closeRegion();
        return { block: () };
    }
}

function validLoopAssignments(StmtContext cx, Assignment[] assignments) returns CodeGenError? {
    foreach Assignment a in assignments {
        int? narrowedReg = a.narrowedReg;
        if narrowedReg != () && narrowedReg < cx.loopStartRegister() {
            return cx.semanticErr(`assignment to narrowed variable ${<string>cx.registerVarName(a.unnarrowedReg)} in loop`, a.pos);
        }
    }
}

function codeGenBreakContinueStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:BreakContinueStmt stmt) returns CodeGenError|StmtEffect {
    bir:Label dest;
    boolean backward;
    if stmt.breakContinue == "break" {
        dest = check cx.onBreakLabel(stmt.startPos);
        backward = false;
        cx.addOnBreakAssignments(env.assignments);
    }
    else {
        [dest, backward] = check cx.onContinueLabel(stmt.startPos);
        cx.addOnContinueAssignments(env.assignments);
    }
    bir:BranchInsn branch = {dest, pos: stmt.startPos, backward};
    startBlock.insns.push(branch);
    return { block: () };
}

type MatchTest EqualMatchTest|UniformTypeMatchTest;

type EqualMatchTest record {|
    int clauseIndex;
    Position pos;
    bir:ConstOperand operand;
    readonly t:SingleValue value;
|};

type UniformTypeMatchTest record {|
    int clauseIndex;
    Position pos;
    t:UniformTypeBitSet bitSet;
|};

function codeGenMatchStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:MatchStmt stmt) returns CodeGenError|StmtEffect {
    Assignment[] assignments = [];
    ExprContext ec = cx.exprContext(env);
    var { result: matched, block: testBlock, binding } = check codeGenExpr(ec, startBlock, (), stmt.expr);
    t:Context tc = cx.mod.tc;
    t:SemType matchedType = operandSemType(tc, matched);
    // defaultCodeIndex is either () or the index of the last clause;
    // the latter case means that the match is exhaustive
    int? defaultClauseIndex = ();
    boolean hadWildcardPattern = false;
    table<EqualMatchTest> key(value) equalMatchTests = table [];
    MatchTest[] matchTests = [];
    t:SemType[] clauseLooksLike = [];
    t:SemType[] clauseUnmatchedLooksLike = [];
    t:SemType[] clausePatternUnions = [];
    // union of all clause patterns preceding this one
    t:SemType precedingPatternsUnion = t:NEVER;
    bir:BasicBlock[] clauseBlocks = [];

    foreach int i in 0 ..< stmt.clauses.length() {
        var clause = stmt.clauses[i];
        clauseBlocks[i] = cx.createBasicBlock("clause." + i.toString());
        t:SemType clausePatternUnion = t:NEVER;
        foreach var pattern in clause.patterns {
            t:SemType patternType;
            if pattern is s:SimpleConstExpr {
                t:SingleValue value = check resolveConstMatchPattern(cx, env, pattern, matchedType);
                if equalMatchTests.hasKey(value) {
                    return cx.semanticErr("duplicate const match pattern", pos=s:range(pattern));
                }
             
                if !t:containsConst(matchedType, value) {
                    return cx.semanticErr("match pattern cannot match value of expression", pos=s:range(pattern));
                }
                patternType = t:singleton(tc, value);
                bir:ConstOperand operand = { value, semType: patternType };
                EqualMatchTest mt = { value, operand, clauseIndex: i, pos: clause.opPos };
                equalMatchTests.add(mt);
                matchTests.push(mt);
            }
            else {
                // `1|_ => {}` is pointless, but I'm not making it an error
                // because a later pattern that overlaps an earlier one is not in general an error
                if hadWildcardPattern {
                    return cx.semanticErr("duplicate wildcard match pattern", pattern.startPos);
                }
                hadWildcardPattern = true;
                UniformTypeMatchTest mt = { bitSet: t:ANY, clauseIndex: i, pos: clause.opPos };
                matchTests.push(mt);
                patternType = t:ANY;
                if t:isSubtypeSimple(matchedType, t:ERROR) {
                    return cx.semanticErr("wildcard match pattern cannot match error", pattern.startPos);
                }
            }
            clausePatternUnion = t:union(clausePatternUnion, patternType);
        }
        clauseLooksLike[i] = t:diff(clausePatternUnion, precedingPatternsUnion);
        precedingPatternsUnion = t:union(precedingPatternsUnion, clausePatternUnion);
        clauseUnmatchedLooksLike[i] = t:diff(matchedType , precedingPatternsUnion);
        clausePatternUnions[i] = clausePatternUnion;
        if t:isSubtype(cx.mod.tc, matchedType, precedingPatternsUnion) {
            if i != stmt.clauses.length() - 1 {
                return cx.semanticErr("match clause unmatchable because of previous wildcard match pattern", pos=s:range(stmt.clauses[i + 1]));
            }
            defaultClauseIndex = i;
        }
    }
    BindingChain?[] clauseBindings = [];
    clauseBindings[stmt.clauses.length() - 1] = ();
    if binding != () {
        // Match expression is a variable
        // We get one type narrowing per clause (which combines all the patterns in the clause)
        bir:Register unmatchedReg = <bir:Register>matched;
        foreach var i in 0 ..< stmt.clauses.length() {
            if i == defaultClauseIndex {
                // Safe to cast when i != 0, previous iteration created a narrowed reg.
                clauseBindings[i] = i == 0 ? env.bindings : narrow(env.bindings, binding, <bir:NarrowRegister>unmatchedReg);
                break;
            }
            var pos = stmt.clauses[i].opPos;
            bir:NarrowRegister ifTrueRegister = cx.createNarrowRegister(clauseLooksLike[i], binding.reg, pos);
            bir:NarrowRegister ifFalseRegister = cx.createNarrowRegister(clauseUnmatchedLooksLike[i], binding.reg, pos);
            bir:BasicBlock nextBlock;
            nextBlock = cx.createBasicBlock("gard." + i.toString());
            bir:TypeBranchInsn typeBranch = {
                ifTrue: clauseBlocks[i].label,
                ifFalse: nextBlock.label,
                ifTrueRegister,
                ifFalseRegister,
                operand: unmatchedReg,
                semType: clausePatternUnions[i],
                pos: pos
            };
            unmatchedReg = ifFalseRegister;
            clauseBindings[i] = narrow(env.bindings, binding, ifTrueRegister);
            testBlock.insns.push(typeBranch);
            testBlock = nextBlock;
        }
    }
    else {
        // Match expression is not a variable: we do not get type narrowing
        int patternIndex = 0;
        foreach var mt in matchTests {
            int clauseIndex = mt.clauseIndex;
            if clauseIndex == defaultClauseIndex {
                break;
            }
            bir:TmpRegister testResult = cx.createTmpRegister(t:BOOLEAN, mt.pos);
            if mt is EqualMatchTest {
                bir:EqualityInsn eq = { op: "==", pos: mt.pos, result: testResult, operands: [matched, mt.operand] };
                testBlock.insns.push(eq);
            }
            else {
                // We only get here if there is no defaultClauseIndex
                // A wildcard match pattern can only not be the default if the type of the match pattern includes error,
                // in which case the matched Operand cannot be const.
                // So the cast to `bir:Register` is safe.
                bir:TypeTestInsn tt = { pos: mt.pos, result: testResult, operand: <bir:Register>matched, semType: mt.bitSet, negated: false };
                testBlock.insns.push(tt);
            }
            bir:BasicBlock nextBlock = cx.createBasicBlock("pattern." + patternIndex.toString());
            patternIndex += 1;
            bir:CondBranchInsn condBranch = { operand: testResult, ifTrue: clauseBlocks[clauseIndex].label, ifFalse: nextBlock.label, pos: mt.pos } ;
            testBlock.insns.push(condBranch);
            testBlock = nextBlock;
        }
    }
    bir:BasicBlock? contBlock = ();
    foreach int clauseIndex in 0 ..< stmt.clauses.length() {
        s:MatchClause clause = stmt.clauses[clauseIndex];
        bir:BasicBlock stmtBlock = clauseBlocks[clauseIndex];
        Environment clauseEnv = env;
        var { block: stmtBlockEnd, assignments: blockAssignments } = check codeGenScope(cx, stmtBlock, clauseEnv, clause.block, clauseBindings[clauseIndex]);
        if stmtBlockEnd == () {
            continue;
        }
        else {
            bir:BasicBlock b = maybeCreateBasicBlock(ec, contBlock);
            contBlock = b;
            bir:BranchInsn branchToCont = { dest: b.label, pos: clause.startPos };
            stmtBlockEnd.insns.push(branchToCont);
            assignments.push(...blockAssignments);
        }
    }
    if defaultClauseIndex != () {
        bir:BranchInsn branch = { dest: clauseBlocks[defaultClauseIndex].label, pos: stmt.clauses[defaultClauseIndex].startPos };
        testBlock.insns.push(branch);
        if contBlock == () {
            // all the clauses have a return or similar
            return { block: () };
        }
    }
    else {
        bir:BasicBlock b = maybeCreateBasicBlock(ec, contBlock);
        contBlock = b;
        Position endPos = stmt.clauses.length() > 0 ? (stmt.clauses[stmt.clauses.length() - 1].block.closeBracePos) : stmt.startPos;
        bir:BranchInsn branch = { dest: b.label, pos: endPos };
        testBlock.insns.push(branch);
    }
    return { block: contBlock, assignments };
}

function resolveConstMatchPattern(StmtContext cx, Environment env, s:SimpleConstExpr expr, t:SemType? expectedType) returns t:SingleValue|ResolveTypeError {
    if expr !is s:VarRefExpr || expr.prefix != () || !envDefines(expr.name, env) {
        var [_, value] = check resolveConstExprForType(cx.mod, cx.functionDefn, expr, expectedType, "pattern will not be matched");
        return value;
    }
    return cx.semanticErr(`match pattern is not constant`, s:range(expr));
}

function maybeCreateBasicBlock(ExprContext cx, bir:BasicBlock? block) returns bir:BasicBlock {
    if block == () {
        return cx.createBasicBlock();
    }
    else {
        return block;
    }
}

function codeGenIfElseStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:IfElseStmt stmt) returns CodeGenError|StmtEffect {
    ExprContext ec = cx.exprContext(env);
    var { condition, ifTrue, ifFalse } = stmt;
    CondExprEffect condEffect = check codeGenExprForCond(cx.exprContext(env), startBlock, condition);
    var {trueMerger, falseMerger} = condEffect;
    if trueMerger == () || falseMerger == () {
        // this will happen when type of condition is singleton true or singleton false
        var [constCond, merger] = typeMergerPairSingleton(condEffect);
        [Scope?, Scope?] [taken, notTaken] = constCond ? [ifTrue, ifFalse] : [ifFalse, ifTrue];
        s:Stmt? errStmt = scopeFirstStmt(notTaken);
        if errStmt != () {
            return cx.semanticErr("unreachable code", s:range(errStmt));
        }
        if taken != () {
            return codeGenScopeWithTypeMerger(cx, merger, env, taken);
        }
        else {
            // `if false` without `else` block.
            return { block: merger.dest };
        }
    }
    else {
        cx.openRegion(startBlock.label, bir:REGION_COND);
        var { block: ifContBlock, assignments, bindings: ifBindings } = check codeGenScopeWithTypeMerger(cx, trueMerger, env, ifTrue);
        if ifFalse == () {
            // Just an if branch
            TypeMerger contMerger = falseMerger;
            if ifBindings != () && ifContBlock != () { // ifContBlock != () is redundant
                bir:BranchInsn branch = { dest: falseMerger.dest.label, pos: stmt.condition.startPos };
                ifContBlock.insns.push(branch);
                contMerger = { dest: falseMerger.dest, origins: { bindings: ifBindings, label: ifContBlock.label, prev: falseMerger.origins } };
            }
            cx.closeRegion(contMerger.dest.label);
            return codeGenTypeMergeFromMerger(ec, contMerger, ifTrue.endPos);
        }
        else {
            // An if and an else
            var { block: elseContBlock, assignments: elseAssignments, bindings: elseBindings } = check codeGenScopeWithTypeMerger(cx, falseMerger, env, ifFalse);
            assignments.push(...elseAssignments);
            if ifContBlock != () && elseContBlock != () {
                // this is the case where we have a real type merge
                bir:BasicBlock contBlock = cx.createBasicBlock();
                Position joinPos = (ifFalse is s:StmtBlock ? ifFalse : ifFalse.ifTrue).closeBracePos;
                bir:BranchInsn branch = { dest: contBlock.label, pos: joinPos };
                ifContBlock.insns.push(branch);
                elseContBlock.insns.push(branch);
                TypeMergeOrigin? combinedOrigin = { bindings: ifBindings, label: ifContBlock.label, prev: { bindings: elseBindings, label: elseContBlock.label, prev: () } };
                BindingChain? bindings = codeGenTypeMerge(ec, contBlock, env.bindings, combinedOrigin, ifTrue.endPos);
                cx.closeRegion(contBlock.label);
                return { block: contBlock, assignments, bindings };
            }
            else {
                // One or both arms are branching outside.
                bir:BasicBlock? contBlock = ifContBlock ?: elseContBlock;
                BindingChain? bindings = ifBindings ?: elseBindings;
                cx.closeRegion(contBlock?.label);
                return { block: contBlock, assignments, bindings };
            }
        }
    }
}

// code gen a scope that might start with a TypeMergeInsn, ie might have multiple branches coming in.
function codeGenScopeWithTypeMerger(StmtContext cx, TypeMerger merger, Environment initialEnv, Scope scope) returns CodeGenError|StmtEffect {
    var { bindings } = codeGenTypeMergeFromMerger(cx.exprContext(initialEnv), merger, scope.startPos);
    return codeGenScope(cx, merger.dest, initialEnv, scope, bindings);
}

function scopeFirstStmt(Scope? s) returns s:Stmt? {
    if s is s:IfElseStmt {
        return scopeFirstStmt(s.ifTrue) ?: scopeFirstStmt(s.ifFalse);
    }
    else if s is s:StmtBlock {
        if s.stmts.length() > 0 {
            return s.stmts[0];
        }
    }
    return ();
}

function codeGenReturnStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:ReturnStmt stmt) returns CodeGenError|StmtEffect {
    var { returnExpr } = stmt;
    bir:BasicBlock nextBlock;
    bir:Operand operand;
    if returnExpr is s:Expr {
        { result: operand, block: nextBlock } = check cx.codeGenExpr(startBlock, env, cx.returnType, returnExpr);
    }
    else {
        operand = bir:NIL_OPERAND;
        nextBlock = startBlock;
    }
    bir:RetInsn insn = { operand, pos: stmt.kwPos };
    nextBlock.insns.push(insn);
    return { block: () };
}

function codeGenPanicStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:PanicStmt stmt) returns CodeGenError|StmtEffect {
    var { panicExpr } = stmt;
    var { result: operand, block: nextBlock } = check cx.codeGenExpr(startBlock, env, t:ERROR, panicExpr);
    if operand is bir:Register && t:isSubtypeSimple(operand.semType, t:ERROR) {
        bir:PanicInsn insn = { operand, pos: stmt.kwPos };
        nextBlock.insns.push(insn);
        return { block: () };
    }
    else {
        return cx.semanticErr("argument to panic must be a error", stmt.startPos);
    }
}

function codeGenVarDeclStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:VarDeclStmt stmt) returns CodeGenError|StmtEffect {
    var { name, namePos, initExpr, td, isFinal } = stmt;
    if name is s:WILDCARD {
        return codeGenWildcardDeclStmt(cx, startBlock, env, initExpr, td, stmt.opPos);
    }
    else {
        if envDefines(name, env) {
            return cx.semanticErr(`duplicate declaration of ${name}`, namePos);
        }
        t:SemType semType = check cx.resolveTypeDesc(td);
        bir:VarRegister|bir:FinalRegister result = isFinal ? cx.createFinalRegister(semType, namePos, name) : cx.createVarRegister(semType, namePos, name);
        bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, result, initExpr, semType, stmt.opPos);
        return { block: nextBlock, bindings: { head: { name, reg: result, isFinal }, prev: env.bindings } };
    }
}

function codeGenWildcardDeclStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:Expr expr, s:TypeDesc td, Position pos) returns CodeGenError|StmtEffect {
    t:SemType semType = check cx.resolveTypeDesc(td);
    if !t:isSubtype(cx.mod.tc, semType, t:ANY) {
        return cx.semanticErr("type descriptor of wildcard should be a subtype of any", pos);
    }
    bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, cx.createVarRegister(semType, pos, "_"), expr, semType, pos);
    return { block: nextBlock };
}

function codeGenAssignStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:AssignStmt stmt) returns CodeGenError|StmtEffect {
    var { lValue, expr } = stmt;
    if lValue is s:VarRefExpr {
        return codeGenAssignToVar(cx, startBlock, env, lValue.name, expr, stmt.opPos);
    }
    else if lValue is s:WILDCARD {
        bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, cx.createVarRegister(t:ANY, stmt.opPos, "_"), expr, t:ANY, stmt.opPos);
        return { block: nextBlock };
    }
    else {
        return codeGenAssignToMember(cx, startBlock, env, lValue, expr);
    }
}

function codeGenAssignToVar(StmtContext cx, bir:BasicBlock startBlock, Environment env, string varName, s:Expr expr, Position pos) returns CodeGenError|StmtEffect {
    var [unnarrowedReg, assignments] = check lookupVarRefForAssign(cx, env, varName, pos);
    bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, unnarrowedReg, expr, unnarrowedReg.semType, pos);
    return { block: nextBlock, assignments };
}

function lookupVarRefForAssign(StmtContext cx, Environment env, string varName, Position pos) returns CodeGenError|[bir:VarRegister, Assignment[]] {
    Binding binding = check lookupVarRefBinding(cx, varName, env, pos);
    if binding.isFinal {
        return cx.semanticErr(`cannot assign to ${varName}`, pos);
    }
    bir:VarRegister unnarrowedReg;
    Assignment[] assignments;
    Binding? unnarrowedBinding = binding.unnarrowed;
    if unnarrowedBinding == () {
        // no narrowed binding in effect
        unnarrowedReg = <bir:VarRegister>binding.reg; // assigning to final or param registers are semantic errors and assigning to narrow register is invalid
        assignments = [];
    }
    else {
        // invalidate the narrowed binding
        // and use the unnarrowed binding
        unnarrowedReg = <bir:VarRegister>unnarrowedBinding.reg; // assigning to final or param registers are semantic errors and assigning to narrow register is invalid
        assignments = [{ unnarrowedReg: unnarrowedReg.number, narrowedReg: binding.reg.number, pos }];
    }
    return [unnarrowedReg, assignments];
}

function codeGenAssign(StmtContext cx, Environment env, bir:BasicBlock block, bir:VarRegister|bir:FinalRegister result, s:Expr expr, t:SemType semType, Position pos) returns CodeGenError|bir:BasicBlock {
    var { result: operand, block: nextBlock } = check cx.codeGenExpr(block, env, semType, expr);
    bir:AssignInsn insn = { pos, result, operand };
    nextBlock.insns.push(insn);
    return nextBlock;
}

function codeGenLExpr(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:LExpr container) returns CodeGenError|LExprEffect {
    bir:Register reg;
    bir:BasicBlock block;
    if container is s:VarRefExpr {
        reg = (check lookupVarRefBinding(cx, container.name, env, container.startPos)).reg;
        block = startBlock;
    }
    else  {
        bir:Operand containerOperand;
        bir:Operand result;
        { result: containerOperand, block } = check codeGenLExpr(cx, startBlock, env, container.container);
        ExprContext ec = cx.exprContext(env);
        if container is s:FieldAccessLExpr {
            { result, block } = check codeGenFieldAccessExpr(ec, startBlock, container.opPos, containerOperand, container.fieldName);     
        }
        else {
            s:MemberAccessLExpr _ = container;
            { result, block } = check codeGenMemberAccessExpr(ec, startBlock, container.opPos, containerOperand, container.index, fill=true);
        }
        if result !is bir:Register {
            return cx.semanticErr("list or mapping required", s:range(container.container));
        }
        reg = result;

    }
    return { result: reg, block };
}

function codeGenAssignToMember(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:MemberAccessLExpr|s:FieldAccessLExpr lValue, s:Expr expr) returns CodeGenError|StmtEffect {
    var { result: reg, block: block1 } = check codeGenLExpr(cx, startBlock, env, lValue.container);
    t:UniformTypeBitSet indexType;
    if t:isSubtypeSimple(reg.semType, t:MAPPING) {
        indexType = t:STRING;
    } 
    else if t:isSubtypeSimple(reg.semType, t:LIST) {
        indexType = t:INT;      
    }
    else {
        return cx.semanticErr("member access can only be applied to mapping or list", pos=lValue.opPos);
    }
    bir:Operand operand;
    if indexType == t:INT {
        if lValue is s:FieldAccessLExpr {
            return cx.semanticErr("can only apply field access in lvalue to mapping", lValue.opPos);
        }
        else {
            var { result: index, block: nextBlock } = check cx.codeGenExprForInt(block1, env, lValue.index);
            t:SemType memberType = t:listMemberType(cx.mod.tc, reg.semType, index.semType);
            if t:isEmpty(cx.mod.tc, memberType) {
                return cx.semanticErr("index out of range", s:range(lValue.index));
            }
            { result: operand, block: nextBlock } = check cx.codeGenExpr(nextBlock, env, memberType, expr);
            bir:ListSetInsn insn = { operands: [reg, index, operand], pos: lValue.opPos };
            nextBlock.insns.push(insn);
            return { block: nextBlock };
        }
    }
    else {
        var { result: index, block: nextBlock } = check codeGenLExprMappingKey(cx, block1, env, lValue, reg.semType);
        t:SemType memberType = t:mappingMemberType(cx.mod.tc, reg.semType, index.semType);
        { result: operand, block: nextBlock } = check cx.codeGenExpr(nextBlock, env, memberType, expr);
        bir:MappingSetInsn insn =  { operands: [ reg, index, operand], pos: lValue.opPos };
        nextBlock.insns.push(insn);
        return { block: nextBlock };
    }
}

function codeGenLExprMappingKey(StmtContext cx, bir:BasicBlock block, Environment env, s:MemberAccessLExpr|s:FieldAccessLExpr mappingLValue, t:SemType mappingType) returns CodeGenError|StringExprEffect {
    if mappingLValue is s:FieldAccessLExpr {
        string fieldName = mappingLValue.fieldName;
        if !t:mappingMemberRequired(cx.mod.tc, mappingType, t:stringConst(fieldName)) {
            return cx.semanticErr(`${fieldName} must be a required key`, pos=mappingLValue.opPos);
        }
        return { result: singletonStringOperand(cx.mod.tc, fieldName), block };
    }
    else {
        return cx.codeGenExprForString(block, env, mappingLValue.index);
    }
}

function codeGenCompoundAssignStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:CompoundAssignStmt stmt) returns CodeGenError|StmtEffect {
    var { lValue, expr, op, opPos: pos } = stmt;
    if lValue is s:VarRefExpr {
        return codeGenCompoundAssignToVar(cx, startBlock, env, lValue, expr, op, pos);
    }
    else {
        var { result: container, block: nextBlock } = check cx.codeGenExpr(startBlock, env, (), lValue.container);
        if container is bir:Register {
            if t:isSubtypeSimple(container.semType, t:LIST) {
                if lValue is s:FieldAccessLExpr {
                    return cx.semanticErr("can only apply field access in lvalue to mapping", pos=pos);
                }
                else {
                    return codeGenCompoundAssignToListMember(cx, nextBlock, env, lValue, container, expr, op, pos);
                }
            }
            else if t:isSubtypeSimple(container.semType, t:MAPPING) {
                return codeGenCompoundAssignToMappingMember(cx, nextBlock, env, lValue, container, expr, op, pos);
            }
        }
        return cx.semanticErr("can only apply member access in lvalue to list or mapping", pos=pos);
    }
}

function codeGenCompoundAssignToVar(StmtContext cx,
                                    bir:BasicBlock startBlock,
                                    Environment env,
                                    s:VarRefExpr lValue,
                                    s:Expr rexpr,
                                    s:BinaryArithmeticOp|s:BinaryBitwiseOp op,
                                    Position pos) returns CodeGenError|StmtEffect {
    var [result, assignments] = check lookupVarRefForAssign(cx, env, lValue.name, pos);
    var { block: nextBlock, result: operand } = check codeGenCompoundableBinaryExpr(cx.exprContext(env), startBlock, op, pos, result, rexpr);
    bir:AssignInsn insn = { pos, result, operand };
    nextBlock.insns.push(insn);
    return { block: nextBlock, assignments };
}

function codeGenCompoundAssignToListMember(StmtContext cx,
                                           bir:BasicBlock bb,
                                           Environment env,
                                           s:MemberAccessLExpr lValue,
                                           bir:Register list,
                                           s:Expr rexpr,
                                           s:BinaryArithmeticOp|s:BinaryBitwiseOp op,
                                           Position pos) returns CodeGenError|StmtEffect {
    var { result: index, block: nextBlock } = check cx.codeGenExprForInt(bb, env, lValue.index);
    t:SemType memberType = t:listMemberType(cx.mod.tc, list.semType, index.semType);
    if t:isEmpty(cx.mod.tc, memberType) {
        return cx.semanticErr("index out of range", s:range(lValue.index));
    }
    bir:TmpRegister member = cx.createTmpRegister(memberType, lValue.opPos);
    bir:ListGetInsn getInsn = { result: member, operands: [list, index], pos: lValue.opPos };
    nextBlock.insns.push(getInsn);
    var { result, block } = check codeGenCompoundableBinaryExpr(cx.exprContext(env), nextBlock, op, pos, member, rexpr);
    bir:ListSetInsn setInsn = { operands: [list, index, result], pos: lValue.opPos };
    block.insns.push(setInsn);
    return { block };
}

function codeGenCompoundAssignToMappingMember(StmtContext cx,
                                              bir:BasicBlock bb,
                                              Environment env,
                                              s:MemberAccessLExpr|s:FieldAccessLExpr lValue,
                                              bir:Register mapping,
                                              s:Expr rexpr,
                                              s:BinaryArithmeticOp|s:BinaryBitwiseOp op,
                                              Position pos) returns CodeGenError|StmtEffect {
    var { result: k, block: block1 } = check codeGenLExprMappingKey(cx, bb, env, lValue, mapping.semType);
    ExprContext ec = cx.exprContext(env);
    var { result: member, block: block2 } = check codeGenMappingGet(ec, block1, mapping, "[", k, pos);
    var { result, block } = check codeGenCompoundableBinaryExpr(ec, block2, op, pos, member, rexpr);
    bir:MappingSetInsn setInsn = { operands: [ mapping, k, result], pos: lValue.opPos };
    block.insns.push(setInsn);
    return { block };
}

function codeGenCompoundableBinaryExpr(ExprContext ec, bir:BasicBlock bb, s:BinaryArithmeticOp|s:BinaryBitwiseOp op, Position pos, bir:Register member, s:Expr rexpr) returns CodeGenError|ExprEffect {
    if op is s:BinaryArithmeticOp {
        var { result: operand, block: nextBlock } = check codeGenExpr(ec, bb, member.semType, rexpr);
        return codeGenArithmeticBinaryExpr(ec, nextBlock, op, pos, member, operand);
    }
    else {
        var { result: operand, block: nextBlock } = check codeGenExprForInt(ec, bb, rexpr);
        if !t:isSubtypeSimple(member.semType, t:INT) {
            return ec.semanticErr("left operand is not an integer", pos);
        }
        return codeGenBitwiseBinaryExpr(ec, nextBlock, op, pos, member, operand);
    }
}

function codeGenCallStmt(StmtContext cx, bir:BasicBlock startBlock, Environment env, s:CallStmt stmt) returns CodeGenError|StmtEffect {
    bir:Operand result;
    bir:BasicBlock nextBlock;
    ExprContext ec = cx.exprContext(env);
    s:CallExpr expr = stmt.expr;
    if expr is s:FunctionCallExpr {
        { result, block: nextBlock } = check codeGenFunctionCallExpr(ec, startBlock, expr);
    }
    else if expr is s:MethodCallExpr {
        { result, block: nextBlock } = check codeGenMethodCallExpr(ec, startBlock, expr);
    }
    else {
        return codeGenCheckingStmt(cx, startBlock, env, expr.checkingKeyword, expr.operand, expr.kwPos);
    }
    if !t:isSubtype(cx.mod.tc, result.semType, t:NIL) {
        return cx.semanticErr("return type of function or method in call statement must be nil", stmt.startPos);
    }
    return { block: nextBlock };
}

function codeGenCheckingStmt(StmtContext cx, bir:BasicBlock bb, Environment env, s:CheckingKeyword checkingKeyword, s:Expr expr, Position pos) returns CodeGenError|StmtEffect {
    // checking stmt falls into one of : 1) never err 2) always err 3) conditionally err
    var { result: o, block: nextBlock, binding } = check cx.codeGenExpr(bb, env, t:ERROR, expr);
    t:SemType semType = operandSemType(cx.mod.tc, o);
    t:SemType errorType = t:intersect(semType, t:ERROR);
    bir:BasicBlock block;
    t:SemType resultType;
    if t:isNever(errorType) {
        block = nextBlock;
        resultType = semType;
    }
    else {
        bir:Register operand = <bir:Register>o;
        resultType = t:diff(semType, t:ERROR);
        if t:isNever(resultType) {
            codeGenCheckingTerminator(nextBlock, checkingKeyword, operand, pos);
            return { block: () };
        }
        { block, result: _ } = check codeGenCheckingCond(cx.exprContext(env), nextBlock, operand, binding, errorType, checkingKeyword, resultType, pos);
    }
    // resultType === NEVER case is already handled
    if resultType !== t:NIL {
        return cx.semanticErr(`operand of ${checkingKeyword} statement must be a subtype of error?`, pos);
    }
    return { block };
}

function codeGenCheckingCond(ExprContext cx, bir:BasicBlock bb, bir:Register operand, Binding? operandBinding, t:SemType errorType, s:CheckingKeyword checkingKeyword, t:SemType okType, Position pos) returns CodeGenError|RegExprEffect {
    bir:BasicBlock errorBlock = cx.createBasicBlock();
    bir:BasicBlock okBlock = cx.createBasicBlock();
    bir:Register reg = <bir:Register>operand;
    bir:NarrowRegister errorReg = cx.createNarrowRegister(errorType, reg);
    bir:NarrowRegister result = cx.createNarrowRegister(okType, reg);
    bir:TypeBranchInsn insn = {
        operand: operand,
        semType: t:ERROR,
        ifTrue: errorBlock.label,
        ifFalse: okBlock.label,
        pos,
        ifTrueRegister: errorReg,
        ifFalseRegister: result
    };
    bb.insns.push(insn);
    codeGenCheckingTerminator(errorBlock, checkingKeyword, errorReg, pos);
    return { result, block: okBlock };
}

function lookupVarRefBinding(StmtContext cx, string name, Environment env, Position pos) returns Binding|CodeGenError {
    var b = check lookupLocalVarRef(cx, cx.mod, name, env, pos);
    if b is Binding {
        return b;
    }
    else {
        return cx.semanticErr("an lvalue can only refer to a variable definition", pos);
    }
}

function lookupLocalVarRef(err:SemanticContext cx, ModuleSymbols mod, string name, Environment env, Position pos) returns t:SingleValue|Binding|bir:FunctionRef|CodeGenError {
    Binding? binding = envLookup(name, env);
    if binding == () {
        s:ModuleLevelDefn? defn = mod.defns[name];
        if defn == () {
            return cx.semanticErr(`variable ${name} not defined`, pos);
        }
        else if defn is s:ConstDefn {
            return (check resolveConstDefn(mod, defn))[1];
        }
        else if defn is s:FunctionDefn {
            var signature = defn.signature;
            if signature is () {
                // Signature will not be () if we are in a function
                return cx.semanticErr("variable reference in a const cannot refer to a function", pos);
            }
            boolean isPublic = defn.vis == "public";
            bir:InternalSymbol symbol = { identifier: name, isPublic };
            return { symbol, signature, erasedSignature: signature };
        }
        else {
            s:TypeDefn _ = defn;
            // SUBSET typedesc
            // XXX should be unimplementedErr
            return cx.semanticErr(`values of type descriptor type not yet implemented`, pos);
        }
    }
    else {
        return binding;
    }
}

function envLookup(string name, Environment env) returns Binding? {
    Binding? binding = bindingsLookup(name, env);
    if binding != () {
        Binding? unnarrowed = binding.unnarrowed;
        if unnarrowed != () {
            unnarrowed.used = true;
            // This is a narrowed binding
            int num = unnarrowed.reg.number;
            if findAssignmentByUnnarrowedReg(env.assignments, num) != () {
                // This binding has been invalidated by an assignment
                return unnarrowed;
            }
        }
        else {
            binding.used = true;
        }
    }
    return binding;
}

function envDefines(string name, Environment env) returns boolean {
    return bindingsLookup(name, env) != ();
}

function addAssignments(Assignment[] dest, Assignment[] src, int excludeStart) {
    foreach Assignment a in src {
        if a.unnarrowedReg < excludeStart {
            dest.push(a);
        }
    }
}

function findAssignmentByUnnarrowedReg(Assignment[] assignments, int unnarrowedReg) returns int? {
    int index = 0;
    foreach var a in assignments {
        if a.unnarrowedReg == unnarrowedReg {
            return index;
        }
        index += 1;
    }
    return ();
}

function bindingsLookup(string name, Environment env) returns Binding? {
    BindingChain? tem = env.bindings;
    while true {
        if tem == () {
            break;
        }
        else if tem.head.name == name {
            return tem.head;
        }
        else {
            tem = tem.prev;
        }
    }
    return ();
}
