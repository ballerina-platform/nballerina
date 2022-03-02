import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type CodeGenError err:Semantic|err:Unimplemented;

// When doing codeGen for an expression we need to determine
// 1. when it has singleton type
// 2. when it is const (i.e. OK on the RHS of a const definition)
// Usually 1 and 2 go together, but sometimes they don't. Specifically:
// - when the type of variable has been narrowed to singleton float zero (by `== 0f`), we do not know whether its value is +0f or -0f
// (i.e. this is a case where it is singleton but not const)
// (this applies even more in case of decimal precision)
// - the type of an === expression is boolean, even if the operands have singleton type
// (i.e. this is a case when it is const but not singleton)
// These two cases can lead to cascading effects in expressions that contain them
// (particularly numeric casts extend what can be affected by this).
// In the future conditional expressions will extend it even further.

type ExprEffect record {|
    bir:BasicBlock block;
    bir:Operand result;
    // If the expression is a boolean expression, list of narrowings to be applied if it is used as a condition.
    Narrowing[] ifTrue = [];
    Narrowing[] ifFalse = [];
    // This is non-nil when the expression is a variable reference.
    Binding? binding = ();
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

type Narrowing record {|
    Binding binding;
    t:SemType ty;
    bir:Result basis;
|};

class ExprContext {
    *err:SemanticContext;
    final StmtContext? sc;
    final ModuleSymbols mod;
    final s:ModuleLevelDefn defn;
    final Environment env;
    final s:SourceFile file;
    final bir:FunctionCode code;

    function init(ModuleSymbols mod, s:ModuleLevelDefn defn, bir:FunctionCode code, Environment env, StmtContext? sc) {
        self.mod = mod;
        self.env = env;
        self.defn = defn;
        self.file = defn.part.file;
        self.sc = sc;
        self.code = code;
    }

    public function semanticErr(d:Message msg, Position|Range pos, error? cause = ()) returns err:Semantic {
        return err:semantic(msg, loc=self.location(pos), cause=cause, defnName=self.defn.name);
    }

    function unimplementedErr(d:Message msg, Position|Range pos, error? cause = ()) returns err:Unimplemented {
        return err:unimplemented(msg, loc=self.location(pos), cause=cause, defnName=self.defn.name);
    }

    private function location(Position|Range pos) returns d:Location {
        return d:location(self.file, pos);
    }

    function qNameRange(Position startPos) returns Range {
        return self.file.qNameRange(startPos);
    }

    function resolveTypeDesc(s:TypeDesc td) returns t:SemType|ResolveTypeError {
        return resolveSubsetTypeDesc(self.mod, self.defn, td);
    }

    function createTmpRegister(bir:SemType t, Position? pos = ()) returns bir:TmpRegister {
        return bir:createTmpRegister(self.code, t, (), pos);
    }

    function createNarrowRegister(bir:SemType t, Position? pos = ()) returns bir:NarrowRegister {
        return bir:createNarrrowRegister(self.code, t, (), pos);
    }

    function createBasicBlock(string? name = ()) returns bir:BasicBlock {
        return bir:createBasicBlock(self.code, name);
    }

    function createDummyBasicBlock(bir:BasicBlock bb) returns bir:BasicBlock {
        return bb === constBasicBlock ? bb : self.createBasicBlock();
    }

    function discardBasicBlocksFromDummy(bir:BasicBlock dummy) {
        // JBUG #34944 can't use `is readonly`
        if dummy !== constBasicBlock {
             bir:discardBasicBlocksFrom(self.code, dummy);
        }
    }

    function stmtContext() returns StmtContext|CodeGenError {
        return <StmtContext>self.sc;
    }

    function lookupLocalVarRef(string varName, Position pos) returns t:SingleValue|Binding|bir:FunctionRef|CodeGenError {
        return lookupLocalVarRef(self, self.mod, varName, self.env, pos);
    }

    function notInConst(s:Expr expr) returns CodeGenError? {
        if self.sc == () {
            return self.semanticErr("expression is not constant", s:range(expr));
        }
    }

    function createNarrowedExprContext(bir:BasicBlock bb, Narrowing[] narrowings, Position pos) returns ExprContext {
        Environment envClone = { bindings: self.env.bindings, assignments: self.env.assignments };
        addNarrowings(<StmtContext>self.sc, bb, envClone, narrowings, pos);
        return new(self.mod, self.defn, self.code, envClone, self.sc);
    }
}

function codeGenExprForBoolean(ExprContext cx, bir:BasicBlock bb, s:Expr expr) returns CodeGenError|BooleanExprEffect {
    var { result, block, ifTrue, ifFalse } = check codeGenExpr(cx, bb, t:BOOLEAN, expr);
    if result is bir:BooleanConstOperand || (result is bir:Register && t:isSubtypeSimple(result.semType, t:BOOLEAN)) {
        return { result, block, ifTrue, ifFalse };
    }
    return cx.semanticErr("expected boolean operand", s:range(expr));
}

function codeGenExprForInt(ExprContext cx, bir:BasicBlock bb, s:Expr expr) returns CodeGenError|IntExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, t:INT, expr);
    return { result: check validIntOperand(cx, result, expr), block };
}

function codeGenExprForString(ExprContext cx, bir:BasicBlock bb, s:Expr expr) returns CodeGenError|StringExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, t:STRING, expr);
    if result is bir:StringConstOperand || (result is bir:Register && t:isSubtypeSimple(result.semType, t:STRING)) {
        return { result, block };
    }
    return cx.semanticErr("expected string operand", s:range(expr));
}

final readonly & bir:ExternalSymbol IO_PRINTLN_SYMBOL = {
    module: { org: "ballerina", names: ["io"] }, 
    identifier: "println"
};

function codeGenArgument(ExprContext cx, bir:BasicBlock bb, s:MethodCallExpr|s:FunctionCallExpr callExpr, bir:FunctionRef func, int i) returns ExprEffect|CodeGenError {
    s:Expr arg = callExpr.args[i];
    int n = callExpr is s:FunctionCallExpr ? i : i + 1;
    if n >= func.signature.paramTypes.length() {
        if func.symbol == IO_PRINTLN_SYMBOL {
            return cx.unimplementedErr("multiple arguments for io:println not implemented", s:range(arg));
        }
        return cx.semanticErr("too many arguments for call to function", s:range(arg)); 
    }
    var { result, block } = check codeGenExpr(cx, bb, func.signature.paramTypes[n], arg);
    if operandHasType(cx.mod.tc, result, func.signature.paramTypes[n]) {
        return { result, block };
    }
    return cx.semanticErr("incorrect type for argument", s:range(arg));
}

function codeGenExpr(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:Expr expr) returns CodeGenError|ExprEffect {
    match expr {
        var { innerExpr } => {
            return codeGenExpr(cx, bb, expected, innerExpr);
        }
        var { opPos: pos, arithmeticOp: op, left, right } => {
            var { lhs, rhs, nextBlock, ifNilBlock } = check codeGenBinaryNilLift(cx, expected, left, right, bb, pos);
            return codeGenNilLiftResult(cx, check codeGenArithmeticBinaryExpr(cx, nextBlock, op, pos, lhs, rhs), ifNilBlock, pos);
        }
        // Negation
        { opPos: var pos, op: "-",  operand: var o } => {
            var { operand, nextBlock, ifNilBlock } = check codeGenUnaryNilLift(cx, expected, o, bb, pos);
            return codeGenNilLiftResult(cx, check codeGenNegateExpr(cx, nextBlock, pos, operand), ifNilBlock, pos);
        }
        // Bitwise complement
        { opPos: var pos, op: "~",  operand: var o } => {
            var { operand, nextBlock, ifNilBlock } = check codeGenUnaryNilLift(cx, expected, o, bb, pos);
            bir:IntOperand intOperand = check validIntOperand(cx, operand, o);
            return codeGenNilLiftResult(cx, check codeGenComplementExpr(cx, nextBlock, pos, intOperand), ifNilBlock, pos);
        }
        { opPos: var pos, op: "!",  operand: var o } => {
            return codeGenLogicalNotExpr(cx, bb, pos, o);
        }
        var { checkingKeyword, operand, kwPos: pos } => {
            check cx.notInConst(expr);
            return codeGenCheckingExpr(cx, bb, expected, checkingKeyword, operand, pos);
        }
        var { opPos: pos, logicalOp: op, left, right } => {
            return codeGenLogicalBinaryExpr(cx, bb, op, pos, left, right);
        }
        var { opPos: pos, bitwiseOp: op, left, right } => {
            var { lhs, rhs, nextBlock, ifNilBlock } = check codeGenBinaryNilLift(cx, expected, left, right, bb, pos);
            bir:IntOperand l = check validIntOperand(cx, lhs, left);
            bir:IntOperand r = check validIntOperand(cx, rhs, right);
            return codeGenNilLiftResult(cx, check codeGenBitwiseBinaryExpr(cx, nextBlock, op, pos, l, r), ifNilBlock, pos);
        }
        var { opPos: pos, equalityOp: op, left, right } => {
            return codeGenEqualityExpr(cx, bb, expected, op, pos, left, right);
        }
        var { opPos: pos, relationalOp: op, left, right } => {
            return codeGenRelationalExpr(cx, bb, expected, op, pos, left, right);
        }
        var { td: _, operand: _ } => {
            // JBUG #31782 cast needed
            return codeGenTypeCast(cx, bb, expected, <s:TypeCastExpr>expr);
        }
        // Type test
        var { td, left, negated, kwPos:pos } => {
            return codeGenTypeTest(cx, bb, expected, td, left, negated, pos);
        }
        // Variable reference
        // JBUG #33309 does not work as match pattern
        var ref if ref is s:VarRefExpr => {
            return codeGenVarRefExpr(cx, ref, expected, bb);
        }
        // Function/method call
        var callExpr if callExpr is (s:FunctionCallExpr|s:MethodCallExpr) => {
            check cx.notInConst(expr);
            if callExpr is s:FunctionCallExpr {
                return codeGenFunctionCallExpr(cx, bb, callExpr);
            }
            else {
                return codeGenMethodCallExpr(cx, bb, callExpr);
            }
        }
        // Member access E[i]
        var { container, index, opPos: pos } => {
            check cx.notInConst(expr);
            // Do constant folding here since these expressions are not allowed in const definitions
            var { result: l, block: nextBlock } = check codeGenExpr(cx, bb, (), container);
            return codeGenMemberAccessExpr(cx, nextBlock, pos, l, index);
        }
        // Field access
        var { container, fieldName, opPos: pos } => {
            check cx.notInConst(expr);
            var { result: l, block: nextBlock } = check codeGenExpr(cx, bb, (), container);
            return codeGenFieldAccessExpr(cx, nextBlock, pos, l, fieldName);
        }
        // List construct
        // JBUG #33309 should be able to use just `var { members }`
        var listConstructorExpr if listConstructorExpr is s:ListConstructorExpr => {
            return codeGenListConstructor(cx, bb, expected, listConstructorExpr);  
        }
        // Mapping construct
        var mappingConstructorExpr if mappingConstructorExpr is s:MappingConstructorExpr  => {
            return codeGenMappingConstructor(cx, bb, expected, mappingConstructorExpr);  
        }
        // Error construct
        var { message, kwPos: pos } => {
            check cx.notInConst(expr);
            return codeGenErrorConstructor(cx, bb, expected, message, pos);
        }
        // Literal
        var { value } => {
            return { result: { value, semType: t:singleton(cx.mod.tc, value) }, block: bb };
        }
        // Int literal
        var { digits, base, startPos: pos } => {
            bir:ConstOperand result = singletonOperand(cx, check intLiteralValue(cx, expected, base, digits, pos));
            return { result, block: bb };
        }
        // FP literal
        var { untypedLiteral, typeSuffix, startPos: pos } => {
            bir:ConstOperand result = singletonOperand(cx, check fpLiteralValue(cx, expected, untypedLiteral, typeSuffix, pos));
            return { result, block: bb };
        }
    }
    panic err:impossible("unrecognized expression type in code gen: " +  s:exprToString(expr));
}

function codeGenNilLiftResult(ExprContext cx, ExprEffect nonNilEffect, bir:BasicBlock? ifNilBlock, Position pos) returns ExprEffect {
    if ifNilBlock == () {
        return nonNilEffect;
    }
    else {
        bir:BasicBlock block = cx.createBasicBlock();
        bir:Operand nonNilResult = nonNilEffect.result;
        bir:BasicBlock nonNilBlock = nonNilEffect.block;

        bir:TmpRegister result = cx.createTmpRegister(t:union(operandSemType(cx.mod.tc, nonNilResult), t:NIL));
        bir:AssignInsn nilAssign = { result, operand: bir:NIL_OPERAND, pos };
        ifNilBlock.insns.push(nilAssign);
        bir:BranchInsn branchInsn = { dest: block.label, pos };
        ifNilBlock.insns.push(branchInsn);

        bir:AssignInsn valAssign = { result, operand: nonNilResult, pos };
        nonNilBlock.insns.push(valAssign);
        nonNilBlock.insns.push(branchInsn);
        return { result, block };
    }
}

type NilLiftResult record {|
    bir:Operand[] operands;
    bir:BasicBlock nextBlock;
    bir:BasicBlock? ifNilBlock;
|};

type BinaryNilLiftResult record {|
    bir:Operand lhs;
    bir:Operand rhs;
    bir:BasicBlock nextBlock;
    bir:BasicBlock? ifNilBlock = ();
|};

type UnaryNilLiftResult record {|
    bir:Operand operand;
    bir:BasicBlock nextBlock;
    bir:BasicBlock? ifNilBlock = ();
|};

function codeGenBinaryNilLift(ExprContext cx, t:SemType? expected, s:Expr left, s:Expr right, bir:BasicBlock bb, Position pos) returns BinaryNilLiftResult|CodeGenError {
    var { operands, nextBlock, ifNilBlock } = check codeGenNilLift(cx, expected, [left, right], bb, pos);
    return { lhs: operands[0], rhs: operands[1], nextBlock, ifNilBlock };
}

function codeGenUnaryNilLift(ExprContext cx, t:SemType? expected, s:Expr operand, bir:BasicBlock bb, Position pos) returns UnaryNilLiftResult|CodeGenError {
    var { operands, nextBlock, ifNilBlock } = check codeGenNilLift(cx, expected, [operand], bb, pos);
    return { operand: operands[0], nextBlock, ifNilBlock };
}

function codeGenNilLift(ExprContext cx, t:SemType? expected, s:Expr[] operands, bir:BasicBlock bb, Position pos) returns NilLiftResult|CodeGenError {
    bir:BasicBlock? ifNilBlock = ();
    bir:BasicBlock currentBlock = bb;
    bir:Operand[] newOperands = [];
    foreach s:Expr operandExpr in operands {
        var { result: operand, block } = check codeGenExpr(cx, currentBlock, expected, operandExpr);
        currentBlock = block;
        newOperands.push(operand);
    }
    bir:BasicBlock nextBlock = currentBlock;
    foreach int i in 0 ..< newOperands.length() {
        bir:Operand operand = newOperands[i];
        if operand is bir:Register && t:containsNil(operand.semType) {
            bir:TmpRegister isNil = cx.createTmpRegister(t:BOOLEAN);
            bir:TypeTestInsn operandTypeTest = { operand, semType: t:NIL , result: isNil, negated: false, pos };
            currentBlock.insns.push(operandTypeTest);

            nextBlock = cx.createBasicBlock();
            bir:InsnRef testInsnRef = bir:lastInsnRef(currentBlock);
            t:SemType baseType = t:diff(operand.semType, t:NIL);
            bir:NarrowRegister newOperand = cx.createNarrowRegister(baseType);
            bir:CondNarrowInsn narrowToBase = {
                result: newOperand,
                operand,
                basis: { insn: testInsnRef, result: false },
                pos
            };
            nextBlock.insns.push(narrowToBase);
            newOperands[i] = newOperand;
            if ifNilBlock == () {
                ifNilBlock = cx.createBasicBlock();
            }
            bir:CondBranchInsn branchInsn = { operand: isNil, pos, ifTrue: (<bir:BasicBlock>ifNilBlock).label, ifFalse: nextBlock.label };
            currentBlock.insns.push(branchInsn);
            currentBlock = nextBlock;
        }
    }
    return { operands: newOperands, nextBlock, ifNilBlock };
}

type MappingAccessType "."|"["|"fill";

// if accessType is ".", k must be a string
function codeGenMappingGet(ExprContext cx, bir:BasicBlock block, bir:Register mapping, MappingAccessType accessType, bir:StringOperand k, Position pos) returns CodeGenError|RegExprEffect {
    boolean maybeMissing = true;
    if t:mappingMemberRequired(cx.mod.tc, mapping.semType, k.semType) {
        maybeMissing = false;
    }
    else if accessType == "." {
        string fieldName = (<bir:StringConstOperand>k).value;
        return cx.semanticErr(`field access to ${fieldName}} is invalid because field may not be present`, pos=pos);
    }
    t:SemType memberType = t:mappingMemberType(cx.mod.tc, mapping.semType, k.semType);
    bir:INSN_MAPPING_FILLING_GET|bir:INSN_MAPPING_GET name = bir:INSN_MAPPING_GET;
    if maybeMissing {
        if accessType == "fill" {
            name = bir:INSN_MAPPING_FILLING_GET;
        }
        else {
            memberType = t:union(memberType, t:NIL);
        }
    }
    bir:TmpRegister result = cx.createTmpRegister(memberType, pos);
    bir:Insn insn = { name, result, operands: [mapping, k], pos };
    block.insns.push(insn);
    return { result, block };
}

function codeGenFieldAccessExpr(ExprContext cx, bir:BasicBlock nextBlock, Position pos, bir:Operand l, string fieldName) returns CodeGenError|ExprEffect {
    if l is bir:Register && t:isSubtypeSimple(l.semType, t:MAPPING)  {
        return codeGenMappingGet(cx, nextBlock, l, ".", singletonStringOperand(cx.mod.tc, fieldName), pos);
    }
    return cx.semanticErr("can only apply field access to mapping", pos=pos);
}

function codeGenMemberAccessExpr(ExprContext cx, bir:BasicBlock block1, Position pos, bir:Operand l, s:Expr index, boolean fill=false) returns CodeGenError|ExprEffect {
    if l is bir:Register {
        if t:isSubtypeSimple(l.semType, t:LIST) {
            var { result: r, block: nextBlock } = check codeGenExprForInt(cx, block1, index);
            t:SemType memberType = t:listMemberType(cx.mod.tc, l.semType, r.semType);
            if t:isEmpty(cx.mod.tc, memberType) {
                return cx.semanticErr("type of member access is never", pos);
            }
            // XXX this isn't correct for singletons
            bir:TmpRegister result = cx.createTmpRegister(memberType, pos);
            bir:ListGetInsn insn = { result, operands: [l, r], pos, fill };
            nextBlock.insns.push(insn);
            return { result, block: nextBlock };
        }
        else if t:isSubtypeSimple(l.semType, t:MAPPING) {
            var { result: r, block: nextBlock } = check codeGenExprForString(cx, block1, index);
            return codeGenMappingGet(cx, nextBlock, l, fill ? "fill" : "[", r, pos);
        }
        else if t:isSubtypeSimple(l.semType, t:STRING) {
            return cx.unimplementedErr("not implemented: member access on string", pos=pos);
        }
    }
    return cx.semanticErr("can only apply member access to list or mapping", pos=pos);     
}

function codeGenComplementExpr(ExprContext cx, bir:BasicBlock nextBlock, Position pos, bir:IntOperand operand) returns CodeGenError|ExprEffect {
    var [value, flags] = intOperandValue(operand);
    if flags != 0 {
        value = ~value;
        t:SemType resultType = (flags & VALUE_SINGLE_SHAPE) != 0 ? t:singleton(cx.mod.tc, value) : t:INT;
        return { result: { value, semType: resultType }, block: nextBlock };
    }
    bir:TmpRegister result = cx.createTmpRegister(t:INT, pos);
    bir:IntBitwiseBinaryInsn insn = { op: "^", pos, operands: [singletonIntOperand(cx.mod.tc, -1), operand], result };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenNegateExpr(ExprContext cx, bir:BasicBlock nextBlock, Position pos, bir:Operand operand) returns CodeGenError|ExprEffect {
    ArithmeticOperand? arith = arithmeticOperand(operand);
    bir:TmpRegister result;
    bir:Insn insn;
    if arith is [t:UT_INT, bir:IntOperand] {
        bir:IntOperand intOperand = arith[1];
        var [value, flags] = intOperandValue(intOperand);
        if flags != 0 {
            value = check intNegateEval(cx, pos, value);
            t:SemType resultType = (flags & VALUE_SINGLE_SHAPE) != 0 ? t:singleton(cx.mod.tc, value) : t:INT;
            return { result: { value, semType: resultType }, block: nextBlock };
        }
        result = cx.createTmpRegister(t:INT, pos);
        insn = <bir:IntArithmeticBinaryInsn> { op: "-", pos, operands: [singletonIntOperand(cx.mod.tc, 0), intOperand], result };
    }
    else if arith is [t:UT_FLOAT, bir:FloatOperand] {
        bir:FloatOperand floatOperand = arith[1];
        var [value, flags] = floatOperandValue(floatOperand);
        t:SemType resultType = t:FLOAT;
        if flags != 0 {
            value = -value; // shouldn't ever panic
            if (flags & VALUE_SINGLE_SHAPE) != 0 {
                resultType = t:singleton(cx.mod.tc, value);
            }
            if value != 0f || (flags & VALUE_CONST) != 0 {
                return { result: { value, semType: resultType }, block: nextBlock };
            }
        }
        result = cx.createTmpRegister(resultType, pos);
        insn = <bir:FloatNegateInsn> { operand: <bir:Register>floatOperand, result, pos };
    }
    else if arith is [t:UT_DECIMAL, bir:DecimalOperand] {
        bir:DecimalOperand decimalOperand = arith[1];
        var [value, flags] = decimalOperandValue(decimalOperand);
        t:SemType resultType = t:DECIMAL;
        if flags != 0 {
            value = -value; // shouldn't ever panic
            if (flags & VALUE_SINGLE_SHAPE) != 0 {
                resultType = t:singleton(cx.mod.tc, value);
            }
            if (flags & VALUE_CONST) != 0 {
                return { result: { value, semType: resultType }, block: nextBlock };
            }
        }
        result = cx.createTmpRegister(resultType, pos);
        insn = <bir:DecimalNegateInsn> { operand: <bir:Register>decimalOperand, result, pos };
    }
    else {
        return cx.semanticErr(`operand of ${"-"} must be int or float or decimal`, pos);
    }
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenArithmeticBinaryExpr(ExprContext cx, bir:BasicBlock bb, bir:ArithmeticBinaryOp op, Position pos, bir:Operand lhs, bir:Operand rhs) returns CodeGenError|ExprEffect {
    ArithmeticOperandPair? pair = arithmeticOperandPair(lhs, rhs);
    bir:TmpRegister result;
    if pair is IntOperandPair {
        readonly & bir:IntOperand[2] operands = pair[1];
        var [leftVal, leftFlags] = intOperandValue(operands[0]);
        var [rightVal, rightFlags] = intOperandValue(operands[1]);
        ValueFlags resultFlags = leftFlags & rightFlags;
        if resultFlags != 0 {
            int value = check intArithmeticEval(cx, pos, op, leftVal, rightVal);
            t:SemType resultType = (resultFlags & VALUE_SINGLE_SHAPE) != 0 ? t:singleton(cx.mod.tc, value) : t:INT;   
            return { result: { value, semType: resultType }, block: bb };
        }
        result = cx.createTmpRegister(t:INT, pos);
        bir:Insn insn;
        // JBUG #34987: can't use a function to return the name directly
        // var name = intArithmeticOpNeverPanics(op, operands);
        // insn = { op, pos, name, operand, result };
        if intArithmeticOpNeverPanics(op, operands) {
            insn = { op, pos, name: bir:INSN_INT_NO_PANIC_ARITHMETIC_BINARY, operands, result };
        }
        else {
            insn = { op, pos, name: bir:INSN_INT_ARITHMETIC_BINARY, operands, result };
        }
        bb.insns.push(insn);
    }
    else if pair is FloatOperandPair {
        readonly & bir:FloatOperand[2] operands = pair[1];
        var [leftVal, leftFlags] = floatOperandValue(operands[0]);
        var [rightVal, rightFlags] = floatOperandValue(operands[1]);
        ValueFlags resultFlags = leftFlags & rightFlags;
        t:SemType resultType = t:FLOAT;
        if op == "/" && rightVal == 0f {
            resultFlags &= ~VALUE_SINGLE_SHAPE;
        }
        if resultFlags != 0 {
            float value = floatArithmeticEval(op, leftVal, rightVal);
            if (resultFlags & VALUE_SINGLE_SHAPE) != 0 {
                resultType = t:singleton(cx.mod.tc, value);
            }
            // If the shape isn't 0f, then we can infer the value from the shape.
            if value != 0f || (resultFlags & VALUE_CONST) != 0 {
                return { result: { value, semType: resultType }, block: bb };
            }
        }
        result = cx.createTmpRegister(resultType, pos);
        bir:FloatArithmeticBinaryInsn insn = { op, pos, operands, result };
        bb.insns.push(insn);
    }
    else if pair is DecimalOperandPair {
        readonly & bir:DecimalOperand[2] operands = pair[1];
        var [leftVal, leftFlags] = decimalOperandValue(operands[0]);
        var [rightVal, rightFlags] = decimalOperandValue(operands[1]);
        ValueFlags resultFlags = leftFlags & rightFlags;
        t:SemType resultType = t:DECIMAL;
        if resultFlags != 0 {
            decimal value = check decimalArithmeticEval(cx, pos, op, leftVal, rightVal);
            if (resultFlags & VALUE_SINGLE_SHAPE) != 0 {
                resultType = t:singleton(cx.mod.tc, value);
            }
            // Even if we have the shape, we need to compute the value in order to get the precision right.
            if (resultFlags & VALUE_CONST) != 0 {
                return { result: { value, semType: resultType }, block: bb };
            }
        }
        result = cx.createTmpRegister(resultType, pos);
        bir:DecimalArithmeticBinaryInsn insn = { op, pos, operands, result };
        bb.insns.push(insn);
    }    
    else if pair is StringOperandPair && op == "+" {
        readonly & bir:StringOperand[2] operands = pair[1];
        var [leftVal, leftFlags] = stringOperandValue(operands[0]);
        var [rightVal, rightFlags] = stringOperandValue(operands[1]);
        ValueFlags resultFlags = leftFlags & rightFlags;
        if resultFlags != 0 {
            return constExprEffect(cx, bb, leftVal + rightVal, resultFlags);
        }
        result = cx.createTmpRegister(t:STRING, pos);
        bir:StringConcatInsn insn = { operands: pair[1], result, pos };
        bb.insns.push(insn);
    }
    else {
        return cx.semanticErr(`${op} not supported for operand types`, pos);
    }
    return { result, block: bb };
}

function intArithmeticOpNeverPanics(bir:ArithmeticBinaryOp op, bir:Operand[] operands) returns boolean {
    t:IntSubtypeConstraints?[] operandConstraints = from bir:Operand operand in operands select t:intSubtypeConstraints(operand.semType);
    t:IntSubtypeConstraints[] constraints = [];
    foreach t:IntSubtypeConstraints? constraint in operandConstraints {
        if constraint == () {
            return false;
        }
        constraints.push(constraint);
    }
    int noPanicMin;
    int noPanicMax;
    if op is "+"|"-" {
        // largest type that can't overflow is unsigned32 (positive) and signed32 (negative)
        noPanicMax = int:UNSIGNED32_MAX_VALUE;
        noPanicMin = int:SIGNED32_MIN_VALUE;
    }
    else if op is "*" {
        // largest type that can't overflow is signed32
        noPanicMax = int:SIGNED32_MAX_VALUE;
        noPanicMin = int:SIGNED32_MIN_VALUE;
    }
    else {
        return false;
    }
    foreach t:IntSubtypeConstraints constraint in constraints {
        if constraint.max > noPanicMax || constraint.min < noPanicMin {
            return false;
        }
    }
    return true;
}

function codeGenLogicalNotExpr(ExprContext cx, bir:BasicBlock bb, Position pos, s:Expr expr) returns CodeGenError|ExprEffect {
    var { result: operand, block: nextBlock, ifTrue, ifFalse } = check codeGenExprForBoolean(cx, bb, expr);
    var [value, flags] = booleanOperandValue(operand);
    if flags != 0 {
        return constExprEffect(cx, nextBlock, !value, flags);
    }
    bir:TmpRegister result = cx.createTmpRegister(t:BOOLEAN, pos);
    bir:BooleanNotInsn insn = { operand: <bir:Register>operand, result, pos };
    nextBlock.insns.push(insn);
    [ifTrue, ifFalse] = [ifFalse, ifTrue];
    return { result, block: nextBlock, ifTrue, ifFalse };
}

// Nil represents having no narrowing, which is equivalent to being narrowed to its binding's type
type NarrowingCombinator function(Narrowing?, Narrowing?) returns Narrowing?;

function codeGenLogicalBinaryExpr(ExprContext cx, bir:BasicBlock bb, s:BinaryLogicalOp op, Position pos, s:Expr left, s:Expr right) returns CodeGenError|ExprEffect {
    boolean isOr = op == "||";
    var { result: lhs, block: block1, ifTrue: lhsIfTrue, ifFalse: lhsIfFalse } = check codeGenExprForBoolean(cx, bb, left);
    var [leftValue, leftFlags] = booleanOperandValue(lhs);
    if leftFlags != 0 {
        if leftValue == isOr {
            // Only to check errors on rhs, result is discarded.
            bir:BasicBlock dummyBlock = cx.createDummyBasicBlock(block1);
            _ = check codeGenExprForBoolean(cx, dummyBlock, right);
            cx.discardBasicBlocksFromDummy(dummyBlock);
            return constExprEffect(cx, block1, leftValue, leftFlags);
        }
        else {
            return codeGenExprForBoolean(cx, block1, right);
        }
    }

    bir:BasicBlock evalRightBlock = cx.createBasicBlock();
    var shortCircuitBlock = cx.createBasicBlock();
    // JBUG var instead tuple type doesn't work
    [bir:BasicBlock, bir:BasicBlock] [ifTrueBlock, ifFalseBlock] = isOr ? [shortCircuitBlock, evalRightBlock] : [evalRightBlock, shortCircuitBlock];
    bir:CondBranchInsn condBranch = { operand: <bir:Register>lhs, ifTrue: ifTrueBlock.label, ifFalse: ifFalseBlock.label, pos };
    block1.insns.push(condBranch);
    ExprContext rhsCx = cx.createNarrowedExprContext(evalRightBlock, isOr ? lhsIfFalse : lhsIfTrue, pos);
    var { result: rhs, block: evalRightBlock2, ifTrue: rhsIfTrue, ifFalse: rhsIfFalse } = check codeGenExprForBoolean(rhsCx, evalRightBlock, right);
    var [rightValue, rightFlags] = booleanOperandValue(rhs);
    if rightFlags != 0 {
        bir:BasicBlock joinBlock = joinBlocks(cx, [shortCircuitBlock, evalRightBlock2], pos);
        if rightValue == isOr {
            return constExprEffect(cx, joinBlock, rightValue, rightFlags);
        }
        else {
            return { result: lhs, block: joinBlock, ifTrue: lhsIfTrue, ifFalse: lhsIfFalse };
        }
    }

    [NarrowingCombinator, NarrowingCombinator] [ifTrueCombinator, ifFalseCombinator] = isOr ? [unionNarrowing, intersectNarrowing]
                                                                                            : [intersectNarrowing, expandedUnionNarrowing];
    Narrowing[] ifTrue = combineNarrowings(lhsIfTrue, rhsIfTrue, ifTrueCombinator);
    Narrowing[] ifFalse = combineNarrowings(lhsIfFalse, rhsIfFalse, ifFalseCombinator);
    bir:TmpRegister result = cx.createTmpRegister(t:BOOLEAN, pos);
    bir:AssignInsn lhsAssignInsn = { result, operand: lhs, pos };
    shortCircuitBlock.insns.push(lhsAssignInsn);
    bir:AssignInsn rhsAssignInsn = { result, operand: rhs, pos };
    evalRightBlock2.insns.push(rhsAssignInsn);
    bir:BasicBlock joinBlock = joinBlocks(cx, [shortCircuitBlock, evalRightBlock2], pos);
    return { result, block: joinBlock, ifFalse, ifTrue };
}

function joinBlocks(ExprContext cx, bir:BasicBlock[] blocks, Position pos) returns bir:BasicBlock {
    bir:BasicBlock joinBlock = cx.createBasicBlock();
    foreach var b in blocks {
        bir:BranchInsn branchInsn = { dest: joinBlock.label, pos };
        b.insns.push(branchInsn);
    }
    return joinBlock;
}

function combineNarrowings(Narrowing[] lns, Narrowing[] rns, NarrowingCombinator combine) returns Narrowing[] {
    Narrowing[] result = [];
    boolean[] rnsUsed = [];
    int rnsLen = rns.length();
    if rnsLen > 0 {
        rnsUsed[rnsLen - 1] = false;
    }
    foreach var ln in lns {
        int? rnUsedIndex = ();
        int i = 0;
        foreach var rn in rns {
            if ln.binding.name == rn.binding.name {
                pushNarrowing(result, combine(ln, rn));
                rnUsedIndex = i;
                break;
            }
            i = i + 1;
        }
        if rnUsedIndex != () {
            rnsUsed[rnUsedIndex] = true;
        }
        else {
            pushNarrowing(result, combine(ln, ()));
        }
    }
    foreach var i in 0 ..< rnsLen {
        if !rnsUsed[i] {
            pushNarrowing(result, combine((), rns[i]));
        }
    }
    return result;
}

function pushNarrowing(Narrowing[] narrowings, Narrowing? n) {
    if n != () {
       narrowings.push(n);
    }
}

// A NarrowingCombinator. ln.binding.name == rn.binding.name if non-nil.
function unionNarrowing(Narrowing? ln, Narrowing? rn) returns Narrowing? {
    if ln != () && rn != () {
        return {
            binding: rn.binding,
            ty: t:union(ln.ty, rn.ty),
            basis: { or: [ln.basis, rn.basis] }
        };
    }
    else {
        return (); // union with no narrowing is no narrowing
    }
}

// A NarrowingCombinator. ln.binding.name == rn.binding.name if non-nil.
// May get removed with #ballerina-spec/1034
function expandedUnionNarrowing(Narrowing? ln, Narrowing? rn) returns Narrowing? {
    if ln != () && rn != () {
        return {
            binding: rn.binding,
            ty: t:union(ln.ty, t:intersect(ln.ty, rn.ty)),
            basis: { or: [ln.basis, { and: [rn.basis, rn.basis] }] }
        };
    }
    else {
        return ();
    }
}

// A NarrowingCombinator. ln.binding.name == rn.binding.name if non-nil.
function intersectNarrowing(Narrowing? ln, Narrowing? rn) returns Narrowing? {
    if ln != () && rn != () {
        return {
            binding: rn.binding,
            // Possible improvement: lexically successive one (lets say `rn`) is always a subtype. So this is same as rn.ty
            ty: t:intersect(ln.ty, rn.ty),
            basis: { and: [ln.basis, rn.basis] }
        };
    }
    else {
        return ln ?: rn; // intersecting with no narrowing is identity
    }
}

function codeGenBitwiseBinaryExpr(ExprContext cx, bir:BasicBlock bb, s:BinaryBitwiseOp op, Position pos, bir:IntOperand lhs, bir:IntOperand rhs) returns CodeGenError|ExprEffect {
    var [leftValue, leftFlags] = intOperandValue(lhs);
    var [rightValue, rightFlags] = intOperandValue(rhs);
    ValueFlags resultFlags = leftFlags & rightFlags;
    t:SemType lt = t:widenUnsigned(lhs.semType);
    t:SemType rt = t:widenUnsigned(rhs.semType);
    t:SemType resultType = op == "&" ? t:intersect(lt, rt) : t:union(lt, rt);
    if resultFlags != 0 {
        int value = bitwiseEval(op, leftValue, rightValue);
        if (resultFlags & VALUE_SINGLE_SHAPE) != 0 {
            resultType = t:singleton(cx.mod.tc, value);
        }
        return { result: { value, semType: resultType }, block: bb };
    }
    bir:TmpRegister result = cx.createTmpRegister(resultType, pos);
    bir:IntBitwiseBinaryInsn insn = { op, pos, operands: [lhs, rhs], result };
    bb.insns.push(insn);
    return { result, block: bb };
}

function codeGenListConstructor(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:ListConstructorExpr expr) returns CodeGenError|ExprEffect {
    bir:BasicBlock nextBlock = bb;
    bir:Operand[] operands = [];

    // SUBSET always have contextually expected type for list constructor
    t:SemType resultType = t:intersect(<t:SemType>expected, t:LIST_RW);
    t:Context tc = cx.mod.tc;
    foreach var [i, member] in expr.members.enumerate() {
        bir:Operand operand;
        { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, t:listMemberType(tc, resultType, t:singleton(tc, i)), member);
        operands.push(operand);
    }
    if t:isEmpty(cx.mod.tc, resultType) {
        return cx.semanticErr("list not allowed in this context", s:range(expr));
    }
    bir:TmpRegister result = cx.createTmpRegister(resultType, expr.opPos);
    bir:ListConstructInsn insn = { operands: operands.cloneReadOnly(), result, pos: expr.opPos };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenMappingConstructor(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:MappingConstructorExpr expr) returns CodeGenError|ExprEffect {
    // SUBSET always have contextually expected type for mapping constructor
    t:SemType resultType = check selectMappingInherentType(cx, <t:SemType>expected, expr); 
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(cx.mod.tc, resultType);
    if mat is () {
        // XXX can this happen?
        return cx.semanticErr("mapping not allowed in this context", s:range(expr));
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
        { result: operand, block: nextBlock } = check codeGenExpr(cx, nextBlock, t:mappingAtomicTypeMemberAt(mat, name), f.value);
        operands.push(operand);
        fieldNames.push(name);
    }
    bir:TmpRegister result = cx.createTmpRegister(resultType, expr.opPos);
    bir:MappingConstructInsn insn = { fieldNames: fieldNames.cloneReadOnly(), operands: operands.cloneReadOnly(), result, pos: expr.opPos };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function selectMappingInherentType(ExprContext cx, t:SemType expectedType, s:MappingConstructorExpr expr) returns t:SemType|ResolveTypeError {
    t:SemType expectedMappingType = t:intersect(expectedType, t:MAPPING_RW);
    t:Context tc = cx.mod.tc;
    if t:mappingAtomicTypeRw(tc, expectedMappingType) != () {
        return expectedMappingType; // easy case
    }
    string[] fieldNames = from var f in expr.fields order by f.name select f.name;
    t:MappingAlternative[] alts =
        from var alt in t:mappingAlternativesRw(tc, expectedMappingType)
        where mappingAlternativeAllowsFields(alt, fieldNames)
        select alt;
    if alts.length() == 0 {
        return cx.semanticErr("no applicable inherent type for mapping constructor", s:range(expr));
    }
    else if alts.length() > 1 {
        return cx.semanticErr("ambiguous inherent type for mapping constructor", s:range(expr));
    }
    t:SemType semType = alts[0].semType;
    if t:mappingAtomicTypeRw(tc, semType) == () {
        return cx.semanticErr("appplicable type for mapping constructor is not atomic", s:range(expr));
    }
    return semType;
}

function mappingAlternativeAllowsFields(t:MappingAlternative alt, string[] fieldNames) returns boolean {
    foreach t:MappingAtomicType a in alt.pos {
        // SUBSET won't be right with record defaults
        if a.rest == t:NEVER {
            if a.names != fieldNames {
                return false;
            }
        }
        // Check that all members of a.names are included in fieldNames
        // Both a.names and fieldNames are ordered
        int i = 0;
        int len = fieldNames.length();
        foreach string name in a.names {
            while true {
                if i >= len {
                    return false;
                }
                if fieldNames[i] == name {
                    i += 1;
                    break;
                }
                if fieldNames[i] > name {
                    return false;
                }
                i += 1;
            }
        }
    }
    return true;
}

function codeGenErrorConstructor(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:Expr message, Position pos) returns CodeGenError|ExprEffect {
    var { result: operand, block } = check codeGenExprForString(cx, bb, message);
    bir:TmpRegister result = cx.createTmpRegister(t:ERROR, pos);
    bir:ErrorConstructInsn insn = { result, operand, pos };
    block.insns.push(insn);
    return { result, block };
}

function codeGenRelationalExpr(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:BinaryRelationalOp op, Position pos, s:Expr left, s:Expr right) returns CodeGenError|ExprEffect {
    var { result: l, block: block1 } = check codeGenExpr(cx, bb, expected, left);
    var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, expected, right);
    t:Context tc = cx.mod.tc;

    t:SemType lType = operandSemType(tc, l);
    t:SemType rType = operandSemType(tc, r);
    if !t:comparable(tc, lType, rType) {
        return cx.semanticErr(`operands of ${op} do not belong to an ordered type`, pos);
    }
    var [leftValue, leftFlags] = operandValue(l);
    var [rightValue, rightFlags] = operandValue(r);
    ValueFlags resultFlags = leftFlags & rightFlags;
    if resultFlags != 0 {
        // XXX we only need the shape
        return constExprEffect(cx, nextBlock, check relationalEval(cx, pos, op, leftValue, rightValue), resultFlags);
    }
    bir:TmpRegister result = cx.createTmpRegister(t:BOOLEAN, pos);
    bir:CompareInsn insn = { op, pos, operands: [l, r], result };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenEqualityExpr(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:BinaryEqualityOp op, Position pos, s:Expr left, s:Expr right) returns CodeGenError|ExprEffect {
    var { result: l, block: block1, binding: lBinding } = check codeGenExpr(cx, bb, expected, left);
    var { result: r, block: nextBlock, binding: rBinding } = check codeGenExpr(cx, block1, expected, right);
    t:Context tc = cx.mod.tc;

    t:SemType lType = operandSemType(tc, l);
    t:SemType rType = operandSemType(tc, r);
    if t:isEmpty(tc, t:intersect(lType, rType)) {
        return cx.semanticErr(`intersection of operands of operator ${op} is empty`, pos);
    }
    boolean exact = op.length() == 3;
    if !exact {
        t:SemType ad = t:createAnydata(tc);
        if !t:isSubtype(tc, lType, ad) && !t:isSubtype(tc,rType, ad) {
            return cx.semanticErr(`type of at least one operand of ${op} operator must be a subtype of anydata`, pos);
        }
    }
    boolean negated = op.startsWith("!");
    var [leftValue, leftFlags] = operandValue(l);
    var [rightValue, rightFlags] = operandValue(r);
    ValueFlags resultFlags = leftFlags & rightFlags;
    if resultFlags != 0 {
        if !exact {
            boolean value = negated == (leftValue != rightValue);
            return constExprEffect(cx, nextBlock, value, resultFlags);
        }
        else if (resultFlags & VALUE_CONST) != 0 {
            boolean value = negated == (leftValue !== rightValue);
            return { result: { value, semType: t:BOOLEAN }, block: nextBlock };
        }
    }
    
    bir:TmpRegister result = cx.createTmpRegister(t:BOOLEAN, pos);
    bir:EqualityInsn insn = { op, pos, operands: [l, r], result };
    nextBlock.insns.push(insn);
    [Binding, t:SingleValue]? narrowingCompare = ();
    if !exact {
        t:WrappedSingleValue? lShape = operandSingleShape(l);
        t:WrappedSingleValue? rShape = operandSingleShape(r);
        if lBinding is Binding && rShape !is () {
            narrowingCompare = [lBinding, rShape.value];
        }
        else if rBinding is Binding && lShape !is () {
            narrowingCompare = [rBinding, lShape.value];
        }
    }

    if narrowingCompare == () {
        return { result, block: nextBlock };
    }
    else {
        var [binding, value] = narrowingCompare;
        t:SemType typeIfTrue = t:singleton(tc, value);
        t:SemType typeIfFalse = t:roDiff(tc, binding.reg.semType, typeIfTrue);
        if negated {
            [typeIfTrue, typeIfFalse] = [typeIfFalse, typeIfTrue];
        }
        bir:InsnRef insnRef = bir:lastInsnRef(nextBlock);
        Narrowing[] ifTrue = [{
            binding,
            basis: { insn: insnRef, result: !negated },
            ty: typeIfTrue
        }];
        Narrowing[] ifFalse = [{
            binding,
            basis: { insn: insnRef, result: negated },
            ty: typeIfFalse
        }];
        return { result, block: nextBlock, ifTrue, ifFalse };
    }
}

function codeGenVarRefExpr(ExprContext cx, s:VarRefExpr ref, t:SemType? expected, bir:BasicBlock bb) returns CodeGenError|ExprEffect {
    bir:Operand result;
    Binding? binding;
    string? prefix = ref.prefix;
    if prefix != () {
        result = singletonOperand(cx, check lookupImportedConst(cx.mod, cx.defn, prefix, ref.name));
        binding = ();
    }
    else {
        var v = check cx.lookupLocalVarRef(ref.name, ref.startPos);
        if v is t:SingleValue {
            result = singletonOperand(cx, v);
            binding = ();
        }
        else if v is bir:FunctionRef {
            return cx.unimplementedErr("values of function type are not implemented", ref.startPos);
        }
        else {
            result = constifyRegister(v.reg);
            binding = result === v.reg ? v : ();
        }
    }  
    return { result, block: bb, binding };
}

function codeGenTypeCast(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:TypeCastExpr tcExpr) returns CodeGenError|ExprEffect {
    t:SemType toType = check cx.resolveTypeDesc(tcExpr.td);
    t:SemType operandExpectedType = expected == () ? toType : t:intersect(toType, expected);
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, bb, operandExpectedType, tcExpr.operand);
    t:SemType fromType = operandSemType(cx.mod.tc, operand);
    t:UniformTypeBitSet? toNumType = t:singleNumericType(toType);
    if toNumType != () && !t:isSubtypeSimple(t:intersect(fromType, t:NUMBER), toNumType) {
        toType = t:diff(toType, t:diff(t:NUMBER, toNumType));
        // do numeric conversion now
        { result: operand, block: nextBlock } = check codeGenNumericConvert(cx, nextBlock, operand, toNumType, tcExpr.opPos);
        fromType = operandSemType(cx.mod.tc, operand);
    }
    if t:isSubtype(cx.mod.tc, fromType, toType) {
        // it's redundant, so we can remove it
        return { result: operand, block: nextBlock };
    }
    t:SemType resultType = t:intersect(fromType, toType);
    if t:isEmpty(cx.mod.tc, resultType) {
        return cx.semanticErr("type cast cannot succeed", tcExpr.opPos);
    }
    bir:TmpRegister result = cx.createTmpRegister(resultType, tcExpr.opPos);
    bir:Register reg = <bir:Register>operand;
    bir:TypeCastInsn insn = { operand: reg, semType: toType, pos: tcExpr.opPos, result };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenNumericConvert(ExprContext cx, bir:BasicBlock nextBlock, bir:Operand operand, t:UniformTypeBitSet toNumType, Position pos) returns CodeGenError|ExprEffect {
    t:SemType fromType = operandSemType(cx.mod.tc, operand);
    t:SemType resultType = t:union(t:diff(fromType, t:NUMBER), toNumType);
    var [shape, flags] = operandValue(operand);
    if flags != 0 {
        int|float|decimal? converted = ();
        if toNumType == t:INT {
            if shape is float|decimal {
                converted = check convertToIntEval(cx, pos, shape);
            }
        }
        else if toNumType == t:FLOAT {
            if shape is int|decimal {
                converted = <float>shape;
            }
        }
        else {
            if shape is int|float {
                converted = check convertToDecimalEval(cx, pos, shape);
            }
        }
        if converted != () {
            if (flags & VALUE_SINGLE_SHAPE) != 0 {
                resultType = t:singleton(cx.mod.tc, converted);
            }
            return { result: { value: converted, semType: resultType }, block: nextBlock };
        }
    }
    else if operand is bir:Register { // always true but does needed narrowing
        bir:TmpRegister result = cx.createTmpRegister(resultType, pos);
        if toNumType == t:INT {
            bir:ConvertToIntInsn insn = { operand, result, pos };
            nextBlock.insns.push(insn);
        }
        else if toNumType == t:FLOAT {
            bir:ConvertToFloatInsn insn = { operand, result, pos };
            nextBlock.insns.push(insn);
        }
        else {
            bir:ConvertToDecimalInsn insn = { operand, result, pos };
            nextBlock.insns.push(insn);
        }
        return { result, block: nextBlock };
    }
    return { result: operand, block: nextBlock };
}

function codeGenTypeTest(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:TypeDesc td, s:Expr left, boolean negated, Position pos) returns CodeGenError|ExprEffect {
    t:SemType semType = check cx.resolveTypeDesc(td);
    var { result: operand, block: nextBlock, binding } = check codeGenExpr(cx, bb, expected, left);
    t:Context tc = cx.mod.tc;  
    t:SemType curSemType = operandSemType(tc, operand);
    t:SemType diff = t:roDiff(tc, curSemType, semType);
    if t:isEmpty(tc, diff) {
        return { result: singletonOperand(cx, !negated), block: nextBlock };
    }
    t:SemType intersect;
    if t:isSubtype(tc, semType, curSemType) {
        intersect = semType;
    }
    else {
        intersect = t:intersect(curSemType, semType);
    }
    if t:isEmpty(tc, intersect) {
        return { result: singletonOperand(cx, negated), block: nextBlock };
    }
    bir:TmpRegister result = cx.createTmpRegister(t:BOOLEAN, pos);
    // Either diff or intersect should be empty if the operand is singleton
    bir:Register reg = <bir:Register>operand;
    bir:TypeTestInsn insn = { operand: reg, semType, result, negated, pos };
    nextBlock.insns.push(insn);
    if negated {
        [intersect, diff] = [diff, intersect];
    }
    bir:InsnRef insnRef = bir:lastInsnRef(nextBlock);
    Narrowing[] ifTrue = [];
    Narrowing[] ifFalse = [];
    if binding != () {
        ifTrue.push({
            binding,
            basis: { insn: insnRef, result: !negated },
            ty: intersect
        });
        ifFalse.push({
            binding,
            basis: { insn: insnRef, result: negated },
            ty: diff
        });
    }
    return { result, block: nextBlock, ifTrue, ifFalse };
}

function codeGenCheckingExpr(ExprContext cx, bir:BasicBlock bb, t:SemType? expected, s:CheckingKeyword checkingKeyword, s:Expr expr, Position pos) returns CodeGenError|ExprEffect {
    // Checking expr falls into one of : 1) never err 2) conditionally err
    var { result: o, block: nextBlock } = check codeGenExpr(cx, bb, expected, expr);
    t:SemType semType = operandSemType(cx.mod.tc, o);
    t:SemType errorType =  t:intersect(semType, t:ERROR);
    if t:isNever(errorType) {
        return { result: o, block: nextBlock };
    }
    else {
        bir:Register operand = <bir:Register>o;
        t:SemType resultType = t:diff(semType, t:ERROR);
        if t:isNever(resultType) {
            // This has to be an error, otherwise type of expression would be `never``
            return cx.semanticErr(`operand of ${checkingKeyword} expression is always an error`, pos);
        }
        return codeGenCheckingCond(check cx.stmtContext(), nextBlock, operand, errorType, checkingKeyword, resultType, pos);
    }
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

function codeGenFunctionCallExpr(ExprContext cx, bir:BasicBlock bb, s:FunctionCallExpr expr) returns CodeGenError|ExprEffect {
    string? prefix = expr.prefix;
    bir:FunctionRef func;
    if prefix == () {
        var ref = cx.lookupLocalVarRef(expr.funcName, expr.qNamePos);
        if ref is bir:FunctionRef {
            func = ref;
        }
        else {
            return cx.semanticErr("only a value of function type can be called", expr.qNamePos);
        }
    }
    else {
        func = check genImportedFunctionRef(cx, prefix, expr.funcName, expr.qNamePos);
    }
    bir:BasicBlock curBlock = bb;
    bir:Operand[] args = [];
    foreach int i in 0 ..< expr.args.length() {
        var { result: arg, block: nextBlock } = check codeGenArgument(cx, curBlock, expr, func, i);
        curBlock = nextBlock;
        args.push(arg);
    }
    check sufficientArguments(cx, func, expr);
    return codeGenCall(cx, curBlock, func, args, expr.qNamePos);
}

function codeGenMethodCallExpr(ExprContext cx, bir:BasicBlock bb, s:MethodCallExpr expr) returns CodeGenError|ExprEffect {
    var { result: target, block: curBlock } = check codeGenExpr(cx, bb, (), expr.target);
    bir:FunctionRef func = check getLangLibFunctionRef(cx, target, expr.methodName, expr.namePos);
    bir:Operand[] args = [target];
    foreach int i in 0 ..< expr.args.length() {
        var { result: arg, block: nextBlock } = check codeGenArgument(cx, curBlock, expr, func, i);
        curBlock = nextBlock;
        args.push(arg);
    }
    check sufficientArguments(cx, func, expr);
    return codeGenCall(cx, curBlock, func, args, expr.namePos);
}

function codeGenCall(ExprContext cx, bir:BasicBlock curBlock, bir:FunctionRef func, bir:Operand[] args, Position pos) returns ExprEffect {
    t:SemType returnType = func.signature.returnType;
    bir:TmpRegister reg = cx.createTmpRegister(returnType, pos);
    bir:CallInsn call = {
        func,
        result: reg,
        args: args.cloneReadOnly(),
        pos
    };
    curBlock.insns.push(call);
    return { result: constifyRegister(reg), block: curBlock };    
}

function sufficientArguments(ExprContext cx, bir:FunctionRef func, s:MethodCallExpr|s:FunctionCallExpr call) returns CodeGenError? {
    int nSuppliedArgs = call is s:FunctionCallExpr ? call.args.length() : call.args.length() + 1;
    if nSuppliedArgs < func.signature.paramTypes.length() {
        if func.symbol == IO_PRINTLN_SYMBOL {
            return cx.unimplementedErr("io:println without arguments not implemented", call.closeParenPos);
        }
        return cx.semanticErr("too few arguments for call to function", call.closeParenPos);
    }
}

function genImportedFunctionRef(ExprContext cx, string prefix, string identifier, Position pos) returns bir:FunctionRef|CodeGenError {
    Import mod = check lookupPrefix(cx.mod, cx.defn, prefix, pos);
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
            return cx.unimplementedErr(`unsupported library function ${prefix + ":" + identifier}`, cx.qNameRange(pos));
        }
        else {
            return cx.semanticErr(`no public definition of ${prefix + ":" + identifier}`, cx.qNameRange(pos));
        }
    }
    else {
        return cx.semanticErr("reference to non-function where function required", cx.qNameRange(pos));
    }
}

function getLangLibFunctionRef(ExprContext cx, bir:Operand target, string methodName, Position|Range nameRange) returns bir:FunctionRef|CodeGenError {
    LangLibModuleName? moduleName = operandLangLibModuleName(target);
    if moduleName != () {
        bir:FunctionSignature? erasedSignature = getLangLibFunction(moduleName, methodName);
        if erasedSignature == () {
            return cx.unimplementedErr(`unrecognized lang library function ${moduleName + ":" + methodName}`, nameRange);
        }
        else {
            bir:ExternalSymbol symbol = {
                module: { org: "ballerina", names: ["lang", moduleName] },
                identifier: methodName
            };
            bir:FunctionSignature signature = erasedSignature;
            if moduleName == "array" {
                signature = instantiateArrayFunctionSignature(cx.mod.tc, signature, (<bir:Register>target).semType);
            }
            return { symbol, signature, erasedSignature }; 
        }
    }
    return cx.unimplementedErr(`cannot resolve ${methodName} to lang lib function`, nameRange);
}

type Counter record {|
    int n = 0;
|};

function instantiateArrayFunctionSignature(t:Context tc, bir:FunctionSignature sig, t:SemType listType) returns bir:FunctionSignature {
    var [memberType, arrayType] = arraySupertype(tc, listType); 
    Counter counter = {};
    bir:FunctionSignature inst = instantiateSignature(sig, memberType, arrayType, counter);
    if counter.n > 1 {
        return inst;
    }
    return sig;
}

function arraySupertype(t:Context tc, t:SemType listType) returns [t:SemType, t:SemType] {
    t:ListAtomicType? atomic = t:listAtomicTypeRw(tc, listType);
    if atomic != () && atomic.members.fixedLength == 0 {
        // simple case
        return [atomic.rest, listType];
    }
    else {
        t:SemType memberType = t:listMemberType(tc, listType, t:INT);
        t:ListDefinition def = new;
        return [memberType, def.define(tc.env, rest = memberType)];
    }
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

type IntOperandPair readonly & [t:UT_INT, [bir:IntOperand, bir:IntOperand]];
type FloatOperandPair readonly & [t:UT_FLOAT, [bir:FloatOperand, bir:FloatOperand]];
type DecimalOperandPair readonly & [t:UT_DECIMAL, [bir:DecimalOperand, bir:DecimalOperand]];
type StringOperandPair readonly & [t:UT_STRING, [bir:StringOperand, bir:StringOperand]];

type ArithmeticOperandPair IntOperandPair|DecimalOperandPair|FloatOperandPair|StringOperandPair;

type ArithmeticOperand readonly & ([t:UT_STRING, bir:StringOperand]
                                   |[t:UT_FLOAT, bir:FloatOperand]
                                   |[t:UT_DECIMAL, bir:DecimalOperand]
                                   |[t:UT_INT, bir:IntOperand]);

function arithmeticOperandPair(bir:Operand lhs, bir:Operand rhs) returns ArithmeticOperandPair? {
    ArithmeticOperand? l = arithmeticOperand(lhs);
    ArithmeticOperand? r = arithmeticOperand(rhs);
    if l is [t:UT_INT, bir:IntOperand] && r is [t:UT_INT, bir:IntOperand] {
        return [t:UT_INT, [l[1], r[1]]];
    }
    if l is [t:UT_FLOAT, bir:FloatOperand] && r is [t:UT_FLOAT, bir:FloatOperand] {
        return [t:UT_FLOAT, [l[1], r[1]]];
    }
    if l is [t:UT_DECIMAL, bir:DecimalOperand] && r is [t:UT_DECIMAL, bir:DecimalOperand] {
        return [t:UT_DECIMAL, [l[1], r[1]]];
    }
    if l is [t:UT_STRING, bir:StringOperand] && r is [t:UT_STRING, bir:StringOperand] {
        return [t:UT_STRING, [l[1], r[1]]];
    }
    return ();
}

function arithmeticOperand(bir:Operand operand) returns ArithmeticOperand? {
    if operand is bir:Register {
        t:UniformTypeCode? utc = t:uniformTypeCode(t:widenToUniformTypes(operand.semType));
        // JBUG should be able to do this with a single return
        if utc == t:UT_INT {
            return [utc, operand];
        }
        if utc == t:UT_FLOAT {
            return [utc, operand];
        }
        if utc == t:UT_DECIMAL {
            return [utc, operand];
        }
        if utc == t:UT_STRING {
            return [utc, operand];
        }
        return ();
    }
    else {
        return arithmeticConstOperand(operand);
    }
}

function arithmeticConstOperand(bir:ConstOperand operand) returns ArithmeticOperand? {
    if operand is bir:StringOperand {
        return [t:UT_STRING, operand];
    }
    else if operand is bir:IntOperand {
        return [t:UT_INT, operand];
    }
    else if operand is bir:FloatConstOperand {
        return [t:UT_FLOAT, operand];
    }
    else if operand is bir:DecimalConstOperand {
        return [t:UT_DECIMAL, operand];
    }
    else {
        return ();
    }
}

function operandLangLibModuleName(bir:Operand operand) returns LangLibModuleName? {
    t:SemType semType = operand.semType;
    if t:isSubtypeSimple(operand.semType, t:LIST) {
        return "array";
    }
    else if t:isSubtypeSimple(operand.semType, t:MAPPING) {
        return "map";
    }
    t:UniformTypeCode? utc = t:uniformTypeCode(t:widenToUniformTypes(semType));
    match utc {
        t:UT_BOOLEAN => { return "boolean"; }
        t:UT_INT => { return "int"; }
        t:UT_FLOAT => { return "float"; }
        t:UT_DECIMAL => { return "decimal"; }
        t:UT_STRING => { return "string"; }
        t:UT_ERROR => { return "error"; }
    }
    return ();
}

function operandSemType(t:Context tc, bir:Operand operand) returns t:SemType {
    return operand.semType;
}

// Returns non-nil if operand has singleton type.
function operandSingleShape(bir:Operand operand) returns t:WrappedSingleValue? {
    return t:singleShape(operand.semType);
}

function validIntOperand(ExprContext cx, bir:Operand operand, s:Expr expr) returns bir:IntOperand|CodeGenError {
    if operand is bir:IntConstOperand || (operand is bir:Register && t:isSubtypeSimple(operand.semType, t:INT)) {
        return operand;
    }
    return cx.semanticErr("expected an int operand", s:range(expr));
}

function operandConstValue(bir:Operand operand) returns t:WrappedSingleValue? {
    return operand is bir:Register ? () : { value: operand.value };
}

function operandHasType(t:Context tc, bir:Operand operand, t:SemType semType) returns boolean {
    return operand is bir:Register ? t:isSubtype(tc, operand.semType, semType) : t:containsConst(semType, operand.value);
}

function singletonOperand(ExprContext cx, t:SingleValue value) returns bir:ConstOperand {
    return { value, semType: t:singleton(cx.mod.tc, value) };
}

function singletonIntOperand(t:Context tc, int value) returns bir:IntConstOperand {
    return { value, semType: t:singleton(tc, value) };
}

function singletonStringOperand(t:Context tc, string value) returns bir:StringConstOperand {
    return { value, semType: t:singleton(tc, value) };
}

function constifyRegister(bir:Register reg) returns bir:Operand {
    t:SemType ty = reg.semType;
    t:WrappedSingleValue? wrapped = t:singleShape(ty);
    if wrapped is () {
        return reg;
    }
    t:SingleValue shape = wrapped.value;
    // for decimal, we need the register to preserve precision
    // for 0f, we need the register to preserve the sign
    // JBUG when written as shape is decimal|0f this succeeds with integer 0
    if shape is decimal || shape == 0f {
        return reg;
    }
    else {
        return { value: shape, semType: ty };
    }
}

function constExprEffect(ExprContext cx, bir:BasicBlock block, t:SingleValue value, ValueFlags flags) returns ExprEffect {    
    return { result: { value, semType: constSemType(cx, value, flags) }, block };
}

function constSemType(ExprContext cx, t:SingleValue value, ValueFlags flags) returns t:SemType {
    return (flags & VALUE_SINGLE_SHAPE) != 0 ? t:singleton(cx.mod.tc, value) : t:constBasicType(value);
}

const VALUE_CONST = 1;
const VALUE_SINGLE_SHAPE = 2;
type ValueFlags int;

function operandValue(bir:Operand operand) returns [t:SingleValue, ValueFlags] {
    if operand is bir:ConstOperand {
        var value = operand.value;
        ValueFlags flags = VALUE_CONST;
        t:WrappedSingleValue? wrapped = t:singleShape(operand.semType);
        if wrapped != () {
            if wrapped.value != value {
                panic err:impossible(`inconsistent value/type ${value.toBalString()}/${wrapped.value.toBalString()}`);
            }
            flags |= VALUE_SINGLE_SHAPE;
        }
        return [value, flags];
    }
    else {
        t:WrappedSingleValue? wrapped = t:singleShape(operand.semType);
        if wrapped != () {
            return [wrapped.value, VALUE_SINGLE_SHAPE];
        }
        return [(), 0];
    }
}

function floatOperandValue(bir:FloatOperand operand) returns [float, ValueFlags] {
    if operand is bir:FloatConstOperand {
        float value = operand.value;
        ValueFlags flags = VALUE_CONST;
        float? shape = t:singleFloatShape(operand.semType);
        if shape != () {
            if shape != value {
                panic err:impossible(`inconsistent float value/type ${value}/${shape}`);
            }
            flags |= VALUE_SINGLE_SHAPE;
        }
        return [value, flags];
    }
    else {
        float? shape = t:singleFloatShape(operand.semType);
        if shape != () {
            return [shape, VALUE_SINGLE_SHAPE];
        }
        return [0f, 0];
    }
}

function decimalOperandValue(bir:DecimalOperand operand) returns [decimal, ValueFlags] {
    if operand is bir:DecimalConstOperand {
        decimal value = operand.value;
        ValueFlags flags = VALUE_CONST;
        decimal? shape = t:singleDecimalShape(operand.semType);
        if shape != () {
            if shape != value {
                panic err:impossible(`inconsistent decimal value/type ${value}/${shape}`);
            }
            flags |= VALUE_SINGLE_SHAPE;
        }
        return [value, flags];
    }
    else {
        decimal? shape = t:singleDecimalShape(operand.semType);
        if shape != () {
            return [shape, VALUE_SINGLE_SHAPE];
        }
        return [0d, 0];
    }
}

function intOperandValue(bir:IntOperand operand) returns [int, ValueFlags] {
    if operand is bir:IntConstOperand {
        int value = operand.value;
        ValueFlags flags = VALUE_CONST;
        int? shape = t:singleIntShape(operand.semType);
        if shape != () {
            if shape != value {
                panic err:impossible(`inconsistent int value/type ${value}/${shape}`);
            }
            flags |= VALUE_SINGLE_SHAPE;
        }
        return [value, flags];
    }
    else {
        int? shape = t:singleIntShape(operand.semType);
        if shape != () {
            return [shape, VALUE_SINGLE_SHAPE];
        }
        return [0, 0];
    }
}

function booleanOperandValue(bir:BooleanOperand operand) returns [boolean, ValueFlags] {
    if operand is bir:BooleanConstOperand {
        boolean value = operand.value;
        ValueFlags flags = VALUE_CONST;
        boolean? shape = t:singleBooleanShape(operand.semType);
        if shape != () {
            if shape != value {
                panic err:impossible(`inconsistent boolean value/type ${value}/${shape}`);
            }
            flags |= VALUE_SINGLE_SHAPE;
        }
        return [value, flags];
    }
    else {
        boolean? shape = t:singleBooleanShape(operand.semType);
        if shape != () {
            return [shape, VALUE_SINGLE_SHAPE];
        }
        return [false, 0];
    }
}

function stringOperandValue(bir:StringOperand operand) returns [string, ValueFlags] {
    if operand is bir:StringConstOperand {
        string value = operand.value;
        ValueFlags flags = VALUE_CONST;
        string? shape = t:singleStringShape(operand.semType);
        if shape != () {
            if shape != value {
                panic err:impossible(`inconsistent string value/type ${value}/${shape}`);
            }
            flags |= VALUE_SINGLE_SHAPE;
        }
        return [value, flags];
    }
    else {
        string? shape = t:singleStringShape(operand.semType);
        if shape != () {
            return [shape, VALUE_SINGLE_SHAPE];
        }
        return ["", 0];
    }
}
