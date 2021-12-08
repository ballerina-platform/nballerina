import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type Position d:Position;

type Environment record {|
    Binding? bindings;
    // A list of registers that were narrowed but have been assigned to
    // Holds the number of the original, unnarrowed register
    int[] assignments = [];
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

type StmtEffect record {|
    bir:BasicBlock? block;
    Binding? bindings = ();
    int[] assignments = [];
|};

type ExprEffect record {|
    bir:BasicBlock block;
    bir:Operand result;
    // This is non-nil when the expression is a boolean expression that case causes the type
    // of a variable to be narrowed when the expression is used as a condition.
    // We do not have `&&` and `||` yet, so only one variable is narrowed.
    Narrowing? narrowing = ();
    // This is non-nil when the expression is a variable reference.
    Binding? binding = ();
|};

type BooleanExprEffect record {|
    *ExprEffect;
    bir:BooleanOperand result;
|};

type IntExprEffect record {|
    *ExprEffect;
    bir:IntOperand result;
|};

type StringExprEffect record {|
    *ExprEffect;
    bir:StringOperand result;
|};

type RegExprEffect record {|
    *ExprEffect;
    bir:Register result;
|};

// This describes the narrowing of the type of a variable
// caused by the use of a boolean expression in a condition.
type Narrowing record {|
    Binding binding;
    t:SemType ifTrue;
    t:SemType ifFalse;
    bir:InsnRef testInsn;
    boolean negated = false;
|};

type CodeGenError err:Semantic|err:Unimplemented;

type LoopContext record {|
    // number of first register created in the loop
    int startRegister;
    bir:BasicBlock onBreak;
    bir:BasicBlock? onContinue;
    LoopContext? enclosing;
    // will use this with while true to determine whether
    // following block is reachable
    boolean breakUsed = false;
    int[] onBreakAssignments = [];
    int[] onContinueAssignments = [];
|};

type OrderTypeMemo record {|
    readonly t:SemType semType;
    bir:OrderType? orderType = ();
|};

class CodeGenContext {
    final ModuleSymbols mod;
    final s:SourceFile file;
    final s:FunctionDefn functionDefn;
    final bir:FunctionCode code;
    final t:SemType returnType;
    final table<OrderTypeMemo> key(semType) orderTypeMemo = table[];
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

    function semanticErr(d:Message msg, Position pos, error? cause = ()) returns err:Semantic {
        return err:semantic(msg, loc=self.location(pos), cause=cause, defnName=self.functionDefn.name);
    }

    function unimplementedErr(d:Message msg, Position pos, error? cause = ()) returns err:Unimplemented {
        return err:unimplemented(msg, loc=self.location(pos), cause=cause, defnName=self.functionDefn.name);
    }

    private function location(Position pos) returns d:Location {
        return d:location(self.file, pos);
    }

    function pushLoopContext(bir:BasicBlock onBreak, bir:BasicBlock? onContinue) {
        LoopContext c = { onBreak, onContinue, enclosing: self.loopContext, startRegister: self.nextRegisterNumber()  };
        self.loopContext = c;
    }

    function loopUsedBreak() returns boolean {
        return (<LoopContext>self.loopContext).breakUsed;
    }

    function loopContinueBlock() returns bir:BasicBlock? {
        return (<LoopContext>self.loopContext).onContinue;
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
            c.breakUsed = true;
            return c.onBreak.label;
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

    function addOnBreakAssignments(int[] assignments) {
        if assignments.length() == 0 {
            return;
        }
        LoopContext c = <LoopContext>self.loopContext;
        addAssignments(c.onBreakAssignments, assignments, c.startRegister);
    }

    function addOnContinueAssignments(int[] assignments) {
        if assignments.length() == 0 {
            return;
        }
        LoopContext c = <LoopContext>self.loopContext;
        addAssignments(c.onContinueAssignments, assignments, c.startRegister);
    }

    function onBreakAssignments() returns int[] {
        return  (<LoopContext>self.loopContext).onBreakAssignments;
    }

    function onContinueAssignments() returns int[] {
        return  (<LoopContext>self.loopContext).onContinueAssignments;
    }

    function foldExpr(Environment env, s:Expr expr, t:SemType? expectedType) returns s:Expr|FoldError {
        return foldExpr(new CodeGenFoldContext(self, env), expectedType, expr);
    }

    function resolveTypeDesc(s:TypeDesc td) returns t:SemType|ResolveTypeError {
        return resolveSubsetTypeDesc(self.mod, self.functionDefn, td);
    }
}

class CodeGenFoldContext {
    *FoldContext;
    final CodeGenContext cx;
    final Environment env;

    function init(CodeGenContext cx, Environment env) {
        self.cx = cx;
        self.env = env;
    }

    function lookupConst(string? prefix, string varName, Position pos) returns s:FLOAT_ZERO|t:Value?|FoldError {
        if prefix != () {
            return lookupImportedConst(self.cx.mod, self.cx.functionDefn, prefix, varName);
        }
        t:Value|Binding v = check lookupVarRef(self.cx, varName, self.env, pos);
        if v is Binding {
            t:Value? shape = t:singleShape(v.reg.semType);
            if shape != () && shape.value == s:FLOAT_ZERO {
                return s:FLOAT_ZERO;
            }
            return shape;
        }
        else {
            return v;
        }
    }

    function semanticErr(d:Message msg, Position pos, error? cause = ()) returns err:Semantic {
        return self.cx.semanticErr(msg, pos=pos, cause=cause);
    }

    function typeContext() returns t:Context {
        return self.cx.mod.tc;
    }

    function resolveTypeDesc(s:TypeDesc td) returns ResolveTypeError|t:SemType {
        return self.cx.resolveTypeDesc(td);
    }

    function isConstDefn() returns boolean => false;
}

function addAssignments(int[] dest, int[] src, int excludeStart) {
    foreach int r in src {
        if r < excludeStart {
            dest.push(r);
        }
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
    var { block: endBlock } = check codeGenStmts(cx, startBlock, { bindings }, defn.body);
    if endBlock != () {
        bir:RetInsn ret = { operand: (), pos: defn.endPos };
        endBlock.insns.push(ret);
    }
    codeGenOnPanic(cx, defn.endPos);
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

function codeGenStmts(CodeGenContext cx, bir:BasicBlock bb, Environment initialEnv, s:StmtBlock block) returns CodeGenError|StmtEffect {
    bir:BasicBlock? curBlock = bb;
    Environment env = environmentCopy(initialEnv);
    final int startRegister = cx.nextRegisterNumber();
    foreach var stmt in block.stmts {
        StmtEffect effect;
        if curBlock == () {
            return cx.semanticErr("unreachable code", stmt.startPos);
        }
        else if stmt is s:IfElseStmt {
            effect = check codeGenIfElseStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:MatchStmt {
            effect = check codeGenMatchStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:WhileStmt {
            effect = check codeGenWhileStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:ForeachStmt {
            effect = check codeGenForeachStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:BreakContinueStmt {
            effect = check codeGenBreakContinueStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:ReturnStmt {
            effect = check codeGenReturnStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:PanicStmt {
            effect = check codeGenPanicStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:VarDeclStmt {
            effect = check codeGenVarDeclStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:AssignStmt {
            effect = check codeGenAssignStmt(cx, curBlock, env, stmt);
        }
        else if stmt is s:CompoundAssignStmt {
            effect = check codeGenCompoundAssignStmt(cx, curBlock, env, stmt);
        }
        else {
            effect = check codeGenCallStmt(cx, curBlock, env, stmt);
        }
        curBlock = effect.block;
        Binding? bindings = effect.bindings;
        if bindings != () {
            env.bindings = bindings;
        }
        if curBlock == () {
            env.assignments.setLength(0);
        }
        else {
            env.assignments.push(...effect.assignments);
        }
    }                
    check unusedLocalVariables(cx, env, initialEnv.bindings);
    int[] assignments = [];
    addAssignments(assignments, env.assignments, startRegister);
    return { block: curBlock, assignments };
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
    bir:CompareInsn compare = { op: "<", pos: stmt.range.opPos, orderType: t:UT_INT, operands: [loopVar, upper], result: condition };
    loopHead.insns.push(compare);
    bir:BasicBlock loopBody = cx.createBasicBlock();
    bir:CondBranchInsn branch = { operand: condition, ifFalse: exit.label, ifTrue: loopBody.label, pos: stmt.range.opPos };
    loopHead.insns.push(branch);
    cx.pushLoopContext(exit, ());
    Binding loopBindings = { name: varName, reg: loopVar, prev: env.bindings, isFinal: true };
    var { block: loopEnd, assignments } = check codeGenStmts(cx, loopBody, { bindings: loopBindings }, stmt.body);

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
    bir:BasicBlock exit = cx.createBasicBlock();

    boolean exitReachable = false;
    var { result: condition, block: afterCondition } = check codeGenConditionalExpr(cx, loopHead, env, stmt.condition);
    bir:Insn branch;
    if condition is bir:Register {
        branch = <bir:CondBranchInsn>{ operand: condition, ifFalse: exit.label, ifTrue: loopBody.label, pos: stmt.condition.startPos };
        exitReachable = true;
    }
    else if condition is true {
        branch = <bir:BranchInsn>{ dest: loopBody.label, pos: stmt.body.startPos };
    }
    else if stmt.body.length() == 0 {
        // this is `while false { }`
        // need to put something in loopHead
        branch = <bir:BranchInsn> { dest: exit.label, pos: stmt.body.endPos };
        exitReachable = true;
    }
    else {
        // condition is false and body is non-empty
        return cx.semanticErr("unreachable code", stmt.body.stmts[0].startPos);
    }
    afterCondition.insns.push(branch);
    cx.pushLoopContext(exit, loopHead);
    var { block: loopEnd, assignments } = check codeGenStmts(cx, loopBody, env, stmt.body);
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
    }
    cx.popLoopContext();
   
    if exitReachable {
        return { block: exit, assignments };
    }
    else {
        return { block: () };
    }
}

function validLoopAssignments(CodeGenContext cx, int[] assignments) returns CodeGenError? {
    foreach int r in assignments {
        if r < cx.loopStartRegister() {
            return cx.semanticErr(`assignment to narrowed variable ${<string>cx.registerVarName(r)} in loop`, <Position>cx.registerPosition(r));
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

type ConstMatchValue record {|
    readonly SimpleConst value;
    readonly int clauseIndex;
    readonly Position pos;
|};

function codeGenMatchStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:MatchStmt stmt) returns CodeGenError|StmtEffect {
    int[] assignments = [];
    var { result: matched, block: testBlock, binding } = check codeGenExpr(cx, startBlock, env, check cx.foldExpr(env, stmt.expr, ()));
    // JBUG #33303 need parentheses
    t:SemType matchedType = matched is bir:Register ? (matched.semType) : t:singleton(matched);
    // we enforce that the wildcardClauseIndex is either () or the index of the last clause
    int? wildcardClauseIndex = ();
    table<ConstMatchValue> key(value) constMatchValues = table[];
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
            if pattern is s:ConstPattern {
                if wildcardClauseIndex != () && i > wildcardClauseIndex {
                    return cx.semanticErr("match pattern unmatchable because of previous wildcard match pattern", pos=pattern.pos);
                }
                s:Expr patternExpr = pattern.expr;
                s:ConstValueExpr cv = <s:ConstValueExpr> check cx.foldExpr(env, patternExpr, matchedType);
                ConstMatchValue mv = { value: cv.value, clauseIndex: i, pos: clause.opPos };
                if constMatchValues.hasKey(mv.value) {
                    return cx.semanticErr("duplicate const match pattern", pos=pattern.pos);
                }
                constMatchValues.add(mv);    
                if !t:containsConst(matchedType, cv.value) {
                    return cx.semanticErr("match pattern cannot match value of expression", pos=pattern.pos);
                }
                clausePatternUnion = t:union(clausePatternUnion, t:singleton(mv.value));
            }
            else {
                // `1|_ => {}` is pointless, but I'm not making it an error
                // because a later pattern that overlaps an earlier one is not in general an error
                if wildcardClauseIndex != () {
                    return cx.semanticErr("duplicate wildcard match pattern", clause.startPos);
                }
                wildcardClauseIndex = i;
                clausePatternUnion = t:ANY;
            }
        }
        clauseLooksLike[i] = t:diff(clausePatternUnion, precedingPatternsUnion);
        precedingPatternsUnion = t:union(precedingPatternsUnion, clausePatternUnion);
    }

    int patternIndex = 0;
    foreach var mv in constMatchValues {
        int clauseIndex = mv.clauseIndex;
        if clauseIndex == wildcardClauseIndex {
            break;
        }
        bir:Register testResult = cx.createTmpRegister(t:BOOLEAN, mv.pos);
        bir:EqualityInsn eq = { op: "==", pos: mv.pos, result: testResult, operands: [matched, mv.value] };
        testBlock.insns.push(eq);
        clauseTestInsns[clauseIndex].push(bir:lastInsnRef(testBlock));
        bir:BasicBlock nextBlock = cx.createBasicBlock("pattern." + patternIndex.toString());
        patternIndex += 1;
        bir:CondBranchInsn condBranch = { operand: testResult, ifTrue: clauseBlocks[clauseIndex].label, ifFalse: nextBlock.label, pos: mv.pos } ;
        testBlock.insns.push(condBranch);
        testBlock = nextBlock;
    }
    bir:BasicBlock? contBlock = ();
    foreach int clauseIndex in 0 ..< stmt.clauses.length() {
        s:MatchClause clause = stmt.clauses[clauseIndex];
        bir:BasicBlock stmtBlock = clauseBlocks[clauseIndex];
        Environment clauseEnv = env;
        // Do type narrowing
        if binding != () {
            bir:Result? basis = ();
            if clauseIndex == wildcardClauseIndex {
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
                clauseEnv = codeGenNarrowing(cx, stmtBlock, env, binding, narrowedType, basis, clause.opPos);
            }
        } 
        var { block: stmtBlockEnd, assignments: blockAssignments } = check codeGenStmts(cx, stmtBlock, clauseEnv, clause.block);
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
    if wildcardClauseIndex != () {
        bir:BranchInsn branch = { dest: clauseBlocks[wildcardClauseIndex].label, pos: stmt.clauses[wildcardClauseIndex].startPos };
        testBlock.insns.push(branch);
        if contBlock == () {
            // all the clauses have a return or similar
            return { block: () };
        }
    }
    else {
        bir:BasicBlock b = maybeCreateBasicBlock(cx, contBlock);
        contBlock = b;
        bir:BranchInsn branch = { dest: b.label, pos: stmt.endPos };
        testBlock.insns.push(branch);
    }
    return { block: contBlock, assignments };
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
    var { result: operand, block: branchBlock, narrowing } = check codeGenConditionalExpr(cx, startBlock, env, condition);
    if operand is boolean {
        s:StmtBlock? taken;
        s:StmtBlock? notTaken;
        if operand {
            taken = ifTrue;
            notTaken = ifFalse;
        }
        else {
            taken = ifFalse;
            notTaken = ifTrue;
        }
        if notTaken is s:StmtBlock && notTaken.stmts.length() > 0 {
            // XXX position should come from first member of notTaken
            s:Stmt firstStmt = notTaken.stmts[0];
            Position errPos;
            if firstStmt is s:IfElseStmt {
                errPos = firstStmt.ifTrue.stmts[0].startPos;
            }
            else {
                errPos = notTaken.stmts[0].startPos;
            }
            return cx.semanticErr("unreachable code", errPos);
        }
        if taken is s:StmtBlock {
            return codeGenStmts(cx, branchBlock, env, taken);
        }
        else {
            // if false whithout else block
            return { block: branchBlock };
        }
    }
    else {
        bir:BasicBlock ifBlock = cx.createBasicBlock();
        Environment ifEnv = narrowing == () ? env : codeGenIfElseNarrowing(cx, ifBlock, env, narrowing, true, stmt.condition.startPos);
        var { block: ifContBlock, assignments } = check codeGenStmts(cx, ifBlock, ifEnv, ifTrue);
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
            return { block: contBlock, assignments };    
        }
        else {
            // an if and an else
            bir:BasicBlock elseBlock = cx.createBasicBlock();
            Environment elseEnv = narrowing == () ? env : codeGenIfElseNarrowing(cx, elseBlock, env, narrowing, false, stmt.condition.startPos);
            var { block: elseContBlock, assignments: elseAssignments } = check codeGenStmts(cx, elseBlock, elseEnv, ifFalse);
            bir:CondBranchInsn condBranch = { operand, ifTrue: ifBlock.label, ifFalse: elseBlock.label, pos: stmt.condition.startPos };
            branchBlock.insns.push(condBranch);
            if ifContBlock == () && elseContBlock == () {
                // e.g. both arms have a return
                return { block: () };
            }
            contBlock = cx.createBasicBlock();
            bir:BranchInsn branch = { dest: contBlock.label, pos: stmt.endPos };
            if ifContBlock != () {
                ifContBlock.insns.push(branch);
            }
            if elseContBlock != () {
                elseContBlock.insns.push(branch);
                assignments.push(...elseAssignments);
            }
            return { block: contBlock, assignments };
        }
    }
}

function codeGenIfElseNarrowing(CodeGenContext cx, bir:BasicBlock bb, Environment env, Narrowing narrowing, boolean condition, Position pos) returns Environment {
    boolean insnResult = condition == !narrowing.negated;
    // JBUG #33303 without parentheses this gets a parse error
    t:SemType narrowedType = insnResult ? (narrowing.ifTrue) : narrowing.ifFalse;
    if narrowedType === t:NEVER {
        panic err:impossible("narrowed to never type");
    }
    return codeGenNarrowing(cx, bb, env, narrowing.binding, narrowedType, { insn: narrowing.testInsn, result: insnResult }, pos);
}

function codeGenNarrowing(CodeGenContext cx, bir:BasicBlock bb, Environment env, Binding binding, t:SemType narrowedType, bir:Result basis, Position pos) returns Environment {
    bir:Register narrowed = cx.createVarRegister(narrowedType, binding.name, pos);
    bir:CondNarrowInsn insn = {
        result: narrowed,
        operand: binding.reg,
        basis,
        pos
    };
    bb.insns.push(insn);
    Binding bindings = {
        name: binding.name,
        reg: narrowed,
        isFinal: binding.isFinal,
        prev: env.bindings,
        unnarrowed: unnarrowBinding(binding)
    };
    return { bindings, assignments: env.assignments };
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
    Binding binding = check lookupVarRefBinding(cx, varName, env, pos);
    if binding.isFinal {
        return cx.semanticErr(`cannot assign to ${varName}`, pos);
    }
    bir:Register unnarrowedReg;
    int[] assignments;
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
        assignments = [ unnarrowedReg.number ];
    }
    bir:BasicBlock nextBlock = check codeGenAssign(cx, env, startBlock, unnarrowedReg, expr, unnarrowedReg.semType, pos);
    return { block: nextBlock, assignments };
}

function codeGenAssign(CodeGenContext cx, Environment env, bir:BasicBlock block, bir:Register result, s:Expr expr, t:SemType semType, Position pos) returns CodeGenError|bir:BasicBlock {
    s:Expr foldedExpr = check cx.foldExpr(env, expr, semType);
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, block, env, foldedExpr);
    bir:AssignInsn insn = { pos, result, operand };
    nextBlock.insns.push(insn);
    return nextBlock;
}

function codeGenAssignToMember(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:MemberAccessLExpr|s:FieldAccessLExpr lValue, s:Expr expr) returns CodeGenError|StmtEffect {
    bir:Register reg = (check lookupVarRefBinding(cx, lValue.container.name, env, lValue.opPos)).reg;
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
            var { result: index, block: nextBlock } = check codeGenExprForInt(cx, startBlock, env, check cx.foldExpr(env, lValue.index, indexType));
            { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, foldedExpr);
            bir:ListSetInsn insn = { operands: [reg, index, operand], pos: lValue.opPos };
            nextBlock.insns.push(insn);
            return { block: nextBlock };
        }
    }
    else {
        var { result: index, block: nextBlock } = check codeGenLExprMappingKey(cx, startBlock, env, lValue, reg.semType);
        { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, foldedExpr);
        bir:MappingSetInsn insn =  { operands: [ reg, index, operand], pos: lValue.opPos };
        nextBlock.insns.push(insn);
        return { block: nextBlock };
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
    s:Expr expr;
    Position startPos = rexpr.startPos;
    Position endPos = rexpr.endPos;
    if op is s:BinaryArithmeticOp {
        expr = { startPos, endPos, opPos: pos, arithmeticOp: op, left: lValue, right: rexpr };
    }
    else {
        expr = { startPos, endPos, opPos: pos, bitwiseOp: op, left: lValue, right: rexpr };
    }
    return codeGenAssignToVar(cx, startBlock, env, lValue.name, expr, pos);
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
        return check codeGenArithmeticBinaryExpr(cx, nextBlock, op, pos, member, operand);
    }
    else {
        var { result: operand, block: nextBlock } = check codeGenExprForInt(cx, bb, env, folded);
        return codeGenBitwiseBinaryExpr(cx, nextBlock, op, pos, member, operand);
    }
}

function codeGenCallStmt(CodeGenContext cx, bir:BasicBlock startBlock, Environment env, s:CallStmt stmt) returns CodeGenError|StmtEffect {
    bir:Register reg;
    bir:BasicBlock nextBlock;
    s:CallExpr expr = stmt.expr;
    if expr is s:FunctionCallExpr {
        { result: reg, block: nextBlock } = check codeGenFunctionCall(cx, startBlock, env, expr);
    }
    else if expr is s:MethodCallExpr {
        { result: reg, block: nextBlock } = check codeGenMethodCall(cx, startBlock, env, expr);
    }
    else {
        return check codeGenCheckingStmt(cx, startBlock, env, expr.checkingKeyword, expr.operand, expr.kwPos);
    }
    if reg.semType !== t:NIL {
        return cx.semanticErr("return type of function or method in call statement must be nil", stmt.startPos);
    }
    return { block: nextBlock };
}

function codeGenConditionalExpr(CodeGenContext cx, bir:BasicBlock block, Environment env, s:Expr expr) returns CodeGenError|BooleanExprEffect {
    return codeGenExprForBoolean(cx, block, env,  check cx.foldExpr(env, expr, t:BOOLEAN));
}

function codeGenExprForBoolean(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|BooleanExprEffect {
    var { result, block, narrowing } = check codeGenExpr(cx, bb, env, expr);
    if result is bir:BooleanOperand {
        // rest of the type checking is in the verifier
        return { result, block, narrowing };
    }
    return cx.semanticErr("expected boolean operand", expr.startPos);
}

function codeGenExprForInt(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|IntExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, env, expr);
    if result is bir:IntOperand {
        // rest of the type checking is in the verifier
        return { result, block };
    }
    return cx.semanticErr("expected integer operand", expr.startPos);
}

function codeGenExprForString(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|StringExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, env, expr);
    if result is bir:StringOperand {
        // rest of the type checking is in the verifier
        return { result, block };
    }
    return cx.semanticErr("expected string operand", expr.startPos);
}

function codeGenExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|ExprEffect {
    match expr {
        var { opPos: pos, arithmeticOp: op, left, right } => {
            var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, env, right);
            // We evaluate the operands here, so we can reuse the function for compound assignment.
            return codeGenArithmeticBinaryExpr(cx, nextBlock, op, pos, l, r);
        }
        // Negation
        { opPos: var pos, op: "-",  operand: var o } => {
            var { result: operand, block: nextBlock } = check codeGenExpr(cx, bb, env, o);
            TypedOperand? typed = typedOperand(operand);
            bir:Register result;
            bir:Insn insn;
            if typed is ["int", bir:IntOperand] {
                result = cx.createTmpRegister(t:INT, pos);
                insn = <bir:IntArithmeticBinaryInsn> { op: "-", pos, operands: [0, typed[1]], result };
            }
            else if typed is ["float", bir:FloatOperand] {
                result = cx.createTmpRegister(t:FLOAT, pos);
                insn = <bir:FloatNegateInsn> { operand: <bir:Register>typed[1], result, pos };
            }
            else {
                return cx.semanticErr(`operand of ${"-"} must be int or float`, pos);
            }
            nextBlock.insns.push(insn);
            return { result, block: nextBlock };
        }
        // Bitwise complement
        { opPos: var pos, op: "~",  operand: var o } => {
            var { result: operand, block: nextBlock } = check codeGenExprForInt(cx, bb, env, o);
            bir:Register result = cx.createTmpRegister(t:INT, pos);
            bir:IntBitwiseBinaryInsn insn = { op: "^", pos, operands: [-1, operand], result };
            nextBlock.insns.push(insn);
            return { result, block: nextBlock };
        }
        { opPos: var pos, op: "!",  operand: var o } => {
            var { result: operand, block: nextBlock, narrowing } = check codeGenExprForBoolean(cx, bb, env, o);
            // Should have been resolved during constant folding
            bir:Register reg = <bir:Register>operand;
            bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);
            bir:BooleanNotInsn insn = { operand: reg, result, pos };
            nextBlock.insns.push(insn);
            if narrowing != () {
                narrowing.negated = !narrowing.negated;
            }
            return { result, block: nextBlock, narrowing };
        }
        var { checkingKeyword, operand, kwPos: pos } => {
            return codeGenCheckingExpr(cx, bb, env, checkingKeyword, operand, pos);
        }
        var { opPos: pos, bitwiseOp: op, left, right } => {
            var { result: l, block: block1} = check codeGenExprForInt(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExprForInt(cx, block1, env, right);
            // We evaluate the operands here, so we can reuse the function for compound assignment.
            return codeGenBitwiseBinaryExpr(cx, nextBlock, op, pos, l, r);
        }
        var { opPos: pos, equalityOp: op, left, right } => {
            return codeGenEquality(cx, bb, env, op, pos, left, right);
        }
        var { opPos: pos, relationalOp: op, left, right } => {
            bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);
            var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, env, right);
            bir:OrderType? ot = operandPairOrderType(cx, l, r);
            if ot != () {
                bir:CompareInsn insn = { op, pos, orderType: ot, operands: [l, r], result };
                nextBlock.insns.push(insn);
                return { result, block: nextBlock };
            }
            else {
                return cx.semanticErr("operands of relational operator do not belong to an ordered type", pos);
            }
        }
        var { td: _, operand: _ } => {
            // JBUG #31782 cast needed
            return codeGenTypeCast(cx, bb, env, <s:TypeCastExpr>expr);
        }
        // Type test
        var { td, left, negated, kwPos:pos } => {
            return codeGenTypeTest(cx, bb, env, td, left, negated, pos);
        }
        // Variable reference
        // JBUG #33309 does not work as match pattern
        var ref if ref is s:VarRefExpr => {
            return codeGenVarRefExpr(cx, ref, env, bb);
        }
        // Constant
        // JBUG #33309 does not work as match pattern `var { value, multiSemType }`
        var cvExpr if cvExpr is s:ConstValueExpr => {
            return codeGenConstValue(cx, bb, env, cvExpr);
        }
        var floatZeroExpr if floatZeroExpr is s:FloatZeroExpr => {
            return codeGenExpr(cx, bb, env, floatZeroExpr.expr);
        }
        // Function/method call
        var callExpr if callExpr is (s:FunctionCallExpr|s:MethodCallExpr) => {
            if callExpr is s:FunctionCallExpr {
                return codeGenFunctionCall(cx, bb, env, callExpr);
            }
            else {
                return codeGenMethodCall(cx, bb, env, callExpr);
            }
        }
        // Member access E[i]
        var { container, index, opPos: pos } => {
            // Do constant folding here since these expressions are not allowed in const definitions
            var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, check cx.foldExpr(env, container, ()));
            if l is bir:Register {
                if t:isSubtypeSimple(l.semType, t:LIST) {
                    var { result: r, block: nextBlock } = check codeGenExprForInt(cx, block1, env, check cx.foldExpr(env, index, t:INT));
                    t:SemType memberType = t:listMemberType(cx.mod.tc, l.semType, r is int ? r : ());
                    if t:isEmpty(cx.mod.tc, memberType) {
                        return cx.semanticErr("type of member access is never", pos);
                    }
                    bir:Register result = cx.createTmpRegister(memberType, pos);
                    bir:ListGetInsn insn = { result, operands: [l, r], pos };
                    nextBlock.insns.push(insn);
                    return { result, block: nextBlock };
                }
                else if t:isSubtypeSimple(l.semType, t:MAPPING) {
                    var { result: r, block: nextBlock } = check codeGenExprForString(cx, block1, env, check cx.foldExpr(env, index, t:STRING));
                    return codeGenMappingGet(cx, nextBlock, l, "[", r, pos);
                }
                else if t:isSubtypeSimple(l.semType, t:STRING) {
                    return cx.unimplementedErr("not implemented: member access on string", pos=pos);
                }
            }
            return cx.semanticErr("can only apply member access to list or mapping", pos=pos);
        }
        // Field access
        var { container, fieldName, opPos: pos } => {
            var { result: l, block: nextBlock } = check codeGenExpr(cx, bb, env, check cx.foldExpr(env, container, ()));
            if l is bir:Register && t:isSubtypeSimple(l.semType, t:MAPPING)  {
                return codeGenMappingGet(cx, nextBlock, l, ".", fieldName, pos);
            }
            return cx.semanticErr("can only apply field access to mapping", pos=pos);
        }
        // List construct
        // JBUG #33309 should be able to use just `var { members }`
        var listConstructorExpr if listConstructorExpr is s:ListConstructorExpr => {
            return codeGenListConstructor(cx, bb, env, listConstructorExpr);  
        }
        // Mapping construct
        var mappingConstructorExpr if mappingConstructorExpr is s:MappingConstructorExpr  => {
            return codeGenMappingConstructor(cx, bb, env, mappingConstructorExpr);  
        }
        // Error construct
        var { message, kwPos: pos } => {
            return codeGenErrorConstructor(cx, bb, env, message, pos);
        }
        var { digits } => {
            panic err:impossible(`failed to fold int literal ${digits}`);
        }
    }
    panic err:impossible("unrecognized expression type in code gen: " +  s:exprToString(expr));
}

type MappingAccessType "."|"[";

// if accessType is ".", k must be a string
function codeGenMappingGet(CodeGenContext cx, bir:BasicBlock block, bir:Register mapping, MappingAccessType accessType, bir:StringOperand k, Position pos) returns CodeGenError|RegExprEffect {
    string? kVal = k is string ? k : ();
    boolean keyRequired = false;
    if kVal != () {
        if t:mappingMemberRequired(cx.mod.tc, mapping.semType, kVal) {
            keyRequired = true;
        }
        else if accessType == "." {
            return cx.semanticErr(`field access to ${kVal} is invalid because field may not be present`, pos=pos);
        }
    }
    t:SemType memberType = t:mappingMemberType(cx.mod.tc, mapping.semType, kVal);
    if !keyRequired {
        memberType = t:union(memberType, t:NIL);
    }
    bir:Register result = cx.createTmpRegister(memberType, pos);
    bir:MappingGetInsn insn = { result, operands: [mapping, k], pos };
    block.insns.push(insn);
    return { result, block };
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

function codeGenArithmeticBinaryExpr(CodeGenContext cx, bir:BasicBlock bb, bir:ArithmeticBinaryOp op, Position pos, bir:Operand lhs, bir:Operand rhs) returns CodeGenError|ExprEffect {
    TypedOperandPair? pair = typedOperandPair(lhs, rhs);
    bir:Register result;
    if pair is IntOperandPair {
        result = cx.createTmpRegister(t:INT, pos);
        bir:IntArithmeticBinaryInsn insn = { op, pos, operands: pair[1], result };
        bb.insns.push(insn);
    }
    else if pair is FloatOperandPair {
        result = cx.createTmpRegister(t:FLOAT, pos);
        bir:FloatArithmeticBinaryInsn insn = { op, pos, operands: pair[1], result };
        bb.insns.push(insn);
    }
    else if pair is StringOperandPair && op == "+" {
        result = cx.createTmpRegister(t:STRING, pos);
        bir:StringConcatInsn insn = { operands: pair[1], result, pos };
        bb.insns.push(insn);
    }
    else {
        return cx.semanticErr(`${op} not supported for operand types`, pos);
    }
    return { result, block: bb };
}

function codeGenBitwiseBinaryExpr(CodeGenContext cx, bir:BasicBlock bb, s:BinaryBitwiseOp op, Position pos, bir:IntOperand lhs, bir:IntOperand rhs) returns CodeGenError|ExprEffect {
    t:SemType lt = bitwiseOperandType(lhs);
    t:SemType rt = bitwiseOperandType(rhs);
    t:SemType resultType = op == "&" ? t:intersect(lt, rt) : t:union(lt, rt);
    bir:Register result = cx.createTmpRegister(resultType, pos);
    bir:IntBitwiseBinaryInsn insn = { op, pos, operands: [lhs, rhs], result };
    bb.insns.push(insn);
    return { result, block: bb };
}

function codeGenListConstructor(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:ListConstructorExpr expr) returns CodeGenError|ExprEffect {
    bir:BasicBlock nextBlock = bb;
    bir:Operand[] operands = [];
    foreach var member in expr.members {
        bir:Operand operand;
        { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, member);
        operands.push(operand);
    }
    t:SemType resultType = <t:SemType>expr.expectedType;
    if t:isEmpty(cx.mod.tc, resultType) {
        return cx.semanticErr("list now allowed in this context", expr.startPos);
    }
    bir:Register result = cx.createTmpRegister(resultType, expr.opPos);
    bir:ListConstructInsn insn = { operands: operands.cloneReadOnly(), result, pos: expr.opPos };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenMappingConstructor(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:MappingConstructorExpr expr) returns CodeGenError|ExprEffect {
    t:SemType resultType = <t:SemType>expr.expectedType;
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(cx.mod.tc, resultType);
    if mat is () {
        return cx.semanticErr("mapping not allowed in this context", expr.startPos);
    }
    bir:BasicBlock nextBlock = bb;
    bir:Operand[] operands = [];
    string[] fieldNames = [];
    map<Position> fieldPos = {};
    foreach s:Field f in expr.fields {
        string name = f.name;
        Position? prevPos = fieldPos[name];
        if prevPos != () {
            return cx.semanticErr(`duplicate field ${name}`, pos=f.startPos);
        }
        fieldPos[name] = f.startPos;
        if mat.names.indexOf(name) == () {
            if mat.rest == t:NEVER {
                return cx.semanticErr(`type does not allow field named ${name}`, pos=f.startPos);
            }
            else if f.isIdentifier && mat.names.length() > 0 {
                return cx.semanticErr(`field name must be in double quotes since it is not an individual field in the type`, pos=f.startPos);
            }
        }
        bir:Operand operand;
        { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, env, f.value);
        operands.push(operand);
        fieldNames.push(name);
    }
    bir:Register result = cx.createTmpRegister(resultType, expr.opPos);
    bir:MappingConstructInsn insn = { fieldNames: fieldNames.cloneReadOnly(), operands: operands.cloneReadOnly(), result, pos: expr.opPos };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenErrorConstructor(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr message, Position pos) returns CodeGenError|ExprEffect {
    s:Expr folded = check cx.foldExpr(env, message, t:STRING);
    var { result: operand, block } = check codeGenExprForString(cx, bb, env, folded);
    bir:Register result = cx.createTmpRegister(t:ERROR, pos);
    bir:ErrorConstructInsn insn = { result, operand, pos };
    block.insns.push(insn);
    return { result, block };
}

function codeGenConstValue(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:ConstValueExpr cvExpr) returns CodeGenError|ExprEffect {
    t:SemType? multiSemType = cvExpr.multiSemType;
    SimpleConst value = cvExpr.value;
    if multiSemType == () {
        return { result: value, block: bb };
    }
    else {
        bir:Register reg = cx.createTmpRegister(multiSemType, cvExpr.startPos);
        bir:AssignInsn insn = { operand: value, result: reg, pos: cvExpr.startPos };
        bb.insns.push(insn);
        return { result: reg, block: bb };
    }
}

function codeGenEquality(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:BinaryEqualityOp op, Position pos, s:Expr left, s:Expr right) returns CodeGenError|ExprEffect {
    bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);
    var { result: l, block: block1, binding: lBinding } = check codeGenExpr(cx, bb, env, left);
    var { result: r, block: nextBlock, binding: rBinding } = check codeGenExpr(cx, block1, env, right);
    // Type checking is done in the verifier
    bir:EqualityInsn insn = { op, pos, operands: [l, r], result };
    nextBlock.insns.push(insn);
    [Binding, SimpleConst]? narrowingCompare = ();
    if op is ("=="|"!=") {
        if lBinding is Binding && r is SimpleConst {
            narrowingCompare = [lBinding, r];
        }
        else if rBinding is Binding && l is SimpleConst {
            narrowingCompare = [rBinding, l];
        }
    }
    if narrowingCompare == () {
        return { result, block: nextBlock };
    }
    else {
        var [binding, value] = narrowingCompare;
        t:SemType ifTrue = t:singleton(value);
        t:SemType ifFalse = t:roDiff(cx.mod.tc, binding.reg.semType, ifTrue);
        if (<string>op).startsWith("!") {
            [ifTrue, ifFalse] = [ifFalse, ifTrue];
        }
        Narrowing narrowing = {
            binding,
            ifTrue,
            ifFalse,
            testInsn: bir:lastInsnRef(nextBlock),
            negated: false
        };
        return { result, block: nextBlock, narrowing };
    }
}

function codeGenVarRefExpr(CodeGenContext cx, s:VarRefExpr ref, Environment env, bir:BasicBlock bb) returns CodeGenError|ExprEffect {
    if ref.prefix != () {
        // This should be caught during const folding
        panic err:impossible("prefix in var ref is non-nil");
    }
    var v = check lookupVarRef(cx, ref.name, env, ref.startPos);
    bir:Operand result;
    Binding? binding;
    if v is t:Value {
        result = v.value;
        binding = ();
    }
    else {
        result = v.reg;
        binding = v;
    }
    return { result, block: bb, binding };
}

function codeGenTypeCast(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:TypeCastExpr tcExpr) returns CodeGenError|ExprEffect {
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, bb, env, tcExpr.operand);
    var reg = <bir:Register>operand; // const folding should have got rid of the const
    t:SemType toType = check cx.resolveTypeDesc(tcExpr.td);
    t:UniformTypeBitSet? toNumType = t:singleNumericType(toType);
    if toNumType != () && !t:isSubtypeSimple(t:intersect(reg.semType, t:NUMBER), toNumType) {
        toType = t:diff(toType, t:diff(t:NUMBER, toNumType));

        bir:Register result = cx.createTmpRegister(t:union(t:diff(reg.semType, t:NUMBER), toNumType), tcExpr.opPos);
        if toNumType == t:INT {
            bir:ConvertToIntInsn insn = { operand: reg, result, pos: tcExpr.opPos };
            nextBlock.insns.push(insn);
        }
        else if toNumType == t:FLOAT {
            bir:ConvertToFloatInsn insn = { operand: reg, result, pos: tcExpr.opPos };
            nextBlock.insns.push(insn);
        }
        else {
            panic err:impossible("convert to decimal");
        }
        reg = result;
    }
    if t:isSubtype(cx.mod.tc, reg.semType, toType) {
        // it's redundant, so we can remove it
        return { result: reg, block: nextBlock };
    }
    t:SemType resultType = t:intersect(reg.semType, toType);
    bir:Register result = cx.createTmpRegister(resultType, tcExpr.opPos);
    bir:TypeCastInsn insn = { operand: reg, semType: toType, pos: tcExpr.opPos, result };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenTypeTest(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:TypeDesc td, s:Expr left, boolean negated, Position pos) returns CodeGenError|ExprEffect {
    t:SemType semType = check cx.resolveTypeDesc(td);
    var { result: operand, block: nextBlock, binding } = check codeGenExpr(cx, bb, env, left);
    // Constants should be resolved during constant folding
    bir:Register reg = <bir:Register>operand;        
    t:SemType diff = t:roDiff(cx.mod.tc, reg.semType, semType);
    if t:isEmpty(cx.mod.tc, diff) {
        return { result: !negated, block: bb };
    }
    t:SemType intersect;
    if t:isSubtype(cx.mod.tc, semType, reg.semType) {
        intersect = semType;
    }
    else {
        intersect = t:intersect(reg.semType, semType);
    }
    if t:isEmpty(cx.mod.tc, intersect) {
        return { result: negated, block: bb };
    }
    bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);
    bir:TypeTestInsn insn = { operand: reg, semType, result, negated, pos };
    nextBlock.insns.push(insn);
    if negated {
        [intersect, diff] = [diff, intersect];
    }
    Narrowing? narrowing = ();
    if binding != () {
        narrowing = {
            binding,
            ifTrue: intersect,
            ifFalse: diff,
            testInsn: bir:lastInsnRef(nextBlock)
        };
    }
    return { result, block: nextBlock, narrowing };   
}

function codeGenCheckingStmt(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:CheckingKeyword checkingKeyword, s:Expr expr, Position pos) returns CodeGenError|StmtEffect {
    // checking stmt falls into one of : 1) never err 2) always err 3) conditionally err
    var { result: o, block: nextBlock } = check codeGenExpr(cx, bb, env, expr);
    // Constants should be resolved during constant folding
    bir:Register operand = <bir:Register>o;
    t:SemType errorType =  t:intersect(operand.semType, t:ERROR);
    bir:BasicBlock block;
    t:SemType resultType;
    if t:isNever(errorType) {
        block = nextBlock;
        resultType = operand.semType;
    }
    else {
        resultType = t:diff(operand.semType, t:ERROR);
        if t:isNever(resultType) {
            codeGenCheckingTerminator(nextBlock, checkingKeyword, operand, pos);
            return { block: () };
        }
        { block, result: _ } = check codeGenCheckingCond(cx, nextBlock, operand, errorType, checkingKeyword, resultType, pos);
    }
    // resultType === NEVER case is already handled
    if resultType !== t:NIL {
        return cx.semanticErr(`operand of ${checkingKeyword} statement must be a subtype of error?`, pos);
    }
    return { block };
}

function codeGenCheckingExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:CheckingKeyword checkingKeyword, s:Expr expr, Position pos) returns CodeGenError|RegExprEffect {
    // Checking stmt falls into one of : 1) never err 2) conditionally err
    var { result: o, block: nextBlock } = check codeGenExpr(cx, bb, env, expr);
    // Constants should be resolved during constant folding
    bir:Register operand = <bir:Register>o;
    t:SemType errorType =  t:intersect(operand.semType, t:ERROR);
    if t:isNever(errorType) {
        return { result: operand, block: nextBlock };
    }
    else {
        t:SemType resultType = t:diff(operand.semType, t:ERROR);
        if t:isNever(resultType) {
            return cx.semanticErr(`operand of ${checkingKeyword} expression is always an error`, pos);
        }
        return check codeGenCheckingCond(cx, nextBlock, operand, errorType, checkingKeyword, resultType, pos);
    }
}

function codeGenCheckingCond(CodeGenContext cx, bir:BasicBlock bb, bir:Register operand, t:SemType errorType, s:CheckingKeyword checkingKeyword, t:SemType okType, Position pos) returns CodeGenError|RegExprEffect {
    bir:Register isError = cx.createTmpRegister(t:BOOLEAN, pos);
    bir:TypeTestInsn typeTest = { operand, semType: t:ERROR, result: isError, negated: false, pos };
    bb.insns.push(typeTest);
    bir:InsnRef testInsnRef = bir:lastInsnRef(bb);
    bir:BasicBlock okBlock = cx.createBasicBlock();
    bir:BasicBlock errorBlock = cx.createBasicBlock();
    bir:CondBranchInsn condBranch = { operand: isError, ifTrue: errorBlock.label, ifFalse: okBlock.label, pos };
    bb.insns.push(condBranch);
    bir:Register errorReg = cx.createTmpRegister(errorType, pos);
    bir:CondNarrowInsn narrowToError = {
        result: errorReg,
        operand,
        basis: { insn: testInsnRef, result: true },
        pos
    };
    errorBlock.insns.push(narrowToError);
    codeGenCheckingTerminator(errorBlock, checkingKeyword, errorReg, pos);
    bir:Register result = cx.createTmpRegister(okType, pos);
    bir:CondNarrowInsn narrowToOk = {
        result,
        operand,
        basis: { insn: testInsnRef, result: false },
        pos
    };
    okBlock.insns.push(narrowToOk);
    return { result, block: okBlock };
}

function codeGenCheckingTerminator(bir:BasicBlock bb, s:CheckingKeyword checkingKeyword, bir:Register operand, Position pos) {
    if checkingKeyword == "check" {
        bir:RetInsn insn = { operand, pos };
        bb.insns.push(insn);
    }
    else {
        bir:PanicInsn insn = { operand, pos };
        bb.insns.push(insn);
    }
}

function codeGenFunctionCall(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:FunctionCallExpr expr) returns CodeGenError|RegExprEffect {
    string? prefix = expr.prefix;
    bir:FunctionRef func;
    if prefix == () {
        func =  check genLocalFunctionRef(cx, env, expr.funcName, expr.namePos);
    }
    else {
        func = check genImportedFunctionRef(cx, env, prefix, expr.funcName, expr.namePos);
    }
    check validArgumentCount(cx, func, expr.args.length(), expr.openParenPos);
    t:SemType[] paramTypes = func.signature.paramTypes;
    bir:BasicBlock curBlock = bb;
    bir:Operand[] args = [];
    foreach int i in 0 ..< expr.args.length() {
        s:Expr argExpr = check cx.foldExpr(env, expr.args[i], paramTypes[i]);
        var { result: arg, block: nextBlock } = check codeGenExpr(cx, curBlock, env, argExpr);
        curBlock = nextBlock;
        args.push(arg);
    }
    bir:Register result = cx.createTmpRegister(func.signature.returnType, expr.startPos);
    bir:CallInsn call = {
        func,
        result,
        args: args.cloneReadOnly(),
        pos: expr.namePos
    };
    curBlock.insns.push(call);
    return { result, block: curBlock };
}

function codeGenMethodCall(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:MethodCallExpr expr) returns CodeGenError|RegExprEffect {
    var { result: target, block: curBlock } = check codeGenExpr(cx, bb, env, check cx.foldExpr(env, expr.target, ()));
    bir:FunctionRef func = check getLangLibFunctionRef(cx, target, expr.methodName, expr.namePos);
    check validArgumentCount(cx, func, expr.args.length() + 1, expr.opPos);

    t:SemType[] paramTypes = func.signature.paramTypes;
    bir:Operand[] args = [target];
    foreach int i in 0 ..< expr.args.length() {
        s:Expr argExpr = check cx.foldExpr(env, expr.args[i], paramTypes[i + 1]);
        var { result: arg, block: nextBlock } = check codeGenExpr(cx, curBlock, env, argExpr);
        curBlock = nextBlock;
        args.push(arg);
    }
    bir:Register result = cx.createTmpRegister(func.signature.returnType, expr.opPos);
    bir:CallInsn call = {
        func,
        result,
        args: args.cloneReadOnly(),
        pos: expr.namePos
    };
    curBlock.insns.push(call);
    return { result, block: curBlock };
}

function validArgumentCount(CodeGenContext cx, bir:FunctionRef func, int nSuppliedArgs, Position pos) returns CodeGenError? {
    int nExpectedArgs = func.signature.paramTypes.length();
    if nSuppliedArgs == nExpectedArgs {
        return ();
    }
    string name = symbolToString(cx.mod, cx.functionDefn.part.partIndex, func.symbol);
    if nSuppliedArgs < nExpectedArgs {
        return cx.semanticErr(`too few arguments for call to function ${name}`, pos);
    }
    else {
        return cx.semanticErr(`too many arguments for call to function ${name}`, pos);
    }
}

function genLocalFunctionRef(CodeGenContext cx, Environment env, string identifier, Position pos) returns bir:FunctionRef|CodeGenError {
    if !(lookup(identifier, env) == ()) {
        return cx.unimplementedErr("local variables cannot yet have function type", pos);
    }
    bir:FunctionSignature signature;
    s:ModuleLevelDefn? defn = cx.mod.defns[identifier];
    if defn is s:FunctionDefn {
        signature = <bir:FunctionSignature>defn.signature;
        boolean isPublic = defn.vis == "public";
        bir:InternalSymbol symbol = { identifier, isPublic };
        return { symbol, signature, erasedSignature: signature };
    }
    else {
        d:Message msg;
        if defn == () {
            msg = `${identifier} is not defined`;
        }
        else {
            msg = `${identifier} is not a function`;
        }
        return cx.semanticErr(msg, pos);
    }  
}

function genImportedFunctionRef(CodeGenContext cx, Environment env, string prefix, string identifier, Position pos) returns bir:FunctionRef|CodeGenError {
    Import mod = check lookupPrefix(cx.mod, cx.functionDefn, prefix, pos);
    var defn = mod.defns[identifier];
    if defn is bir:FunctionSignature {
        return {
            symbol: { module: mod.moduleId, identifier },
            signature: defn,
            erasedSignature: defn
        };
    }
    else if defn == () {
        if mod.partial {
            return cx.unimplementedErr(`unsupported library function ${prefix + ":" + identifier}`, pos);
        }
        else {
            return cx.semanticErr(`no public definition of ${prefix + ":" + identifier}`, pos);
        }
    }
    else {
        return cx.semanticErr("reference to non-function where function required", pos);
    }
}

type LangLibModuleName "int"|"boolean"|"string"|"array"|"map"|"error";

function getLangLibFunctionRef(CodeGenContext cx, bir:Operand target, string methodName, Position pos) returns bir:FunctionRef|CodeGenError {
    TypedOperand? t = typedOperand(target);
    if t != () && t[0] is LangLibModuleName {
        string moduleName = t[0];
        bir:FunctionSignature? erasedSignature = getLangLibFunction(moduleName, methodName);
        if erasedSignature == () {
            return cx.unimplementedErr(`unrecognized lang library function ${moduleName + ":" + methodName}`, pos);
        }
        else {
            bir:ExternalSymbol symbol = {
                module: { org: "ballerina", names: ["lang", moduleName] },
                identifier: methodName
            };
            bir:FunctionSignature signature = erasedSignature;
            if t[0] == "array" {
                signature = instantiateArrayFunctionSignature(cx.mod.tc, signature, (<bir:Register>target).semType);
            }
            return { symbol, signature, erasedSignature }; 
        }
    }
    return cx.unimplementedErr(`cannot resolve ${methodName} to lang lib function`, pos);
}

type Counter record {|
    int n = 0;
|};

function instantiateArrayFunctionSignature(t:Context tc, bir:FunctionSignature sig, t:SemType arrayType) returns bir:FunctionSignature {
    t:SemType memberType = <t:SemType>t:arrayMemberType(tc, arrayType);
    Counter counter = {};
    bir:FunctionSignature inst = instantiateSignature(sig, memberType, arrayType, counter);
    if counter.n > 1 {
        return inst;
    }
    return sig;
}

function instantiateSignature(bir:FunctionSignature sig, t:SemType memberType, t:SemType containerType, Counter counter) returns bir:FunctionSignature {
    bir:SemType? restParamType = sig.restParamType;
    bir:SemType[] paramTypes = from var ty in sig.paramTypes select instantiateType(ty, memberType, containerType, counter);
    return {
        returnType: instantiateType(sig.returnType, memberType, containerType, counter),
        paramTypes: paramTypes.cloneReadOnly(),
        restParamType: restParamType == () ? () : instantiateType(restParamType, memberType, containerType, counter)
    };
}

function instantiateType(t:SemType ty, t:SemType memberType, t:SemType containerType, Counter counter) returns t:SemType {
    if ty == t:LIST {
        counter.n += 1;
        return containerType;
    }
    else if ty == t:MAPPING {
        counter.n += 1;
        return containerType;
    }
    else if ty == t:TOP {
        counter.n += 1;
        return memberType;
    }
    else {
        return ty;
    }
}

function lookupVarRefBinding(CodeGenContext cx, string name, Environment env, Position pos) returns Binding|CodeGenError {
    var b = check lookupVarRef(cx, name, env, pos);
    if b is Binding {
        return b;
    }
    else {
        return cx.semanticErr(`cannot refer to a const definition in an lvalue`, pos);
    }
}

function lookupVarRef(CodeGenContext cx, string name, Environment env, Position pos) returns t:Value|Binding|CodeGenError {
    Binding? binding = lookupLocalVarRef(cx, name, env);
    if binding == () {
        s:ModuleLevelDefn? defn = cx.mod.defns[name];
        if defn == () {
            return cx.semanticErr(`variable ${name} not defined`, pos);
        }
        else if defn is s:ConstDefn {
            return (<s:ResolvedConst>defn.resolved)[1];
        }
        else {
            return cx.unimplementedErr(`values of function type not yet implemented`, pos);
        }
    }
    else {
        return binding;
    }
}

function lookupLocalVarRef(CodeGenContext cx, string name, Environment env) returns Binding? {
    Binding? binding = lookup(name, env);
    if binding != () {
        Binding? unnarrowed = binding.unnarrowed;
        if unnarrowed != () {
            unnarrowed.used = true;
            // This is a narrowed binding
            int num = unnarrowed.reg.number;
            if env.assignments.indexOf(num) != () {
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

function lookup(string name, Environment env) returns Binding? {
    Binding? tem = env.bindings;
    while true {
        if tem == () {
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
type FloatOperandPair readonly & ["float", [bir:FloatOperand, bir:FloatOperand]];
type StringOperandPair readonly & ["string", [bir:StringOperand, bir:StringOperand]];
type NilOperandPair readonly & ["nil", [NilOperand, NilOperand]];

type TypedOperandPair BooleanOperandPair|IntOperandPair|FloatOperandPair|StringOperandPair|NilOperandPair;

// XXX should use t:UT_* instead of strings here (like the ordering stuff)
type TypedOperand readonly & (["array", bir:Register]
                              |["map", bir:Register]
                              |["error", bir:Register]
                              |["string", bir:StringOperand]
                              |["float", bir:FloatOperand]
                              |["int", bir:IntOperand]
                              |["boolean", bir:BooleanOperand]
                              |["nil", NilOperand]);

function typedOperandPair(bir:Operand lhs, bir:Operand rhs) returns TypedOperandPair? {
    TypedOperand? l = typedOperand(lhs);
    TypedOperand? r = typedOperand(rhs);
    if l is ["int", bir:IntOperand] && r is ["int", bir:IntOperand] {
        return ["int", [l[1], r[1]]];
    }
    if l is ["float", bir:FloatOperand] && r is ["float", bir:FloatOperand] {
        return ["float", [l[1], r[1]]];
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
        if operand.semType === t:NIL {
            return ["nil", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:BOOLEAN) {
            return ["boolean", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:INT) {
            return ["int", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:FLOAT) {
            return ["float", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:STRING) {
            return ["string", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:LIST) {
            return ["array", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:MAPPING) {
            return ["map", operand];
        }
        else if t:isSubtypeSimple(operand.semType, t:ERROR) {
            return ["error", operand];
        }
    }
    else if operand is string {
        return ["string", operand];
    }
    else if operand is int {
        return ["int", operand];
    }
    else if operand is float {
        return ["float", operand];
    }
    else if operand is boolean {
        return ["boolean", operand];
    }
    else {
        return ["nil", operand];
    }
    return ();
}

function operandPairOrderType(CodeGenContext cx, bir:Operand left, bir:Operand right) returns bir:OrderType? {
    bir:OrderType? lot = operandToOrderType(cx, left);
    bir:OrderType? rot = operandToOrderType(cx, right);
    if lot == () || rot == () {
        return ();
    }
    else {
        if lot == rot {
            return lot;
        }
        [lot, rot] = tryEquateOptDeep(lot, rot);
        if lot == rot {
            return lot;
        }
        return ();
    }
}

function tryEquateOptDeep(bir:OrderType lot, bir:OrderType rot) returns [bir:OrderType, bir:OrderType] {
    [bir:OrderType, bir:OrderType] & readonly pair  = [lot, rot];
    match pair {
        // Both are { opt: bir:NO_ORDER_TYPE } case handled before
        [{ opt: bir:NO_ORDER_TYPE }, var r] => {
            bir:OrderType rOpt = optionalizeOrderType(r);
            return [rOpt, rOpt];
        }
        [var l, { opt: bir:NO_ORDER_TYPE }] => {
            bir:OrderType lOpt = optionalizeOrderType(l);
            return [lOpt, lOpt];
        }
        // JBUG casts
        [{ opt: var l }, { opt: var r }] => {
            var [lOpt, rOpt] = tryEquateOptDeep(<bir:NonEmptyOrderType>l, <bir:NonEmptyOrderType>r);
            return [optionalizeOrderType(lOpt), optionalizeOrderType(rOpt)];
        }
        [{ opt: var l }, var r] => {
            var [lOpt, rOpt] = tryEquateOptDeep(<bir:NonEmptyOrderType>l, r);
            return [optionalizeOrderType(lOpt), optionalizeOrderType(rOpt)];
        }
        [var l, { opt: var r }] => {
            var [lOpt, rOpt] = tryEquateOptDeep(l, <bir:NonEmptyOrderType>r);
            return [optionalizeOrderType(lOpt), optionalizeOrderType(rOpt)];
        }
        [{ memberOrderType: bir:NO_ORDER_TYPE }, var r] => {
            return [r, r];
        }
        [var l, { memberOrderType: bir:NO_ORDER_TYPE }] => {
            return [l, l];
        }
        [{ memberOrderType: var l }, { memberOrderType: var r }] => {
            var [lOdr, rOdr] = tryEquateOptDeep(<bir:OrderType>l, <bir:OrderType>r);
            bir:ArrayOrderType lArr = { memberOrderType: lOdr } ;
            bir:ArrayOrderType rArr = { memberOrderType: rOdr } ;
            return [lArr, rArr];
        }
        _ => {
            return [lot, rot];
        }
    }
}

function optionalizeOrderType(bir:OrderType ot) returns bir:OptOrderType {
    if ot is bir:OptOrderType {
        return ot;
    }
    else {
        return { opt: ot };
    }
}

function operandToOrderType(CodeGenContext cx, bir:Operand operand) returns bir:OrderType? {
    if operand is bir:Register {
        t:SemType operandTy = operand.semType;
        return semTypeToOrderTypeMemo(cx, operandTy);
    }
    else {
        var tc = t:constUniformTypeCode(operand);
        if tc is t:UT_NIL {
            return bir:EMPTY_ORDER_TYPE;
        }
        else if tc is bir:BasicOrderType {
            return tc;
        }
    }
    return ();
}

function semTypeToOrderTypeMemo(CodeGenContext cx, t:SemType semType) returns bir:OrderType? {
    OrderTypeMemo? memoized = cx.orderTypeMemo[semType];
    if memoized != () {
        return memoized.orderType;
    }
    OrderTypeMemo memo = { semType: semType };
    // XXX We assume recursive types can't be OrderType, reconsider after adding tuples.
    cx.orderTypeMemo.add(memo);
    bir:OrderType? result = semTypeToOrderType(cx, semType);
    memo.orderType = result;
    return result;
}

function semTypeToOrderType(CodeGenContext cx, t:SemType semType) returns bir:OrderType? {
    if semType == t:NIL {
        return bir:EMPTY_ORDER_TYPE;
    }
    else if t:isSubtypeSimple(semType, t:LIST) {
        t:SemType? memberTy = t:listMemberType(cx.mod.tc, semType);
        if memberTy == t:NEVER {
            return bir:EMPTY_TUPLE_ORDER_TYPE;
        }
        else if memberTy is t:SemType {
            bir:OrderType? memberOrderType = semTypeToOrderTypeMemo(cx, memberTy);
            return memberOrderType == () ? () : { memberOrderType };
        }
        return ();
    }
    else if t:containsNil(semType) {
        // Cast is valid since we exclude NIL, resulting a NonEmptyOrderType.
        var opt = <bir:NonEmptyOrderType?>semTypeToOrderTypeMemo(cx, t:diff(semType, t:NIL));
        return opt == () ? () : { opt };
    }
    else {
        return uniformSubtypeToOrderType(semType);
    }
}

final readonly & bir:BasicOrderType[] BASIC_ORDER_TYPES = [t:UT_BOOLEAN, t:UT_INT, t:UT_FLOAT, t:UT_STRING];

function uniformSubtypeToOrderType(t:SemType semType) returns bir:OrderType? {
    foreach bir:BasicOrderType tc in BASIC_ORDER_TYPES {
        t:UniformTypeBitSet optBasicType = t:uniformTypeUnion((1 << tc) | (1 << t:UT_NIL));
        if t:isSubtypeSimple(semType, optBasicType) {
            t:UniformTypeBitSet basicType = t:uniformType(tc);
            if t:isSubtypeSimple(semType, basicType) {
                return tc;
            }
            return <bir:OptOrderType> { opt: tc };
        }
    }
    return ();
}
