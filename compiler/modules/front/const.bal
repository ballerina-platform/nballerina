// Constant folding is used for several purposes
// 1. for evaluating the RHS of a const definition at compile time
// 2. for determining whether the type of a conditional expression is singleton true/false (which affects reachability)
// 3. for improving generated code quality, particularly for cases where LLVM cannot do folding (e.g. strings)
// Complications arise when purpose 1 and 2 need things done differently. Specifically:
// - when the type of variable has been narrowed to singleton float zero, we do not know whether its value is +0f or -0f
// (i.e. must be folded for purpose 2 but does not allow folding for purpose 1)
// (this applies even more in case of decimal precision)
// - the type of an === expression is boolean, even if the operands have singleton type (i.e. foldable for purpose 
// does not imply foldable for purpose 2)
// These lead to cascading effects in expressions that contain them.
import wso2/nballerina.err;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.types as t;

type SimpleConst string|int|float|boolean|();

type FoldError ResolveTypeError;

type FoldContext object {
    function semanticErr(err:Message msg, s:Position? pos = (), error? cause = ()) returns err:Semantic;
    // Return value of FLOAT_ZERO means shape is FLOAT_ZERO but value (+0 or -0) is unknown
    function lookupConst(string? prefix, string varName) returns s:FLOAT_ZERO|t:Value?|FoldError;
    function typeContext() returns t:Context;
    function resolveTypeDesc(s:TypeDesc td) returns FoldError|t:SemType;
    function isConstDefn() returns boolean;
};

class ConstFoldContext {
    *FoldContext;
    final ModuleSymbols mod;
    final s:ModuleLevelDefn defn;

    function init(s:ModuleLevelDefn defn, ModuleSymbols mod) {
        self.defn = defn;
        self.mod = mod;
    }
    
    function semanticErr(err:Message msg, s:Position? pos = (), error? cause = ()) returns err:Semantic {
        return err:semantic(msg, loc=err:location(self.defn.part.file, pos), cause=cause, functionName=self.defn.name);
    }

    function lookupConst(string? prefix, string varName) returns s:FLOAT_ZERO|t:Value?|FoldError {
        if prefix != () {
            return lookupImportedConst(self.mod, self.defn, prefix, varName);
        }
        s:ModuleLevelDefn? defn = self.mod.defns[varName];
        if defn is s:ConstDefn {
            var resolved = check resolveConstDefn(self.mod, defn);
            return resolved[1];
        }
        else if defn == () {
            return self.semanticErr(`${varName} is not defined`);
        }
        else {
            return self.semanticErr(`reference to ${varName} not defined with const`);
        }
    }

    function typeContext() returns t:Context {
        return self.mod.tc;
    }

    function resolveTypeDesc(s:TypeDesc td) returns FoldError|t:SemType {
        return resolveSubsetTypeDesc(self.mod, self.defn, td);
    }

    function isConstDefn() returns boolean => true;
}

function resolveConstDefn(ModuleSymbols mod, s:ConstDefn defn) returns s:ResolvedConst|FoldError {
    var resolved = defn.resolved;
    if resolved is false {
        return err:semantic(`cycle in evaluating ${defn.name}`, s:defnLocation(defn));
    }
    else if resolved != () {
        return resolved;
    }
    else {
        defn.resolved = false;
        ConstFoldContext cx = new ConstFoldContext(defn, mod);
        s:SubsetBuiltinTypeDesc? td = defn.td;
        t:SemType? expectedType = td == () ? () : resolveBuiltinTypeDesc(td);
        s:Expr expr = check foldExpr(cx, expectedType, defn.expr);
        if expr is s:ConstValueExpr {
            if expectedType == () || t:containsConst(expectedType, expr.value) {
                s:ResolvedConst r = [t:singleton(expr.value), { value: expr.value }];
                defn.resolved = r;
                return r;
            }
            else {
                return err:semantic(`initializer of ${defn.name} is not a subtype of the declared type`, s:defnLocation(defn));
            }
        }
        else {
            return err:semantic(`initializer of ${defn.name} is not constant`, s:defnLocation(defn));
        }
    }
}

function foldExpr(FoldContext cx, t:SemType? expectedType, s:Expr expr) returns s:Expr|FoldError {
    if expr is s:BinaryArithmeticExpr {
        return foldBinaryArithmeticExpr(cx, expectedType, expr);
    } 
    else if expr is s:BinaryBitwiseExpr {
        return foldBinaryBitwiseExpr(cx, expectedType, expr);
    }
    else if expr is s:BinaryRelationalExpr {
        return foldBinaryRelationalExpr(cx, expectedType, expr);
    }
    else if expr is s:BinaryEqualityExpr {
        return foldBinaryEqualityExpr(cx, expectedType, expr);
    }
    else if expr is s:UnaryExpr {
        return foldUnaryExpr(cx, expectedType, expr);
    }
    else if expr is s:TypeCastExpr {
        return foldTypeCastExpr(cx, expectedType, expr);
    }
    else if expr is s:TypeTestExpr {
        return foldTypeTestExpr(cx, expectedType, expr);
    }
    else if expr is s:CheckingExpr {
        return foldCheckingExpr(cx, expectedType, expr);
    }
    else if expr is s:ListConstructorExpr {
        return foldListConstructorExpr(cx, expectedType, expr);
    }
    else if expr is s:MappingConstructorExpr {
        return foldMappingConstructorExpr(cx, expectedType, expr);
    }
    else if expr is s:VarRefExpr {
        return foldVarRefExpr(cx, expectedType, expr);
    }
    else if expr is s:IntLiteralExpr {
        return foldIntLiteralExpr(cx, expectedType, expr);
    }
    else if expr is s:FpLiteralExpr {
        return foldFloatLiteralExpr(cx, expectedType, expr);
    }
    else {
        return expr;
    } 
}

function foldListConstructorExpr(FoldContext cx, t:SemType? expectedType, s:ListConstructorExpr expr) returns s:Expr|FoldError {
    // SUBSET always have contextually expected type for list constructor
    t:SemType expectedListType = t:intersect(<t:SemType>expectedType, t:LIST_RW);
    t:SemType? memberType = t:simpleArrayMemberType(cx.typeContext(), expectedListType);
    s:Expr[] members = expr.members;
    foreach int i in 0 ..< members.length() {
        members[i] = check foldExpr(cx, memberType, members[i]);
    }
    expr.expectedType = expectedListType;
    return expr;
}

function foldMappingConstructorExpr(FoldContext cx, t:SemType? expectedType, s:MappingConstructorExpr expr) returns s:Expr|FoldError {
    // SUBSET always have contextually expected type for mapping constructor
    t:SemType expectedMappingType = t:intersect(<t:SemType>expectedType, t:MAPPING_RW);
    // SUBSET with unions of maps we will need to select from possibilities based on the field names
    if t:mappingAtomicTypeRw(cx.typeContext(), expectedMappingType) == () {
        return cx.semanticErr("no applicable inherent type for mapping constructor");
    }
    expr.expectedType = expectedMappingType;
    foreach s:Field f in expr.fields {
        t:SemType memberType = t:mappingMemberType(cx.typeContext(), expectedMappingType, f.name);
        f.value = check foldExpr(cx, memberType, f.value);
    }
    return expr;
}

function foldBinaryArithmeticExpr(FoldContext cx, t:SemType? expectedType, s:BinaryArithmeticExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, expectedType, expr.left);
    s:Expr rightExpr = check foldExpr(cx, expectedType, expr.right);
    if leftExpr is s:ConstShapeExpr && rightExpr is s:ConstShapeExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        if left is int && right is int {
            int|error result = trap intArithmeticEval(expr.arithmeticOp, left, right);
            if result is int {
                return foldedBinaryConstExpr(result, t:INT, leftExpr, rightExpr);
            }
            else {
                return cx.semanticErr(`evaluation of int constant ${expr.arithmeticOp} expression failed`, pos=expr.pos, cause=result);
            }
        }
        else if left is string && right is string && expr.arithmeticOp == "+" {
            return foldedBinaryConstExpr(left + right, t:STRING, leftExpr, rightExpr);
        }
        else if left is float && right is float {
            if expr.arithmeticOp == "/" && rightExpr is s:FloatZeroExpr {
                // type is float in this case
                expr.left = leftExpr;
                expr.right = rightExpr;
                return expr;
            }
            float f = floatArithmeticEval(expr.arithmeticOp, left, right);
            if f == 0.0 && (leftExpr is s:FloatZeroExpr || rightExpr is s:FloatZeroExpr) {
                if leftExpr is s:FloatZeroExpr {
                    expr.left = leftExpr.expr;
                }
                else {
                    expr.left = leftExpr;
                }
                if rightExpr is s:FloatZeroExpr {
                    expr.right = rightExpr.expr;
                }
                else {
                    expr.right = rightExpr;
                }
                s:Position startPos = expr.startPos;
                s:Position endPos = expr.endPos;
                s:FloatZeroExpr zeroExpr = { startPos, endPos, expr };
                return zeroExpr;
            }
            return foldedBinaryConstExpr(f, t:FLOAT, leftExpr, rightExpr);
        }
        else {
            return cx.semanticErr(`invalid operand types for ${expr.arithmeticOp}`);
        }
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldBinaryBitwiseExpr(FoldContext cx, t:SemType? expectedType, s:BinaryBitwiseExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, t:INT, expr.left);
    s:Expr rightExpr = check foldExpr(cx, t:INT, expr.right);
    if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        if left is int && right is int {
            return <s:ConstValueExpr> {
                startPos: expr.startPos,
                endPos: expr.endPos,
                value: bitwiseEval(expr.bitwiseOp, left, right),
                multiSemType: foldedBinaryBitwiseType(expr.bitwiseOp, left, leftExpr.multiSemType, right, rightExpr.multiSemType)
            };
        }
        return cx.semanticErr(`invalid operand types for ${expr.bitwiseOp}`);
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldedBinaryBitwiseType(s:BinaryBitwiseOp op, int left, t:SemType? lt, int right, t:SemType? rt) returns t:SemType? {
    if lt === () && rt === () {
        return ();
    }
    t:SemType leftType = t:widenUnsigned(lt ?: t:intConst(left));
    t:SemType rightType = t:widenUnsigned(rt ?: t:intConst(right));
    return op == "&" ? t:intersect(leftType, rightType) : t:union(leftType, rightType);    
}

function foldBinaryEqualityExpr(FoldContext cx, t:SemType? expectedType, s:BinaryEqualityExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, (), expr.left);
    s:Expr rightExpr = check foldExpr(cx, (), expr.right);
    boolean exact = (<string>expr.equalityOp).length() == 3; // either "===" or "!=="
    boolean positive = expr.equalityOp[0] == "=";
    if exact {
        if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
            boolean equal = isExactEqual(leftExpr.value, rightExpr.value);
            boolean value = positive == equal;
            if !equal && !isEqual(leftExpr.value, rightExpr.value) && simpleConstExprIntersectIsEmpty(leftExpr, rightExpr) {
                return cx.semanticErr(`intersection of types of operands of ${expr.equalityOp} is empty`);
            }
            return <s:ConstValueExpr> { startPos: expr.startPos, endPos: expr.endPos, value, multiSemType: t:BOOLEAN };
        }
    }
    else {
        if leftExpr is s:ConstShapeExpr && rightExpr is s:ConstShapeExpr {
            boolean equal = isEqual(leftExpr.value, rightExpr.value);
            boolean value = positive == equal;
            if !equal && simpleConstExprIntersectIsEmpty(leftExpr, rightExpr) {
                return cx.semanticErr(`intersection of types of operands of ${expr.equalityOp} is empty`);
            }
            return foldedBinaryConstExpr(value, t:BOOLEAN, leftExpr, rightExpr);
        }
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

// Remove after JBUG #17977, #32245 is fixed
function isEqual(SimpleConst c1, SimpleConst c2) returns boolean {
    return c1 is float && c2 is float ? (c1 == c2 || (float:isNaN(c1) && float:isNaN(c2))) : c1 == c2;
}

// Remove after JBUG #17977, #32247 is fixed
function isExactEqual(SimpleConst c1, SimpleConst c2) returns boolean {
    return c1 === c2 || (c1 is float && c2 is float && float:isNaN(c1) && float:isNaN(c2));
}

// Precondition is that the values are !=
function simpleConstExprIntersectIsEmpty(s:ConstShapeExpr leftExpr, s:ConstShapeExpr rightExpr) returns boolean {
    t:SemType? lt = leftExpr.multiSemType;
    t:SemType? rt = rightExpr.multiSemType;
    if lt == () {
        if rt == () {
            // precondition of this function is that the values are != 
            // so if the types are both singletons, the intersection must be empty
            return true;
        }
        else {
            return !t:containsConst(rt, leftExpr.value);
        }
    }
    else if rt == () {
        return !t:containsConst(lt, rightExpr.value);
    }
    else {
        return t:isNever(t:intersect(lt, rt));
    }
}

function foldBinaryRelationalExpr(FoldContext cx, t:SemType? expectedType, s:BinaryRelationalExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, (), expr.left);
    s:Expr rightExpr = check foldExpr(cx, (), expr.right);
    if leftExpr is s:ConstShapeExpr && rightExpr is s:ConstShapeExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        if left is int && right is int {
            return foldedBinaryConstExpr(intRelationalEval(expr.relationalOp, left, right), t:BOOLEAN, leftExpr, rightExpr);
        }
        else if left is float && right is float {
            return foldedBinaryConstExpr(floatRelationalEval(expr.relationalOp, left, right), t:BOOLEAN, leftExpr, rightExpr);
        }
        else if left is string && right is string {
            return foldedBinaryConstExpr(stringRelationalEval(expr.relationalOp, left, right), t:BOOLEAN, leftExpr, rightExpr);
        }
        else if left is boolean && right is boolean {
            return foldedBinaryConstExpr(booleanRelationalEval(expr.relationalOp, left, right), t:BOOLEAN, leftExpr, rightExpr);
        }
        else if (left == () && right is int|float|string|boolean)
                || (right == () && left is int|float|string|boolean) {
            // () behaves like NaN
            return foldedBinaryConstExpr(false, t:BOOLEAN, leftExpr, rightExpr);
        }
        return cx.semanticErr(`invalid operand types for ${expr.relationalOp}`);
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldedBinaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, s:ConstShapeExpr left, s:ConstShapeExpr right) returns s:ConstValueExpr {
    return { startPos: left.startPos, endPos: right.endPos, value, multiSemType: left.multiSemType === () && right.multiSemType === () ? () : basicType };
}

function foldUnaryExpr(FoldContext cx, t:SemType? expectedType, s:UnaryExpr expr) returns s:Expr|FoldError {
    s:Expr subExpr = expr.operand;
    match expr.op {
        "!" => {
            subExpr = check foldExpr(cx, t:BOOLEAN, expr.operand);
            if subExpr is s:ConstValueExpr {
                SimpleConst operand = subExpr.value;
                if operand is boolean {
                    return foldedUnaryConstExpr(!operand, t:BOOLEAN, subExpr);
                }
            }
        }
        "~" => {
            subExpr = check foldExpr(cx, t:INT, expr.operand);
            if subExpr is s:ConstValueExpr {
                SimpleConst operand = subExpr.value;
                if operand is int {
                    return foldedUnaryConstExpr(~operand, t:INT, subExpr);
                }
            }
        }
        "-" => {
            subExpr = check foldExpr(cx, expectedType, expr.operand);
            if subExpr is s:ConstValueExpr {
                SimpleConst operand = subExpr.value;
                if operand is int {
                    if operand == int:MIN_VALUE {
                        return cx.semanticErr(`${"-"} applied to minimum integer value`, pos=expr.pos);
                    }
                    return foldedUnaryConstExpr(-operand, t:INT, subExpr);
                }
                else if operand is float {
                    return foldedUnaryConstExpr(-operand, t:FLOAT, subExpr);
                }
            }
            else if subExpr is s:FloatZeroExpr {
                // lift up the FloatZero
                expr.operand = subExpr.expr;
                subExpr.expr = expr;
                return subExpr;
            }
        }
        _ => {
            panic err:impossible();
        }
    }
    if subExpr is s:ConstValueExpr {
        return cx.semanticErr(`invalid operand type for ${expr.op}`);
    }
    expr.operand = subExpr;
    return expr;
}

function foldTypeCastExpr(FoldContext cx, t:SemType? expectedType, s:TypeCastExpr expr) returns s:Expr|FoldError {
    t:SemType semType = check cx.resolveTypeDesc(expr.td);
    t:SemType targetType = semType;
    if expectedType != () {
        targetType = t:intersect(targetType, expectedType);
    }
    s:Expr subExpr = check foldExpr(cx, targetType, expr.operand);
    if subExpr is s:ConstShapeExpr {
        // Handle numeric conversions
        t:UniformTypeBitSet? toNumType = t:singleNumericType(semType);
        var value = subExpr.value;
        if toNumType == t:INT {
            if value is float {
                int|error converted = trap <int>value;
                if converted is error {
                    return cx.semanticErr(`cannot convert ${value} to int`, pos = expr.pos);
                }
                else {
                    value = converted;
                }
            }
        }
        else if toNumType == t:FLOAT {
            if value is int {
                value = <float>value;
            }
        }
        if !t:containsConst(semType, value) {
            return cx.semanticErr(`type cast will always fail`, pos=expr.pos);
        }
        if toNumType != () && value != subExpr.value {
            return foldedUnaryConstExpr(value, toNumType, subExpr);
        }
        // SUBSET when we have unions of singletons, will need to adjust the type here
        return subExpr;
    }
    expr.operand = subExpr;
    return expr;
}

function foldTypeTestExpr(FoldContext cx, t:SemType? expectedType, s:TypeTestExpr expr) returns s:Expr|FoldError {
    s:Expr subExpr = check foldExpr(cx, (), expr.left);
    if subExpr is s:ConstShapeExpr {
        t:SemType semType = check cx.resolveTypeDesc(expr.td);
        return foldedUnaryConstExpr(t:containsConst(semType, subExpr.value) == !expr.negated, t:BOOLEAN, subExpr);
    }
    expr.left = subExpr;
    return expr;
}

function foldCheckingExpr(FoldContext cx, t:SemType? expectedType, s:CheckingExpr expr) returns s:Expr|FoldError {
    t:SemType? ty = expectedType == () ? () : t:diff(expectedType, t:ERROR);
    s:Expr subExpr = check foldExpr(cx, ty, expr.operand);
    if subExpr is s:ConstShapeExpr && !cx.isConstDefn() {
        return subExpr;
    }
    expr.operand = subExpr;
    return expr;
}

function foldedUnaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, s:ConstShapeExpr subExpr) returns s:ConstValueExpr {
    return { startPos: subExpr.startPos, endPos: subExpr.endPos, value, multiSemType: subExpr.multiSemType === () ? () : basicType };
}

function foldVarRefExpr(FoldContext cx, t:SemType? expectedType, s:VarRefExpr expr) returns s:Expr|FoldError {
    s:FLOAT_ZERO|t:Value? constValue = check cx.lookupConst(expr.prefix, expr.varName);
    if constValue == () {
        return expr;
    }
    else if constValue is s:FLOAT_ZERO {
        s:FloatZeroExpr zeroExpr = { startPos: expr.startPos, endPos: expr.endPos, expr };
        return zeroExpr;
    }
    else {
        s:ConstValueExpr constExpr = { startPos: expr.startPos, endPos: expr.endPos, value: constValue.value };
        return constExpr;
    }
}

function foldFloatLiteralExpr(FoldContext cx, t:SemType? expectedType, s:FpLiteralExpr expr) returns s:ConstValueExpr|FoldError {
    // This will need to change when we support decimal
    float|error result = floatFromDecimalLiteral(expr.untypedLiteral);
    if result is float {
        return { startPos: expr.startPos, endPos: expr.endPos, value: result };
    }
    else {
        return cx.semanticErr("invalid float literal", cause=result, pos=expr.startPos);
    }
}

function foldIntLiteralExpr(FoldContext cx, t:SemType? expectedType, s:IntLiteralExpr expr) returns s:ConstValueExpr|FoldError {
    float|int|error result;
    string ty;
    if expr.base == 10 && expectsFloat(expectedType) {
        result = floatFromDecimalLiteral(expr.digits);
        ty = "float"; 
    }
    else {
        result = s:intFromIntLiteral(expr.base, expr.digits);
        ty = "int";
    }
    if result is int|float {
        return { startPos: expr.startPos, endPos: expr.endPos, value: result };
    }
    else {
        return cx.semanticErr("invalid " + ty + " literal", cause=result, pos=expr.startPos);
    }
}

function expectsFloat(t:SemType? semType) returns boolean {
    if semType == () {
        return false;
    }
    else {
        return t:isSubtypeSimple(t:intersect(semType, t:union(t:FLOAT, t:INT)), t:FLOAT);
    }
}

function floatFromDecimalLiteral(string digits) returns float|error {
    return float:fromString(digits);
}

function intArithmeticEval(s:BinaryArithmeticOp op, int left, int right) returns int  {
    match op {
        "+" => {
            return left + right;
        }
        "-" => {
            return left - right;
        }
        "*" => {
            return left * right;
        }
        "/" => {
            return left / right;
        }
        "%" => {
            return left % right;
        }
    }
    panic err:impossible();
}

function floatArithmeticEval(s:BinaryArithmeticOp op, float left, float right) returns float  {
    match op {
        "+" => {
            return left + right;
        }
        "-" => {
            return left - right;
        }
        "*" => {
            return left * right;
        }
        "/" => {
            return left / right;
        }
        "%" => {
            return left % right;
        }
    }
    panic err:impossible();
}

function bitwiseEval(s:BinaryBitwiseOp op, int left, int right) returns int  {
    match op {
        "|" => {
            return left | right;
        }
        "^" => {
            return left ^ right;
        }
        "&" => {
            return left & right;
        }
        ">>" => {
            return left >> right;
        }
        ">>>" => {
            return left >>> right;
        }
        "<<" => {
            return left << right;
        }
    }
    panic err:impossible();
}


function stringRelationalEval(s:BinaryRelationalOp op, string left, string right) returns boolean {
    match op {
        "<" => {
            return left < right;
        }
        "<=" => {
            return left <= right;
        }
        ">" => {
            return left > right;
        }
        ">=" => {
            return left >= right;
        }
    }
    panic err:impossible();
}

function floatRelationalEval(s:BinaryRelationalOp op, float left, float right) returns boolean {
    match op {
        "<" => {
            return left < right;
        }
        "<=" => {
            return left <= right;
        }
        ">" => {
            return left > right;
        }
        ">=" => {
            return left >= right;
        }
    }
    panic err:impossible();
}

function intRelationalEval(s:BinaryRelationalOp op, int left, int right) returns boolean {
    match op {
        "<" => {
            return left < right;
        }
        "<=" => {
            return left <= right;
        }
        ">" => {
            return left > right;
        }
        ">=" => {
            return left >= right;
        }
    }
    panic err:impossible();
}

function booleanRelationalEval(s:BinaryRelationalOp op, boolean left, boolean right) returns boolean {
    match op {
        "<" => {
            return left < right;
        }
        "<=" => {
            return left <= right;
        }
        ">" => {
            return left > right;
        }
        ">=" => {
            return left >= right;
        }
    }
    panic err:impossible();
}

