import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type CodeGenError err:Semantic|err:Unimplemented;

type ExprEffect record {|
    bir:BasicBlock block;
    bir:Operand result;
    // This is non-nil when the expression is a boolean expression that case causes the type
    // of a variable to be narrowed when the expression is used as a condition.
    // We do not have `&&` and `||` yet, so only one variable is narrowed.
    ExprNarrowing? narrowing = ();
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
type ExprNarrowing record {|
    Binding binding;
    t:SemType ifTrue;
    t:SemType ifFalse;
    bir:InsnRef testInsn;
    boolean negated = false;
|};

class CodeGenFoldContext {
    *FoldContext;
    final CodeGenContext cx;
    final Environment env;

    function init(CodeGenContext cx, Environment env) {
        self.cx = cx;
        self.env = env;
    }

    function lookupConst(string? prefix, string varName, Position pos) returns t:WrappedSingleValue|FoldError|() {
        if prefix != () {
            return { value: check lookupImportedConst(self.cx.mod, self.cx.functionDefn, prefix, varName) };
        }
        t:SingleValue|Binding v = check lookupVarRef(self.cx, varName, self.env, pos);
        if v is t:SingleValue {
            return { value: v };
        }
        return ();
    }

    public function semanticErr(d:Message msg, Position|Range pos, error? cause = ()) returns err:Semantic {
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

function addAssignments(Assignment[] dest, Assignment[] src, int excludeStart) {
    foreach Assignment a in src {
        if a.unnarrowedReg < excludeStart {
            dest.push(a);
        }
    }
}

function codeGenExprForBoolean(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|BooleanExprEffect {
    var { result, block, narrowing } = check codeGenExpr(cx, bb, env, expr);
    if result is bir:BooleanOperand {
        // rest of the type checking is in the verifier
        return { result, block, narrowing };
    }
    return cx.semanticErr("expected boolean operand", s:range(expr));
}

function codeGenExprForInt(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|IntExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, env, expr);
    return { result: check intOperand(cx, result, expr), block };
}

function codeGenExprForString(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|StringExprEffect {
    var { result, block } = check codeGenExpr(cx, bb, env, expr);
    if result is bir:StringOperand {
        // rest of the type checking is in the verifier
        return { result, block };
    }
    return cx.semanticErr("expected string operand", s:range(expr));
}

function codeGenExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:Expr expr) returns CodeGenError|ExprEffect {
    match expr {
        var { opPos: pos, arithmeticOp: op, left, right } => {
            var { lhs, rhs, nextBlock, ifNilBlock } = check codeGenBinaryNilLift(cx, env, left, right, bb, pos);
            return codeGenNilLiftResult(cx, check codeGenArithmeticBinaryExpr(cx, nextBlock, op, pos, lhs, rhs), ifNilBlock, pos);
        }
        // Negation
        { opPos: var pos, op: "-",  operand: var o } => {
            var { operand, nextBlock, ifNilBlock } = check codeGenUnaryNilLift(cx, env, o, bb, pos);
            return codeGenNilLiftResult(cx, check codeGenNegateExpr(cx, nextBlock, pos, operand), ifNilBlock, pos);
        }
        // Bitwise complement
        { opPos: var pos, op: "~",  operand: var o } => {
            var { operand: liftedOperand, nextBlock, ifNilBlock } = check codeGenUnaryNilLift(cx, env, o, bb, pos);
            if liftedOperand is int {
                return { result: ~liftedOperand, block: nextBlock };
            }
            bir:Register result = cx.createTmpRegister(t:INT, pos);
            bir:IntOperand operand = check intOperand(cx, liftedOperand, o);
            bir:IntBitwiseBinaryInsn insn = { op: "^", pos, operands: [-1, operand], result };
            nextBlock.insns.push(insn);
            return codeGenNilLiftResult(cx, { result, block: nextBlock }, ifNilBlock, pos);
        }
        { opPos: var pos, op: "!",  operand: var o } => {
            var { result: operand, block: nextBlock, narrowing } = check codeGenExprForBoolean(cx, bb, env, o);
            if operand is boolean {
                return { result: !operand, block: nextBlock };
            }
            bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);
            bir:BooleanNotInsn insn = { operand, result, pos };
            nextBlock.insns.push(insn);
            if narrowing != () {
                narrowing.negated = !narrowing.negated;
            }
            return { result, block: nextBlock, narrowing };
        }
        var { checkingKeyword, operand, kwPos: pos } => {
            return codeGenCheckingExpr(cx, bb, env, checkingKeyword, operand, pos);
        }
        var { opPos: pos, logicalOp: op, left, right } => {
            var { result: l, block: block1 } = check codeGenExprForBoolean(cx, bb, env, left);
            var { result: r, block: nextBlock } = check codeGenExprForBoolean(cx, block1, env, right);
            return codeGenLogicalBinaryExpr(cx, nextBlock, op, pos, l, r);
        }
        var { opPos: pos, bitwiseOp: op, left, right } => {
            var { lhs, rhs, nextBlock, ifNilBlock } = check codeGenBinaryNilLift(cx, env, left, right, bb, pos);
            bir:IntOperand l = check intOperand(cx, lhs, left);
            bir:IntOperand r = check intOperand(cx, rhs, right);
            return codeGenNilLiftResult(cx, check codeGenBitwiseBinaryExpr(cx, nextBlock, op, pos, l, r), ifNilBlock, pos);
        }
        var { opPos: pos, equalityOp: op, left, right } => {
            return codeGenEqualityExpr(cx, bb, env, op, pos, left, right);
        }
        var { opPos: pos, relationalOp: op, left, right } => {
            return codeGenRelationalExpr(cx, bb, env, op, pos, left, right);
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
            var { result: l, block: nextBlock } = check codeGenExpr(cx, bb, env, check cx.foldExpr(env, container, ()));
            return codeGenMemberAccessExpr(cx, nextBlock, env, pos, l, index);
        }
        // Field access
        var { container, fieldName, opPos: pos } => {
            var { result: l, block: nextBlock } = check codeGenExpr(cx, bb, env, check cx.foldExpr(env, container, ()));
            return codeGenFieldAccessExpr(cx, nextBlock, env, pos, l, fieldName);
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

function codeGenNilLiftResult(CodeGenContext cx, ExprEffect nonNilEffect, bir:BasicBlock? ifNilBlock, Position pos) returns ExprEffect {
    if ifNilBlock == () {
        return nonNilEffect;
    }
    else {
        bir:BasicBlock block = cx.createBasicBlock();
        bir:Operand nonNilResult = nonNilEffect.result;
        bir:BasicBlock nonNilBlock = nonNilEffect.block;

        bir:Register result = cx.createTmpRegister(t:union(operandSemType(cx.mod.tc, nonNilResult), t:NIL));
        bir:AssignInsn nilAssign = { result, operand: (), pos };
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

function codeGenBinaryNilLift(CodeGenContext cx, Environment env, s:Expr left, s:Expr right, bir:BasicBlock bb, Position pos) returns BinaryNilLiftResult|CodeGenError {
    var { operands, nextBlock, ifNilBlock } = check codeGenNilLift(cx, env, [left, right], bb, pos);
    return { lhs: operands[0], rhs: operands[1], nextBlock, ifNilBlock };
}

function codeGenUnaryNilLift(CodeGenContext cx, Environment env, s:Expr operand, bir:BasicBlock bb, Position pos) returns UnaryNilLiftResult|CodeGenError {
    var { operands, nextBlock, ifNilBlock } = check codeGenNilLift(cx, env, [operand], bb, pos);
    return { operand: operands[0], nextBlock, ifNilBlock };
}

function codeGenNilLift(CodeGenContext cx, Environment env, s:Expr[] operands, bir:BasicBlock bb, Position pos) returns NilLiftResult|CodeGenError {
    bir:BasicBlock? ifNilBlock = ();
    bir:BasicBlock currentBlock = bb;
    bir:Operand[] newOperands = [];
    foreach s:Expr operandExpr in operands {
        var { result: operand, block } = check codeGenExpr(cx, currentBlock, env, operandExpr);
        currentBlock = block;
        newOperands.push(operand);
    }
    bir:BasicBlock nextBlock = currentBlock;
    foreach int i in 0 ..< newOperands.length() {
        bir:Operand operand = newOperands[i];
        if operand is bir:Register && t:containsNil(operand.semType) {
            bir:Register isNil = cx.createTmpRegister(t:BOOLEAN);
            bir:TypeTestInsn operandTypeTest = { operand, semType: t:NIL , result: isNil, negated: false, pos };
            currentBlock.insns.push(operandTypeTest);

            nextBlock = cx.createBasicBlock();
            bir:InsnRef testInsnRef = bir:lastInsnRef(currentBlock);
            t:SemType baseType = t:diff(operand.semType, t:NIL);
            bir:Register newOperand = cx.createTmpRegister(baseType);
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
function codeGenMappingGet(CodeGenContext cx, bir:BasicBlock block, bir:Register mapping, MappingAccessType accessType, bir:StringOperand k, Position pos) returns CodeGenError|RegExprEffect {
    string? kVal = k is string ? k : ();
    boolean maybeMissing = true;
    if kVal != () {
        if t:mappingMemberRequired(cx.mod.tc, mapping.semType, kVal) {
            maybeMissing = false;
        }
        else if accessType == "." {
            return cx.semanticErr(`field access to ${kVal} is invalid because field may not be present`, pos=pos);
        }
    }
    t:SemType memberType = t:mappingMemberType(cx.mod.tc, mapping.semType, kVal);
    bir:INSN_MAPPING_FILLING_GET|bir:INSN_MAPPING_GET name = bir:INSN_MAPPING_GET;
    if maybeMissing {
        if accessType == "fill" {
            name = bir:INSN_MAPPING_FILLING_GET;
        }
        else {
            memberType = t:union(memberType, t:NIL);
        }
    }
    bir:Register result = cx.createTmpRegister(memberType, pos);
    bir:Insn insn = { name, result, operands: [mapping, k], pos };
    block.insns.push(insn);
    return { result, block };
}

function codeGenFieldAccessExpr(CodeGenContext cx, bir:BasicBlock nextBlock, Environment env, Position pos, bir:Operand l, string fieldName) returns CodeGenError|ExprEffect {
    if l is bir:Register && t:isSubtypeSimple(l.semType, t:MAPPING)  {
        return codeGenMappingGet(cx, nextBlock, l, ".", fieldName, pos);
    }
    return cx.semanticErr("can only apply field access to mapping", pos=pos);
}

function codeGenMemberAccessExpr(CodeGenContext cx, bir:BasicBlock block1, Environment env, Position pos, bir:Operand l, s:Expr index, boolean fill=false) returns CodeGenError|ExprEffect {
    if l is bir:Register {
        if t:isSubtypeSimple(l.semType, t:LIST) {
            var { result: r, block: nextBlock } = check codeGenExprForInt(cx, block1, env, check cx.foldExpr(env, index, t:INT));
            t:SemType memberType = t:listMemberType(cx.mod.tc, l.semType, r is int ? r : ());
            if t:isEmpty(cx.mod.tc, memberType) {
                return cx.semanticErr("type of member access is never", pos);
            }
            // XXX this isn't correct for singletons
            bir:Register result = cx.createTmpRegister(memberType, pos);
            bir:ListGetInsn insn = { result, operands: [l, r], pos, fill };
            nextBlock.insns.push(insn);
            return { result, block: nextBlock };
        }
        else if t:isSubtypeSimple(l.semType, t:MAPPING) {
            var { result: r, block: nextBlock } = check codeGenExprForString(cx, block1, env, check cx.foldExpr(env, index, t:STRING));
            return codeGenMappingGet(cx, nextBlock, l, fill ? "fill" : "[", r, pos);
        }
        else if t:isSubtypeSimple(l.semType, t:STRING) {
            return cx.unimplementedErr("not implemented: member access on string", pos=pos);
        }
    }
    return cx.semanticErr("can only apply member access to list or mapping", pos=pos);     
}

function codeGenNegateExpr(CodeGenContext cx, bir:BasicBlock nextBlock, Position pos, bir:Operand operand) returns CodeGenError|ExprEffect {
    TypedOperand? typed = typedOperand(operand);
    bir:Register result;
    bir:Insn insn;
    if typed is ["int", bir:IntOperand] {
        bir:IntOperand intOperand = typed[1];
        if intOperand is int {
            return { result: check intNegateEval(cx, pos, intOperand), block: nextBlock };
        }
        result = cx.createTmpRegister(t:INT, pos);
        insn = <bir:IntArithmeticBinaryInsn> { op: "-", pos, operands: [0, intOperand], result };
    }
    else if typed is ["float", bir:FloatOperand] {
        bir:FloatOperand floatOperand = typed[1];
        t:SemType resultType = t:FLOAT;
        float? shape = floatOperandSingleShape(floatOperand);
        if shape != () {
            float resultShape = -shape; // shouldn't ever panic
            if shape != 0f || shape == operand {
                return { result: resultShape, block: nextBlock };
            }
            resultType = t:singleton(cx.mod.tc, resultShape);
        }
        result = cx.createTmpRegister(resultType, pos);
        insn = <bir:FloatNegateInsn> { operand: <bir:Register>floatOperand, result, pos };
    }
    else if typed is ["decimal", bir:DecimalOperand] {
        bir:DecimalOperand decimalOperand = typed[1];
        decimal? shape = decimalOperandSingleShape(decimalOperand);
        t:SemType resultType;
        if shape != () {
            decimal resultShape = -shape; // shouldn't ever panic
            if decimalOperand is bir:Register {
                resultType = t:singleton(cx.mod.tc, resultShape);
            }
            else {
                return { result: resultShape, block: nextBlock };
            }
        }
        else {
            resultType = t:DECIMAL;
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

function codeGenArithmeticBinaryExpr(CodeGenContext cx, bir:BasicBlock bb, bir:ArithmeticBinaryOp op, Position pos, bir:Operand lhs, bir:Operand rhs) returns CodeGenError|ExprEffect {
    TypedOperandPair? pair = typedOperandPair(lhs, rhs);
    bir:Register result;
    if pair is IntOperandPair {
        readonly & bir:IntOperand[2] operands = pair[1];
        bir:IntOperand leftOperand = operands[0];
        bir:IntOperand rightOperand = operands[1];
        if leftOperand is int && rightOperand is int {
            return { result: check intArithmeticEval(cx, pos, op, leftOperand, rightOperand), block: bb };
        }
        result = cx.createTmpRegister(t:INT, pos);
        bir:IntArithmeticBinaryInsn insn = { op, pos, operands, result };
        bb.insns.push(insn);
    }
    else if pair is FloatOperandPair {
        readonly & bir:FloatOperand[2] operands = pair[1];
        t:SemType resultType = t:FLOAT;
        float? leftShape = floatOperandSingleShape(operands[0]);
        float? rightShape = floatOperandSingleShape(operands[1]);
        if leftShape != () && rightShape != () && !(op == "/" && rightShape == 0f) {
            float resultShape = floatArithmeticEval(op, leftShape, rightShape);
            // only 0f shape has multiple shapes
            if resultShape != 0f || (leftShape == lhs && rightShape == rhs) {
                return { result: resultShape, block: bb };
            }
            resultType = t:singleton(cx.mod.tc, resultShape);
        }
        result = cx.createTmpRegister(resultType, pos);
        bir:FloatArithmeticBinaryInsn insn = { op, pos, operands, result };
        bb.insns.push(insn);
    }
    else if pair is DecimalOperandPair {
        readonly & bir:DecimalOperand[2] operands = pair[1];
        decimal? leftShape = decimalOperandSingleShape(operands[0]);
        decimal? rightShape = decimalOperandSingleShape(operands[1]);
        t:SemType resultType;
        if leftShape != () && rightShape != () {
            decimal resultShape = check decimalArithmeticEval(cx, pos, op, leftShape, rightShape);
            if leftShape == lhs && rightShape == rhs {
                return { result: resultShape, block: bb };
            }
            resultType = t:singleton(cx.mod.tc, resultShape);
        }
        else {
            resultType = t:DECIMAL;
        }
        result = cx.createTmpRegister(resultType, pos);
        bir:DecimalArithmeticBinaryInsn insn = { op, pos, operands, result };
        bb.insns.push(insn);
    }    
    else if pair is StringOperandPair && op == "+" {
        readonly & bir:StringOperand[2] operands = pair[1];
        bir:StringOperand leftOperand = operands[0];
        bir:StringOperand rightOperand = operands[1];
        if leftOperand is string && rightOperand is string {
            return { result: leftOperand + rightOperand, block: bb };
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

function codeGenLogicalBinaryExpr(CodeGenContext cx, bir:BasicBlock bb, s:BinaryLogicalOp op, Position pos, bir:BooleanOperand lhs, bir:BooleanOperand rhs) returns CodeGenError|ExprEffect {
    if lhs is boolean && rhs is boolean {
        return { result: logicalEval(op, lhs, rhs), block: bb };
    }
    return cx.unimplementedErr(`not implemented: logical expressions on non-constant values`, pos);
}

function codeGenBitwiseBinaryExpr(CodeGenContext cx, bir:BasicBlock bb, s:BinaryBitwiseOp op, Position pos, bir:IntOperand lhs, bir:IntOperand rhs) returns CodeGenError|ExprEffect {
    if lhs is int && rhs is int {
        return { result: bitwiseEval(op, lhs, rhs), block: bb };
    }
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
        return cx.semanticErr("list not allowed in this context", s:range(expr));
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

function codeGenRelationalExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:BinaryRelationalOp op, Position pos, s:Expr left, s:Expr right) returns CodeGenError|ExprEffect {
    var { result: l, block: block1 } = check codeGenExpr(cx, bb, env, left);
    var { result: r, block: nextBlock } = check codeGenExpr(cx, block1, env, right);
    t:Context tc = cx.mod.tc;

    t:SemType lType = operandSemType(tc, l);
    t:SemType rType = operandSemType(tc, r);
    if !t:comparable(tc, lType, rType) {
        return cx.semanticErr(`operands of ${op} do not belong to an ordered type`, pos);
    }
    t:WrappedSingleValue? lShape = operandSingleShape(l);
    t:WrappedSingleValue? rShape = operandSingleShape(r);
    if lShape != () && rShape != () {
        boolean result = check relationalEval(cx, pos, op, lShape.value, rShape.value);
        return { result, block: nextBlock };
    }
    bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);
    bir:CompareInsn insn = { op, pos, operands: [l, r], result };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenEqualityExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:BinaryEqualityOp op, Position pos, s:Expr left, s:Expr right) returns CodeGenError|ExprEffect {
    var { result: l, block: block1, binding: lBinding } = check codeGenExpr(cx, bb, env, left);
    var { result: r, block: nextBlock, binding: rBinding } = check codeGenExpr(cx, block1, env, right);
    t:Context tc = cx.mod.tc;

    t:SemType lType = operandSemType(tc, l);
    t:SemType rType = operandSemType(tc, r);
    if t:isEmpty(tc, t:intersect(lType, rType)) {
        return cx.semanticErr(`intersection of operands of operator ${op} is empty`, pos);
    }
    boolean exact = op.length() == 3;
    boolean negated = op.startsWith("!");

    if !exact {
        t:SemType ad = t:createAnydata(tc);
        if !t:isSubtype(tc, lType, ad) && !t:isSubtype(tc,rType, ad) {
            return cx.semanticErr(`type of at least one operand of ${op} operator must be a subtype of anydata`, pos);
        }
        t:WrappedSingleValue? lShape = operandSingleShape(l);
        t:WrappedSingleValue? rShape = operandSingleShape(r);
        // we only need to check for shapes being equal, since unequal shapes would result in empty intersection
        if lShape != () && lShape == rShape {
            return { result: !negated, block: nextBlock };
        }
    }
    // XXX fold rewrite: need to fold exact case here

    bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);

    bir:EqualityInsn insn = { op, pos, operands: [l, r], result };
    nextBlock.insns.push(insn);
    [Binding, SimpleConst]? narrowingCompare = ();
    if !exact {
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
        t:SemType ifTrue = t:singleton(tc, value);
        t:SemType ifFalse = t:roDiff(tc, binding.reg.semType, ifTrue);
        if negated {
            [ifTrue, ifFalse] = [ifFalse, ifTrue];
        }
        ExprNarrowing narrowing = {
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
    if v is t:SingleValue {
        result = v;
        binding = ();
    }
    else {
        t:WrappedSingleValue? wrapped = t:singleShape(v.reg.semType);
        // for decimal, we need the register to preserve precision
        // for 0f, we need the register to preserve the sign
        if wrapped != () && wrapped.value !is decimal && wrapped.value != 0.0f {
            result = wrapped.value;
            binding = ();
        }
        else {
            result = v.reg;
            binding = v;
        }
    }
    return { result, block: bb, binding };
}

function codeGenTypeCast(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:TypeCastExpr tcExpr) returns CodeGenError|ExprEffect {
    var { result: operand, block: nextBlock } = check codeGenExpr(cx, bb, env, tcExpr.operand);
    t:SemType fromType = operandSemType(cx.mod.tc, operand);
    t:SemType toType = check cx.resolveTypeDesc(tcExpr.td);
    t:UniformTypeBitSet? toNumType = t:singleNumericType(toType);
    if toNumType != () && !t:isSubtypeSimple(t:intersect(fromType, t:NUMBER), toNumType) {
        // do numeric conversion now
        toType = t:diff(toType, t:diff(t:NUMBER, toNumType));
        t:WrappedSingleValue? wrapped = operandSingleShape(operand);
        if wrapped != () {
            t:SingleValue shape = wrapped.value;
            if toNumType == t:INT {
                if shape is float|decimal {
                    operand = check convertToIntEval(cx, tcExpr.opPos, shape);
                    fromType = operandSemType(cx.mod.tc, operand);
                }
            }
            else if toNumType == t:FLOAT {
                if shape is int|decimal {
                    operand = <float>shape;
                    fromType = operandSemType(cx.mod.tc, operand);
                }
            }
            else {
                if shape is int|float {
                    operand = check convertToDecimalEval(cx, tcExpr.opPos, shape);
                    fromType = operandSemType(cx.mod.tc, operand);
                }
            }
        }
        else if operand is bir:Register { // always true but does needed narrowing
            bir:Register result = cx.createTmpRegister(t:union(t:diff(fromType, t:NUMBER), toNumType), tcExpr.opPos);
            if toNumType == t:INT {
                bir:ConvertToIntInsn insn = { operand, result, pos: tcExpr.opPos };
                nextBlock.insns.push(insn);
            }
            else if toNumType == t:FLOAT {
                bir:ConvertToFloatInsn insn = { operand, result, pos: tcExpr.opPos };
                nextBlock.insns.push(insn);
            }
            else {
                bir:ConvertToDecimalInsn insn = { operand, result, pos: tcExpr.opPos };
                nextBlock.insns.push(insn);
            }
            operand = result;
            fromType = result.semType;
        }
    }
    if t:isSubtype(cx.mod.tc, fromType, toType) {
        // it's redundant, so we can remove it
        return { result: operand, block: nextBlock };
    }
    t:SemType resultType = t:intersect(fromType, toType);
    if t:isEmpty(cx.mod.tc, resultType) {
        return cx.semanticErr("type cast will always panic", tcExpr.opPos);
    }
    bir:Register result = cx.createTmpRegister(resultType, tcExpr.opPos);
    bir:Register reg = <bir:Register>operand;
    bir:TypeCastInsn insn = { operand: reg, semType: toType, pos: tcExpr.opPos, result };
    nextBlock.insns.push(insn);
    return { result, block: nextBlock };
}

function codeGenTypeTest(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:TypeDesc td, s:Expr left, boolean negated, Position pos) returns CodeGenError|ExprEffect {
    t:SemType semType = check cx.resolveTypeDesc(td);
    var { result: operand, block: nextBlock, binding } = check codeGenExpr(cx, bb, env, left);
    t:Context tc = cx.mod.tc;  
    t:SemType curSemType = operandSemType(tc, operand);
    t:SemType diff = t:roDiff(tc, curSemType, semType);
    if t:isEmpty(tc, diff) {
        return { result: !negated, block: nextBlock };
    }
    t:SemType intersect;
    if t:isSubtype(tc, semType, curSemType) {
        intersect = semType;
    }
    else {
        intersect = t:intersect(curSemType, semType);
    }
    if t:isEmpty(tc, intersect) {
        return { result: negated, block: nextBlock };
    }
    bir:Register result = cx.createTmpRegister(t:BOOLEAN, pos);
    // Either diff or intersect should be empty if the operand is singleton
    bir:Register reg = <bir:Register>operand;
    bir:TypeTestInsn insn = { operand: reg, semType, result, negated, pos };
    nextBlock.insns.push(insn);
    if negated {
        [intersect, diff] = [diff, intersect];
    }
    ExprNarrowing? narrowing = ();
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
        { block, result: _ } = check codeGenCheckingCond(cx, nextBlock, operand, errorType, checkingKeyword, resultType, pos);
    }
    // resultType === NEVER case is already handled
    if resultType !== t:NIL {
        return cx.semanticErr(`operand of ${checkingKeyword} statement must be a subtype of error?`, pos);
    }
    return { block };
}

function codeGenCheckingExpr(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:CheckingKeyword checkingKeyword, s:Expr expr, Position pos) returns CodeGenError|ExprEffect {
    // Checking expr falls into one of : 1) never err 2) conditionally err
    var { result: o, block: nextBlock } = check codeGenExpr(cx, bb, env, expr);
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
        return codeGenCheckingCond(cx, nextBlock, operand, errorType, checkingKeyword, resultType, pos);
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

type SingleShapeMultipleValues decimal|0f;

function codeGenFunctionCall(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:FunctionCallExpr expr) returns CodeGenError|ExprEffect {
    string? prefix = expr.prefix;
    bir:FunctionRef func;
    if prefix == () {
        func = check genLocalFunctionRef(cx, env, expr.funcName, expr.qNamePos);
    }
    else {
        func = check genImportedFunctionRef(cx, env, prefix, expr.funcName, expr.qNamePos);
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
    return codeGenCall(cx, curBlock, func, args, expr.qNamePos);
}

function codeGenMethodCall(CodeGenContext cx, bir:BasicBlock bb, Environment env, s:MethodCallExpr expr) returns CodeGenError|ExprEffect {
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
    return codeGenCall(cx, curBlock, func, args, expr.namePos);
}

function codeGenCall(CodeGenContext cx, bir:BasicBlock curBlock, bir:FunctionRef func, bir:Operand[] args, Position pos) returns ExprEffect {
    t:SemType returnType = func.signature.returnType;
    bir:Register reg = cx.createTmpRegister(returnType, pos);
    bir:CallInsn call = {
        func,
        result: reg,
        args: args.cloneReadOnly(),
        pos
    };
    curBlock.insns.push(call);
    t:WrappedSingleValue? returnShape = t:singleShape(returnType);
    bir:Operand result = returnShape == () || returnShape.value is SingleShapeMultipleValues ? reg : returnShape.value;
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

type LangLibModuleName "int"|"boolean"|"string"|"array"|"map"|"error";

function getLangLibFunctionRef(CodeGenContext cx, bir:Operand target, string methodName, Position|Range nameRange) returns bir:FunctionRef|CodeGenError {
    TypedOperand? t = typedOperand(target);
    if t != () && t[0] is LangLibModuleName {
        string moduleName = t[0];
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
            if t[0] == "array" {
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

function lookupVarRef(CodeGenContext cx, string name, Environment env, Position pos) returns t:SingleValue|Binding|CodeGenError {
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

type IntOperandPair readonly & ["int", [bir:IntOperand, bir:IntOperand]];
type FloatOperandPair readonly & ["float", [bir:FloatOperand, bir:FloatOperand]];
type DecimalOperandPair readonly & ["decimal", [bir:DecimalOperand, bir:DecimalOperand]];
type StringOperandPair readonly & ["string", [bir:StringOperand, bir:StringOperand]];

type TypedOperandPair IntOperandPair|DecimalOperandPair|FloatOperandPair|StringOperandPair;

// XXX should use t:UT_* instead of strings here (like the ordering stuff)
type TypedOperand readonly & (["array", bir:Register]
                              |["map", bir:Register]
                              |["error", bir:Register]
                              |["string", bir:StringOperand]
                              |["float", bir:FloatOperand]
                              |["decimal", bir:DecimalOperand]
                              |["int", bir:IntOperand]
                              |["boolean", bir:BooleanOperand]
                              |["nil", bir:NilOperand]);

function typedOperandPair(bir:Operand lhs, bir:Operand rhs) returns TypedOperandPair? {
    TypedOperand? l = typedOperand(lhs);
    TypedOperand? r = typedOperand(rhs);
    if l is ["int", bir:IntOperand] && r is ["int", bir:IntOperand] {
        return ["int", [l[1], r[1]]];
    }
    if l is ["float", bir:FloatOperand] && r is ["float", bir:FloatOperand] {
        return ["float", [l[1], r[1]]];
    }
    if l is ["decimal", bir:DecimalOperand] && r is ["decimal", bir:DecimalOperand] {
        return ["decimal", [l[1], r[1]]];
    }
    if l is ["string", bir:StringOperand] && r is ["string", bir:StringOperand] {
        return ["string", [l[1], r[1]]];
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
        else if t:isSubtypeSimple(operand.semType, t:DECIMAL) {
            return ["decimal", operand];
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
    else if operand is decimal {
        return ["decimal", operand];
    }
    else if operand is boolean {
        return ["boolean", operand];
    }
    else {
        return ["nil", operand];
    }
    return ();
}

function operandSemType(t:Context tc, bir:Operand operand) returns t:SemType {
    return operand is bir:Register ? operand.semType : t:singleton(tc, operand);
}

function operandSingleShape(bir:Operand operand) returns t:WrappedSingleValue? {
    return operand is bir:Register ? t:singleShape(operand.semType) : { value: operand };
}

function decimalOperandSingleShape(bir:DecimalOperand operand) returns decimal? {
    return operand is decimal ? operand : t:singleDecimalShape(operand.semType);
}

function floatOperandSingleShape(bir:FloatOperand operand) returns float? {
    return operand is float ? operand : t:singleFloatShape(operand.semType);
}

function intOperand(CodeGenContext cx, bir:Operand operand, s:Expr expr) returns bir:IntOperand|CodeGenError {
    if operand is bir:IntOperand {
        return operand;
    }
    return cx.semanticErr("expected an int operand", s:range(expr));
}
