import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type Position d:Position;

type Range d:Range;

type Environment record {|
    Binding? bindings;
    // A list of registers that were narrowed but have been assigned to
    // Holds the number of the original, unnarrowed register
    Assignment[] assignments = [];
|};

type Binding record {|
    string name;
    bir:Register reg;
    boolean isFinal;
    boolean used = false;
    Binding? prev;
    // When this binding represents a narrowing, this refers to the
    // original binding that was not narrowed.
    // In the case of the nested narrowing, this points all the way
    // back to the original explicit binding, not to the previous narrowing.
    Binding? unnarrowed = ();
|};

type Assignment readonly & record {|
    int unnarrowedReg;
    int? narrowedReg;
    Position pos;
|};

type StmtNarrowing record {|
    Binding binding;
    t:SemType ifCompletesNormally;
    bir:Result basis;
|};

type StmtEffect record {|
    bir:BasicBlock? block;
    Binding? bindings = ();
    StmtNarrowing[] narrowings = [];
    Assignment[] assignments = [];
|};

type LExprEffect record {|
    bir:BasicBlock block;
    bir:Register result;
|};

type LoopContext record {|
    // number of first register created in the loop
    int startRegister;
    bir:BasicBlock? onBreak;
    bir:BasicBlock? onContinue;
    LoopContext? enclosing;
    // will use this with while true to determine whether
    // following block is reachable
    boolean breakUsed = false;
    Assignment[] onBreakAssignments = [];
    Assignment[] onContinueAssignments = [];
|};

class CodeGenContext {
    *err:SemanticContext;
    final ModuleSymbols mod;
    final s:SourceFile file;
    final s:FunctionDefn functionDefn;
    final bir:FunctionCode code;
    final t:SemType returnType;
    LoopContext? loopContext = ();

    function init(ModuleSymbols mod, s:FunctionDefn functionDefn, t:SemType returnType) {
        self.mod = mod;
        self.functionDefn = functionDefn;
        self.file = functionDefn.part.file;
        self.code = {};
        self.returnType = returnType;
    }

    function createVarRegister(bir:SemType t, string varName, Position pos) returns bir:Register {
        bir:Register reg = bir:createRegister(self.code, t, varName, pos);
        return reg;
    }

    function createTmpRegister(bir:SemType t, Position? pos = ()) returns bir:Register {
        bir:Register reg = bir:createRegister(self.code, t, (), pos);
        return reg;
    }

    function nextRegisterNumber() returns int {
        return self.code.registers.length();
    }
    function registerVarName(int registerNumber) returns string? {
        return bir:getRegister(self.code, registerNumber).varName;
    }

    function registerPosition(int registerNumber) returns Position? {
        return bir:getRegister(self.code, registerNumber).pos;
    }

    function createBasicBlock(string? name = ()) returns bir:BasicBlock {
        return bir:createBasicBlock(self.code, name);
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

    function pushLoopContext(bir:BasicBlock? onBreak, bir:BasicBlock? onContinue) {
        LoopContext c = { onBreak, onContinue, enclosing: self.loopContext, startRegister: self.nextRegisterNumber()  };
        self.loopContext = c;
    }

    function loopUsedBreak() returns boolean {
        return (<LoopContext>self.loopContext).breakUsed;
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
            c.breakUsed = true;
            return b.label;
        }
    }

    function onContinueLabel(Position pos) returns bir:Label|err:Semantic {
        LoopContext? c = self.loopContext;
        if c == () {
            return self.semanticErr("continue not in loop", pos);
        }
        else {
            bir:BasicBlock b = c.onContinue ?: self.createBasicBlock();
            c.onContinue = b;
            return b.label;
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

    function foldExpr(Environment env, s:Expr expr, t:SemType? expectedType) returns s:Expr|FoldError {
        return foldExpr(new CodeGenFoldContext(self, env), expectedType, expr);
    }

    function resolveTypeDesc(s:TypeDesc td) returns t:SemType|ResolveTypeError {
        return resolveSubsetTypeDesc(self.mod, self.functionDefn, td);
    }

}

function codeGenFunction(ModuleSymbols mod, s:FunctionDefn defn, bir:FunctionSignature signature) returns bir:FunctionCode|CodeGenError {
    CodeGenContext cx = new(mod, defn, signature.returnType);
    bir:BasicBlock startBlock = cx.createBasicBlock();
    Binding? bindings = ();
    foreach int i in 0 ..< defn.params.length() {
        var param = defn.params[i];
        bir:Register reg = cx.createVarRegister(signature.paramTypes[i], param.name, param.namePos);
        bindings = { name: <string>param.name, reg, prev: bindings, isFinal: true };
    }
    var { block: endBlock } = check codeGenScope(cx, startBlock, { bindings }, defn.body);
    if endBlock != () {
        bir:RetInsn ret = { operand: (), pos: defn.body.closeBracePos };
        endBlock.insns.push(ret);
    }
    codeGenOnPanic(cx, defn.body.closeBracePos);
    return cx.code;
}

function codeGenOnPanic(CodeGenContext cx, Position pos) {
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
        bir:Register reg = cx.createTmpRegister(t:ERROR, pos);
        bir:CatchInsn catch = { result: reg, pos };
        onPanicBlock.insns.push(catch);
        onPanicBlock.insns.push(<bir:AbnormalRetInsn>{ operand: reg, pos });
    }
}

// If block of stmts doesn't complete normally, will return empty narrowings and assignments.
function codeGenScope(CodeGenContext cx, bir:BasicBlock bb, Environment initialEnv, s:StmtBlock|s:IfElseStmt scope, StmtNarrowing? initialNarrowing = ()) returns CodeGenError|StmtEffect {
    Environment env = environmentCopy(initialEnv);
    final int startRegister = cx.nextRegisterNumber();
    // SUBSET with && || initialNarrowing will need to become a list
    StmtNarrowing[] narrowings = initialNarrowing != () ? [initialNarrowing] : [];
    // initialNarrowing is processed under the cloned env so the effects of it is confined to the block
    updateAssignments(env, { block: bb, narrowings });
    addNarrowings(cx, bb, env, narrowings, scope.startPos);
    bir:BasicBlock? curBlock = bb;
    if scope is s:IfElseStmt {
        StmtEffect effect = check codeGenIfElseStmt(cx, bb, env, scope);
        curBlock = effect.block;
        applyEffect(env, narrowings, effect);
    }
    else {
        int lastStmtIndex = scope.stmts.length() - 1;
        int stmtIndex = 0;
        foreach var stmt in scope.stmts {
            StmtEffect effect = check codeGenStmt(cx, curBlock, env, stmt);
            curBlock = effect.block;
            applyEffect(env, narrowings, effect);
            // Compound statements will gen narrowings post-block, no need to narrow after last stmt
            if curBlock != () && stmtIndex != lastStmtIndex {
                addNarrowings(cx, curBlock, env, effect.narrowings, stmt.endPos);
            }
            stmtIndex += 1;
        }
    }
    check unusedLocalVariables(cx, env, initialEnv.bindings);
    Assignment[] assignments = [];
    addAssignments(assignments, env.assignments, startRegister);
    return { block: curBlock, assignments, narrowings };
}

function codeGenStmt(CodeGenContext cx, bir:BasicBlock? curBlock, Environment env, s:Stmt stmt) returns CodeGenError|StmtEffect {
    if curBlock == () {
        return cx.semanticErr("unreachable code", s:range(stmt));
    }
    else if stmt is s:IfElseStmt {
        return codeGenIfElseStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:MatchStmt {
        return codeGenMatchStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:WhileStmt {
        return codeGenWhileStmt(cx, curBlock, env, stmt);
    }
    else if stmt is s:ForeachStmt {
        return codeGenForeachStmt(cx, curBlock, env, stmt);
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

function applyEffect(Environment env, StmtNarrowing[] narrowings, StmtEffect effect) {
    Binding? bindings = effect.bindings;
    if bindings != () {
        env.bindings = bindings;
    }
    if effect.block == () {
        env.assignments.setLength(0);
        narrowings.setLength(0);
    }
    else {
        updateAssignments(env, effect);
        addIntersectStmtNarrowings(narrowings, effect.narrowings);
    }
}

function updateAssignments(Environment env, StmtEffect effect) {
    foreach var n in effect.narrowings {
        // Only the first assign to var generates an Assignment (until Assignment is invalidated)
        // So at most one Assignment has to be invalidated
        int? invalidated = findAssignmentByUnnarrowedReg(env.assignments, unnarrowBinding(n.binding).reg.number);
        if invalidated != () {
            _ = env.assignments.remove(invalidated);
        }
    }
    env.assignments.push(...effect.assignments);
}

function unusedLocalVariables(CodeGenContext cx, Environment env, Binding? bindingLimit) returns CodeGenError? {
    Binding? binding = env.bindings;
    while binding !== bindingLimit {
        // binding is non-nil
        Binding tem = <Binding>binding;
        if tem.unnarrowed == () && !tem.used {
            return cx.semanticErr(`unused local variable ${tem.name}`, <Position>tem.reg.pos);
        }
        binding = tem.prev;
    }
}

function environmentCopy(Environment env) returns Environment {
    return { bindings: env.bindings, assignments: env.assignments.clone() };
}

function codeGenForeachStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:ForeachStmt stmt) returns CodeGenError|StmtEffect {
    string varName = stmt.name;
    if lookup(varName, env) !== () {
        return cx.semanticErr(`duplicate declaration of ${varName}`, stmt.namePos);
    }
    s:RangeExpr range = stmt.range;
    var { result: lower, block: evalUpper } = check codeGenExprForInt(cx, startBlock, env, check cx.foldExpr(env, range.lower, t:INT));
    var { result: upper, block: initLoopVar } = check codeGenExprForInt(cx, evalUpper, env, check cx.foldExpr(env, range.upper, t:INT));
    bir:Register loopVar = cx.createVarRegister(t:INT, varName, stmt.namePos);
    bir:AssignInsn init = { pos: stmt.kwPos, result: loopVar, operand: lower };
    initLoopVar.insns.push(init);
    bir:BasicBlock loopHead = cx.createBasicBlock();
    bir:BasicBlock exit = cx.createBasicBlock();
    bir:BranchInsn branchToLoopHead = { dest: loopHead.label, pos: stmt.body.startPos };
    initLoopVar.insns.push(branchToLoopHead);
    bir:Register condition = cx.createTmpRegister(t:BOOLEAN, stmt.range.opPos);
    bir:CompareInsn compare = { op: "<", pos: stmt.range.opPos, operands: [loopVar, upper], result: condition };
    loopHead.insns.push(compare);
    bir:BasicBlock loopBody = cx.createBasicBlock();
    bir:CondBranchInsn branch = { operand: condition, ifFalse: exit.label, ifTrue: loopBody.label, pos: stmt.range.opPos };
    loopHead.insns.push(branch);
    cx.pushLoopContext(exit, ());
    Binding loopBindings = { name: varName, reg: loopVar, prev: env.bindings, isFinal: true };
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
        bir:IntNoPanicArithmeticBinaryInsn increment = { op: "+", pos: stmt.kwPos, operands: [loopVar, 1], result: loopVar };
        loopStep.insns.push(increment);
        loopStep.insns.push(branchToLoopHead);
    }
    cx.popLoopContext();
    // XXX shouldn't we be passing up assignments here
    return { block: exit };
}

function codeGenWhileStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:WhileStmt stmt) returns CodeGenError|StmtEffect {
    bir:BasicBlock loopHead = cx.createBasicBlock(); // where we go to on continue
    bir:BranchInsn branchToLoopHead = { dest: loopHead.label, pos: stmt.body.startPos };
    startBlock.insns.push(branchToLoopHead);
    bir:BasicBlock loopBody = cx.createBasicBlock();
    bir:BasicBlock? exit = ();

    boolean exitReachable = false;
    var { result: condition, block: afterCondition, narrowing: condNarrowing } = check codeGenConditionalExpr(cx, loopHead, env, stmt.condition);
    bir:Insn branch;
    if condition is bir:Register {
        bir:BasicBlock ifFalseBb = cx.createBasicBlock();
        exit = ifFalseBb;
        branch = <bir:CondBranchInsn>{ operand: condition, ifFalse: ifFalseBb.label, ifTrue: loopBody.label, pos: stmt.condition.startPos };
        exitReachable = true;
    }
    else if condition is true {
        branch = <bir:BranchInsn>{ dest: loopBody.label, pos: stmt.body.startPos };
    }
    else if stmt.body.length() == 0 {
        // this is `while false { }`
        // need to put something in loopHead
        bir:BasicBlock destBb = cx.createBasicBlock();
        exit = destBb;
        branch = <bir:BranchInsn> { dest: destBb.label, pos: stmt.body.closeBracePos };
        exitReachable = true;
    }
    else {
        // condition is false and body is non-empty
        return cx.semanticErr("unreachable code", stmt.body.stmts[0].startPos);
    }
    afterCondition.insns.push(branch);
    cx.pushLoopContext(exit, loopHead);
    StmtNarrowing? bodyNarrowing = stmtNarrowingFromExprNarrowing(condNarrowing, true);
    var { block: loopEnd, assignments } = check codeGenScope(cx, loopBody, env, stmt.body, bodyNarrowing);
    if loopEnd != () {
        loopEnd.insns.push(branchToLoopHead);
        check validLoopAssignments(cx, assignments);
    }
    check validLoopAssignments(cx, cx.onContinueAssignments());
    // We won't used these if the exit isn't reachable
    assignments.push(...cx.onContinueAssignments());
    assignments.push(...cx.onBreakAssignments());
    if cx.loopUsedBreak() {
        exitReachable = true;
        exit = cx.loopBreakBlock();
    }
    cx.popLoopContext();
   
    if exitReachable {
        return { block: exit, assignments };
    }
    else {
        return { block: () };
    }
}

function validLoopAssignments(CodeGenContext cx, Assignment[] assignments) returns CodeGenError? {
    foreach Assignment a in assignments {
        int? narrowedReg = a.narrowedReg;
        // Despite of `loopStartRegister` being calculated after the conditional, assignment to vars narrowed in the conditional work
        // because narrowings for the conditional are actually generated as the first thing in the block, not in the conditional itself.
        if narrowedReg != () && narrowedReg < cx.loopStartRegister() {
            return cx.semanticErr(`assignment to narrowed variable ${<string>cx.registerVarName(narrowedReg)} in loop`, a.pos);
        }
    }
}

function codeGenBreakContinueStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:BreakContinueStmt stmt) returns CodeGenError|StmtEffect {
    bir:Label dest = stmt.breakContinue == "break"? check cx.onBreakLabel(stmt.startPos) : check cx.onContinueLabel(stmt.startPos);
    bir:BranchInsn branch = { dest, pos: stmt.startPos };
    startBlock.insns.push(branch);
    if stmt.breakContinue == "break" {
        cx.addOnBreakAssignments(env.assignments);
    }
    else {
        cx.addOnContinueAssignments(env.assignments);
    }
    return { block: () };
}

type MatchTest EqualMatchTest|UniformTypeMatchTest;

type EqualMatchTest record {|
    int clauseIndex;
    Position pos;
    readonly t:SingleValue value;
|};

type UniformTypeMatchTest record {|
    int clauseIndex;
    Position pos;
    t:UniformTypeBitSet bitSet;
|};

function codeGenMatchStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:MatchStmt stmt) returns CodeGenError|StmtEffect {
    Assignment[] assignments = [];
    var { result: matched, block: testBlock, binding } = check codeGenExpr(cx, startBlock, env, check cx.foldExpr(env, stmt.expr, ()));
    t:Context tc = cx.mod.tc;
    // JBUG #33303 need parentheses
    t:SemType matchedType = matched is bir:Register ? (matched.semType) : t:singleton(tc, matched);
    // defaultCodeIndex is either () or the index of the last clause;
    // the latter case means that the match is exhaustive
    int? defaultClauseIndex = ();
    boolean hadWildcardPattern = false;
    table<EqualMatchTest> key(value) equalMatchTests = table [];
    MatchTest[] matchTests = [];
    t:SemType[] clauseLooksLike = [];
    bir:InsnRef[][] clauseTestInsns = [];
    // union of all clause patterns preceding this one
    t:SemType precedingPatternsUnion = t:NEVER;
    bir:BasicBlock[] clauseBlocks = [];

    foreach int i in 0 ..< stmt.clauses.length() {
        var clause = stmt.clauses[i];
        clauseTestInsns[i] = [];
        clauseBlocks[i] = cx.createBasicBlock("clause." + i.toString());
        t:SemType clausePatternUnion = t:NEVER;
        foreach var pattern in clause.patterns {
            t:SemType patternType;
            if pattern is s:SimpleConstExpr {
                t:SingleValue value = check resolveConstMatchPattern(cx, env, pattern, matchedType);
                if equalMatchTests.hasKey(value) {
                    return cx.semanticErr("duplicate const match pattern", pos=s:range(pattern));
                }
                EqualMatchTest mt = { value, clauseIndex: i, pos: clause.opPos };
                equalMatchTests.add(mt);    
                if !t:containsConst(matchedType, value) {
                    return cx.semanticErr("match pattern cannot match value of expression", pos=s:range(pattern));
                }
                matchTests.push(mt);
                patternType = t:singleton(tc, value);
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
        if t:isSubtype(cx.mod.tc, matchedType, precedingPatternsUnion) {
            if i != stmt.clauses.length() - 1 {
                return cx.semanticErr("match clause unmatchable because of previous wildcard match pattern", pos=s:range(stmt.clauses[i + 1]));
            }
            defaultClauseIndex = i;
        }
    }

    int patternIndex = 0;
    foreach var mt in matchTests {
        int clauseIndex = mt.clauseIndex;
        if clauseIndex == defaultClauseIndex {
            break;
        }
        bir:Register testResult = cx.createTmpRegister(t:BOOLEAN, mt.pos);
        if mt is EqualMatchTest {
            bir:EqualityInsn eq = { op: "==", pos: mt.pos, result: testResult, operands: [matched, mt.value] };
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
        clauseTestInsns[clauseIndex].push(bir:lastInsnRef(testBlock));
        bir:BasicBlock nextBlock = cx.createBasicBlock("pattern." + patternIndex.toString());
        patternIndex += 1;
        bir:CondBranchInsn condBranch = { operand: testResult, ifTrue: clauseBlocks[clauseIndex].label, ifFalse: nextBlock.label, pos: mt.pos } ;
        testBlock.insns.push(condBranch);
        testBlock = nextBlock;
    }
    bir:BasicBlock? contBlock = ();
    foreach int clauseIndex in 0 ..< stmt.clauses.length() {
        s:MatchClause clause = stmt.clauses[clauseIndex];
        bir:BasicBlock stmtBlock = clauseBlocks[clauseIndex];
        StmtNarrowing? narrowings = ();
        Environment clauseEnv = env;
        // Do type narrowing
        if binding != () {
            bir:Result? basis = ();
            if clauseIndex == defaultClauseIndex {
                bir:Result[] and = [];
                foreach int i in 0 ..< clauseIndex {
                    foreach var insn in clauseTestInsns[i] {
                        and.push({ result: false, insn });
                    }
                }
                // Degenerate case may have empty results
                if and.length() > 0 {
                    basis = { and: and.cloneReadOnly() };
                }
            }
            else {
                bir:Result[] or = [];
                foreach var insn in clauseTestInsns[clauseIndex] {
                    or.push({ result: true, insn });
                }
                basis = { or: or.cloneReadOnly() };
            }
            if basis != () {
                // Will need readOnlyIntersect when we have proper match patterns
                t:SemType narrowedType = t:intersect(matchedType, clauseLooksLike[clauseIndex]);
                narrowings = { basis, ifCompletesNormally: narrowedType, binding };
            }
        } 
        var { block: stmtBlockEnd, assignments: blockAssignments } = check codeGenScope(cx, stmtBlock, clauseEnv, clause.block, narrowings);
        if stmtBlockEnd == () {
            continue;
        }
        else {
            bir:BasicBlock b = maybeCreateBasicBlock(cx, contBlock);
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
        bir:BasicBlock b = maybeCreateBasicBlock(cx, contBlock);
        contBlock = b;
        Position endPos = stmt.clauses.length() > 0 ? (stmt.clauses[stmt.clauses.length()-1].block.closeBracePos) : stmt.startPos;
        bir:BranchInsn branch = { dest: b.label, pos: endPos };
        testBlock.insns.push(branch);
    }
    return { block: contBlock, assignments };
}

function resolveConstMatchPattern(CodeGenContext cx, Environment env, s:SimpleConstExpr expr, t:SemType? expectedType) returns t:SingleValue|FoldError {
    s:Expr foldedExpr = check cx.foldExpr(env, expr, expectedType);
    if foldedExpr is s:ConstValueExpr {
        return foldedExpr.value;
    }
    return cx.semanticErr(`match pattern is not constant`, s:range(expr));
}

function maybeCreateBasicBlock(CodeGenContext cx, bir:BasicBlock? block) returns bir:BasicBlock {
    if block == () {
        return cx.createBasicBlock();
    }
    else {
        return block;
    }
}

function codeGenIfElseStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:IfElseStmt stmt) returns CodeGenError|StmtEffect {
    var { condition, ifTrue, ifFalse } = stmt;
    var { result: operand, block: branchBlock, narrowing: condNarrowing } = check codeGenConditionalExpr(cx, startBlock, env, condition);
    if operand is boolean {
        s:StmtBlock|s:IfElseStmt? taken;
        s:StmtBlock|s:IfElseStmt? notTaken;
        if operand {
            taken = ifTrue;
            notTaken = ifFalse;
        }
        else {
            taken = ifFalse;
            notTaken = ifTrue;
        }
        s:Stmt? errStmt = firstStmt(notTaken);
        if errStmt != () {
            return cx.semanticErr("unreachable code", s:range(errStmt));
        }
        if taken != () {
            return codeGenScope(cx, branchBlock, env, taken);
        }
        else {
            // if false whithout else block
            return { block: branchBlock };
        }
    }
    else {
        bir:BasicBlock ifBlock = cx.createBasicBlock();
        StmtNarrowing? condIfNarrowing = stmtNarrowingFromExprNarrowing(condNarrowing, true);
        var { block: ifContBlock, assignments, narrowings: ifNarrowings } = check codeGenScope(cx, ifBlock, env, ifTrue, condIfNarrowing);
        bir:BasicBlock contBlock;
        if ifFalse == () {
            // just an if branch
            contBlock = cx.createBasicBlock();
            bir:CondBranchInsn condBranch = { operand, ifTrue: ifBlock.label, ifFalse: contBlock.label, pos: stmt.condition.startPos };
            branchBlock.insns.push(condBranch);
            if ifContBlock != () {
                bir:BranchInsn branch = { dest: contBlock.label, pos: stmt.condition.startPos };
                ifContBlock.insns.push(branch);
            }
            StmtNarrowing? elseNarrowings = stmtNarrowingFromExprNarrowing(condNarrowing, false);
            StmtNarrowing[] narrowings = combineIfElseNarrowings(ifNarrowings, ifContBlock != (), elseNarrowings != () ? [elseNarrowings] : [], true);
            return { block: contBlock, assignments, narrowings };
        }
        else {
            // an if and an else
            bir:BasicBlock elseBlock = cx.createBasicBlock();
            StmtNarrowing? condElseNarrowing = stmtNarrowingFromExprNarrowing(condNarrowing, false);
            var { block: elseContBlock, assignments: elseAssignments, narrowings: elseNarrowings } = check codeGenScope(cx, elseBlock, env, ifFalse, condElseNarrowing);
            bir:CondBranchInsn condBranch = { operand, ifTrue: ifBlock.label, ifFalse: elseBlock.label, pos: stmt.condition.startPos };
            branchBlock.insns.push(condBranch);
            if ifContBlock == () && elseContBlock == () {
                // e.g. both arms have a return
                return { block: () };
            }
            contBlock = cx.createBasicBlock();
            Position joinPos = (ifFalse is s:StmtBlock ? ifFalse : ifFalse.ifTrue).closeBracePos;
            bir:BranchInsn branch = { dest: contBlock.label, pos: joinPos };
            if ifContBlock != () {
                ifContBlock.insns.push(branch);
            }
            if elseContBlock != () {
                elseContBlock.insns.push(branch);
            }
            assignments.push(...elseAssignments);
            StmtNarrowing[] narrowings = combineIfElseNarrowings(ifNarrowings, ifContBlock != (), elseNarrowings, elseContBlock != ());
            return { block: contBlock, assignments, narrowings };
        }
    }
}

function firstStmt(s:StmtBlock|s:IfElseStmt? s) returns s:Stmt? {
    if s is s:IfElseStmt {
        return firstStmt(s.ifTrue) ?: firstStmt(s.ifFalse);
    }
    else if s is s:StmtBlock {
        if s.stmts.length() > 0 {
            return s.stmts[0];
        }
    }
    return ();
}

function combineIfElseNarrowings(StmtNarrowing[] ifNarrowings, boolean ifCompletes, StmtNarrowing[] elseNarrowings, boolean elseCompletes) returns StmtNarrowing[] {
    readonly & [boolean, boolean] pair = [ifCompletes, elseCompletes];
    match pair {
        [true, true] => {
            return unionStmtNarrowings(ifNarrowings, elseNarrowings);
        }
        [true, false] => {
            return ifNarrowings;
        }
        [false, true] => {
            return elseNarrowings;
        }
    }
    // JBUG this should be the [false, false] case of above match
    return [];
}

// Union narrowings exist in both lists, drop others
function unionStmtNarrowings(StmtNarrowing[] snl1, StmtNarrowing[] snl2) returns StmtNarrowing[] {
    StmtNarrowing[] result = [];
    foreach var sn1 in snl1 {
        foreach var sn2 in snl2 {
            if sn1.binding.name == sn2.binding.name {
                result.push({
                    basis: { or: [sn1.basis, sn2.basis] },
                    binding: sn1.binding,
                    ifCompletesNormally: t:union(sn1.ifCompletesNormally, sn2.ifCompletesNormally)
                });
                break;
            }
        }
    }
    return result;
}

// Modifies dest. If already exists in dest, intersect, else append.
function addIntersectStmtNarrowings(StmtNarrowing[] dest, StmtNarrowing[] src) {
    foreach var s in src {
        boolean added = false;
        foreach int i in 0 ..< dest.length() {
            StmtNarrowing d = dest[i];
            if s.binding.name == d.binding.name {
                dest[i] = {
                    basis: { and: [s.basis, d.basis] },
                    binding: s.binding,
                    // Due to folding, lexically successive one (lets say `s`) is always a subtype. So this is same as s.ifCompletesNormally
                    ifCompletesNormally: t:intersect(s.ifCompletesNormally, d.ifCompletesNormally)
                };
                added = true;
                break;
            }
        }
        if !added {
            dest.push(s);
        }
    }
}

function stmtNarrowingFromExprNarrowing(ExprNarrowing? narrowing, boolean condition) returns StmtNarrowing? {
    if narrowing == () {
        return ();
    }
    else {
        boolean insnResult = condition == !narrowing.negated;
        // JBUG #33303 without parentheses this gets a parse error
        t:SemType narrowedType = insnResult ? (narrowing.ifTrue) : narrowing.ifFalse;
        if narrowedType === t:NEVER {
            panic err:impossible("narrowed to never type");
        }
        bir:Result basis = { insn: narrowing.testInsn, result: insnResult };
        return { basis, binding: narrowing.binding, ifCompletesNormally: narrowedType };
    }
}

function addNarrowings(CodeGenContext cx, bir:BasicBlock bb, Environment env, StmtNarrowing[] narrowings, Position pos) {
    foreach var { ifCompletesNormally, binding, basis } in narrowings {
        bir:Register narrowed = cx.createVarRegister(ifCompletesNormally, binding.name, pos);
        bir:CondNarrowInsn insn = {
            result: narrowed,
            operand: binding.reg,
            basis,
            pos
        };
        bb.insns.push(insn);
        env.bindings = {
            name: binding.name,
            reg: narrowed,
            isFinal: binding.isFinal,
            prev: env.bindings,
            unnarrowed: unnarrowBinding(binding)
        };
    }
}

function unnarrowBinding(Binding binding) returns Binding {
    Binding? unnarrowed = binding.unnarrowed;
    return  unnarrowed == () ? binding : unnarrowed;
}

function codeGenReturnStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:ReturnStmt stmt) returns CodeGenError|StmtEffect {
    var { returnExpr } = stmt;
    bir:BasicBlock nextBlock;
    bir:Operand operand;
    if returnExpr is s:Expr {
        { result: operand, block: nextBlock } = check codeGenExpr(cx, startBlock, env, check cx.foldExpr(env, returnExpr, cx.returnType));
    }
    else {
        operand = ();
        nextBlock = startBlock;
    }
    bir:RetInsn insn = { operand, pos: stmt.kwPos };
    nextBlock.insns.push(insn);
    return { block: () };
}

function codeGenPanicStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:PanicStmt stmt) returns CodeGenError|StmtEffect {
    var { panicExpr } = stmt;
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, startBlock, env, check cx.foldExpr(env, panicExpr, t:ERROR));
    if operand is bir:Register {
        bir:PanicInsn insn = { operand, pos: stmt.kwPos };
        nextBlock.insns.push(insn);
        return { block: () };
    }
    else {
        return cx.semanticErr("argument to error must be a string", stmt.startPos);
    }
}

function codeGenVarDeclStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:VarDeclStmt stmt) returns CodeGenError|StmtEffect {
    var { name, namePos, initExpr, td, isFinal } = stmt;
    if name is s:WILDCARD {
        return codeGenWildcardDeclStmt(cx, startBlock, env, initExpr, td, stmt.opPos);
    }
    else {
        if lookup(name, env) !== () {
            return cx.semanticErr(`duplicate declaration of ${name}`, namePos);
        }
        t:SemType semType = check cx.resolveTypeDesc(td);
        bir:Register result = cx.createVarRegister(semType, name, namePos);
        bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, result, initExpr, semType, stmt.opPos);
        return { block: nextBlock, bindings: { name, reg: result, prev: env.bindings, isFinal } };  
    }
}

function codeGenWildcardDeclStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:Expr expr, s:TypeDesc td, Position pos) returns CodeGenError|StmtEffect {
    t:SemType semType = check cx.resolveTypeDesc(td);
    if !t:isSubtype(cx.mod.tc, semType, t:ANY) {
        return cx.semanticErr("type descriptor of wildcard should be a subtype of any", pos);
    }
    bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, cx.createVarRegister(semType, "_", pos), expr, semType, pos);
    return { block: nextBlock };
}

function codeGenAssignStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:AssignStmt stmt) returns CodeGenError|StmtEffect {
    var { lValue, expr } = stmt;
    if lValue is s:VarRefExpr {
        return codeGenAssignToVar(cx, startBlock, env, lValue.name, expr, stmt.opPos);
    }
    else if lValue is s:WILDCARD {
        bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, cx.createVarRegister(t:ANY, "_", stmt.opPos), expr, t:ANY, stmt.opPos);
        return { block: nextBlock };
    }
    else {
        return codeGenAssignToMember(cx, startBlock, env, lValue, expr);
    }
}

function codeGenAssignToVar(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, string varName, s:Expr expr, Position pos) returns CodeGenError|StmtEffect {
    var [unnarrowedReg, assignments] = check lookupVarRefForAssign(cx, env, varName, pos);
    bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, unnarrowedReg, expr, unnarrowedReg.semType, pos);
    return { block: nextBlock, assignments };
}

function lookupVarRefForAssign(CodeGenContext cx, Environment env, string varName, Position pos) returns CodeGenError|[bir:Register, Assignment[]] {
    Binding binding = check lookupVarRefBinding(cx, varName, env, pos);
    if binding.isFinal {
        return cx.semanticErr(`cannot assign to ${varName}`, pos);
    }
    bir:Register unnarrowedReg;
    Assignment[] assignments;
    Binding? unnarrowedBinding = binding.unnarrowed;
    if unnarrowedBinding == () {
        // no narrowed binding in effect
        unnarrowedReg = binding.reg;
        assignments = [];
    }
    else {
        // invalidate the narrowed binding
        // and use the unnarrowed binding
        unnarrowedReg = unnarrowedBinding.reg;
        assignments = [{ unnarrowedReg: unnarrowedReg.number, narrowedReg: binding.reg.number, pos }];
    }
    return [unnarrowedReg, assignments];
}

function codeGenAssign(CodeGenContext cx, Environment env, bir:BasicBlock block, bir:Register result, s:Expr expr, t:SemType semType, Position pos) returns CodeGenError|bir:BasicBlock {
    s:Expr foldedExpr = check cx.foldExpr(env, expr, semType);
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, block, env, foldedExpr);
    bir:AssignInsn insn = { pos, result, operand };
    nextBlock.insns.push(insn);
    return nextBlock;
}

function codeGenLExpr(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:LExpr container) returns CodeGenError|LExprEffect {
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
        if container is s:FieldAccessLExpr {
            { result, block } = check codeGenFieldAccessExpr(cx, startBlock, env, container.opPos, containerOperand, container.fieldName);
            
        }
        else {
            s:MemberAccessLExpr _ = container;
            { result, block } = check codeGenMemberAccessExpr(cx, startBlock, env, container.opPos, containerOperand, container.index, fill=true);
        }
        if result !is bir:Register {
            return cx.semanticErr("list or mapping required", s:range(container.container));
        }
        reg = result;

    }
    return { result: reg, block };
}

function codeGenAssignToMember(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:MemberAccessLExpr|s:FieldAccessLExpr lValue, s:Expr expr) returns CodeGenError|StmtEffect {
    var { result: reg, block: block1 } = check codeGenLExpr(cx, startBlock, env, lValue.container);
    t:UniformTypeBitSet indexType;
    t:SemType memberType;
    if t:isSubtypeSimple(reg.semType, t:MAPPING) {
        indexType = t:STRING;
        memberType = t:mappingMemberType(cx.mod.tc, reg.semType);
    } 
    else if t:isSubtypeSimple(reg.semType, t:LIST) {
        indexType = t:INT;
        memberType = t:listMemberType(cx.mod.tc, reg.semType);
    }
    else {
        return cx.semanticErr("member access can only be applied to mapping or list", pos=lValue.opPos);
    }
    s:Expr foldedExpr = check cx.foldExpr(env, expr, memberType);
    bir:Operand operand;
    if indexType == t:INT {
        if lValue is s:FieldAccessLExpr {
            return cx.semanticErr("can only apply field access in lvalue to mapping", lValue.opPos);
        }
        else {
            var { result: index, block: nextBlock } = check codeGenExprForInt(cx, block1, env, check cx.foldExpr(env, lValue.index, indexType));
            { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, foldedExpr);
            bir:ListSetInsn insn = { operands: [reg, index, operand], pos: lValue.opPos };
            nextBlock.insns.push(insn);
            return { block: nextBlock };
        }
    }
    else {
        var { result: index, block: nextBlock } = check codeGenLExprMappingKey(cx, block1, env, lValue, reg.semType);
        { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, foldedExpr);
        bir:MappingSetInsn insn =  { operands: [ reg, index, operand], pos: lValue.opPos };
        nextBlock.insns.push(insn);
        return { block: nextBlock };
    }
}

function codeGenLExprMappingKey(CodeGenContext cx, bir:BasicBlock block, Environment env, s:MemberAccessLExpr|s:FieldAccessLExpr mappingLValue, t:SemType mappingType) returns CodeGenError|StringExprEffect {
    if mappingLValue is s:FieldAccessLExpr {
        string fieldName = mappingLValue.fieldName;
        if !t:mappingMemberRequired(cx.mod.tc, mappingType, fieldName) {
            return cx.semanticErr(`${fieldName} must be a required key`, pos=mappingLValue.opPos);
        }
        return { result: fieldName, block };
    }
    else {
        return codeGenExprForString(cx, block, env, check cx.foldExpr(env, mappingLValue.index, t:STRING));
    }
}

function codeGenCompoundAssignStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:CompoundAssignStmt stmt) returns CodeGenError|StmtEffect {
    var { lValue, expr, op, opPos: pos } = stmt;
    if lValue is s:VarRefExpr {
        return codeGenCompoundAssignToVar(cx, startBlock, env, lValue, expr, op, pos);
    }
    else {
        var { result: container, block: nextBlock } = check codeGenExpr(cx, startBlock, env, check cx.foldExpr(env, lValue.container, ()));
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

function codeGenCompoundAssignToVar(CodeGenContext cx,
                                    bir:BasicBlock startBlock,
                                    Environment env,
                                    s:VarRefExpr lValue,
                                    s:Expr rexpr,
                                    s:BinaryArithmeticOp|s:BinaryBitwiseOp op,
                                    Position pos) returns CodeGenError|StmtEffect {
    var [result, assignments] = check lookupVarRefForAssign(cx, env, lValue.name, pos);
    var { block: nextBlock, result: operand } = check codeGenCompoundableBinaryExpr(cx, startBlock, env, op, pos, result, rexpr);
    bir:AssignInsn insn = { pos, result, operand };
    nextBlock.insns.push(insn);
    return { block: nextBlock, assignments };
}

function codeGenCompoundAssignToListMember(CodeGenContext cx,
                                           bir:BasicBlock bb,
                                           Environment env,
                                           s:MemberAccessLExpr lValue,
                                           bir:Register list,
                                           s:Expr rexpr,
                                           s:BinaryArithmeticOp|s:BinaryBitwiseOp op,
                                           Position pos) returns CodeGenError|StmtEffect {
    var { result: index, block: nextBlock } = check codeGenExprForInt(cx, bb, env, check cx.foldExpr(env, lValue.index, t:INT));
    t:SemType memberType = t:listMemberType(cx.mod.tc, list.semType, index is int ? index : ());
    if t:isEmpty(cx.mod.tc, memberType) {
        return cx.semanticErr("type of member access is never", pos);
    }
    bir:Register member = cx.createTmpRegister(memberType, lValue.opPos);
    bir:ListGetInsn getInsn = { result: member, operands: [list, index], pos: lValue.opPos };
    nextBlock.insns.push(getInsn);
    var { result, block } = check codeGenCompoundableBinaryExpr(cx, nextBlock, env, op, pos, member, rexpr);
    bir:ListSetInsn setInsn = { operands: [list, index, result], pos: lValue.opPos };
    block.insns.push(setInsn);
    return { block };
}

function codeGenCompoundAssignToMappingMember(CodeGenContext cx,
                                              bir:BasicBlock bb,
                                              Environment env,
                                              s:MemberAccessLExpr|s:FieldAccessLExpr lValue,
                                              bir:Register mapping,
                                              s:Expr rexpr,
                                              s:BinaryArithmeticOp|s:BinaryBitwiseOp op,
                                              Position pos) returns CodeGenError|StmtEffect {
    var { result: k, block: block1 } = check codeGenLExprMappingKey(cx, bb, env, lValue, mapping.semType);
    var { result: member, block: block2 } = check codeGenMappingGet(cx, block1, mapping, "[", k, pos);
    var { result, block } = check codeGenCompoundableBinaryExpr(cx, block2, env, op, pos, member, rexpr);
    bir:MappingSetInsn setInsn = { operands:[ mapping, k, result], pos: lValue.opPos };
    block.insns.push(setInsn);
    return { block };
}

function codeGenCompoundableBinaryExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:BinaryArithmeticOp|s:BinaryBitwiseOp op, Position pos, bir:Register member, s:Expr rexpr) returns CodeGenError|ExprEffect {
    t:SemType memberType = member.semType;
    s:Expr folded = check cx.foldExpr(env, rexpr, memberType);
    if op is s:BinaryArithmeticOp {
        var { result: operand, block: nextBlock } = check codeGenExpr(cx, bb, env, folded);
        return codeGenArithmeticBinaryExpr(cx, nextBlock, op, pos, member, operand);
    }
    else {
        var { result: operand, block: nextBlock } = check codeGenExprForInt(cx, bb, env, folded);
        return codeGenBitwiseBinaryExpr(cx, nextBlock, op, pos, member, operand);
    }
}

function codeGenCallStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:CallStmt stmt) returns CodeGenError|StmtEffect {
    bir:Operand result;
    bir:BasicBlock nextBlock;
    s:CallExpr expr = stmt.expr;
    if expr is s:FunctionCallExpr {
        { result, block: nextBlock } = check codeGenFunctionCall(cx, startBlock, env, expr);
    }
    else if expr is s:MethodCallExpr {
        { result, block: nextBlock } = check codeGenMethodCall(cx, startBlock, env, expr);
    }
    else {
        return codeGenCheckingStmt(cx, startBlock, env, expr.checkingKeyword, expr.operand, expr.kwPos);
    }
    if result != () {
        return cx.semanticErr("return type of function or method in call statement must be nil", stmt.startPos);
    }
    return { block: nextBlock };
}

function codeGenConditionalExpr(CodeGenContext cx, bir:BasicBlock block, Environment env, s:Expr expr) returns CodeGenError|BooleanExprEffect {
    return codeGenExprForBoolean(cx, block, env,  check cx.foldExpr(env, expr, t:BOOLEAN));
}