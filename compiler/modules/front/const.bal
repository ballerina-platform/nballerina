import wso2/nballerina.err;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.types as t;

type SimpleConst string|int|float|boolean|();

type FoldError err:Semantic|err:Unimplemented;

// This is for handling const definitions in the future
type FoldContext object {
    function semanticErr(err:Message msg, err:Position? pos = (), error? cause = ()) returns err:Semantic;
    function lookupConst(string varName) returns t:Value?|FoldError;
};

class ConstFoldContext {
    final string defnName;
    final ModuleTable mod;
    function init(string defnName, ModuleTable mod) {
        self.defnName = defnName;
        self.mod = mod;
    }
    
    function semanticErr(err:Message msg, err:Position? pos = (), error? cause = ()) returns err:Semantic {
        return err:semantic(msg, pos=pos, cause=cause, functionName=self.defnName);
    }

    function lookupConst(string varName) returns t:Value?|FoldError {
        s:ModuleLevelDefn? defn = self.mod[varName];
        if defn is s:ConstDefn {
            var resolved = check resolveConstDefn(self.mod, defn);
            return resolved[1];
        }
        else if defn is () {
            return self.semanticErr(`${varName} is not defined`);
        }
        else {
            return self.semanticErr(`reference to non-const ${varName}`);
        }
    }
}

function resolveConstDefn(ModuleTable mod, s:ConstDefn defn) returns s:ResolvedConst|FoldError {
    var resolved = defn.resolved;
    if resolved is false {
        return err:semantic(`cycle in evaluating ${defn.name}`, defn.pos);
    }
    else if !(resolved is ()) {
        return resolved;
    }
    else {
        defn.resolved = false;
        ConstFoldContext cx = new ConstFoldContext(defn.name, mod);
        s:Expr expr = check foldExpr(cx, (), defn.expr);
        if expr is s:ConstValueExpr {
            s:ResolvedConst r = [t:singleton(expr.value), { value: expr.value }];
            defn.resolved = r;
            return r;
        }
        else {
            return err:semantic(`initializer of ${defn.name} is not constant`, defn.pos);
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
    s:Expr[] members = expr.members;
    foreach int i in 0 ..< members.length() {
        members[i] = check foldExpr(cx, t:ANY, members[i]);
    }
    // expr.expectedType = expectedType;
    return expr;
}

function foldMappingConstructorExpr(FoldContext cx, t:SemType? expectedType, s:MappingConstructorExpr expr) returns s:Expr|FoldError {
    foreach s:Field f in expr.fields {
        f.value = check foldExpr(cx, t:ANY, f.value);
    }
    // expr.expectedType = expectedType;
    return expr;
}

function foldBinaryArithmeticExpr(FoldContext cx, t:SemType? expectedType, s:BinaryArithmeticExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, expectedType, expr.left);
    s:Expr rightExpr = check foldExpr(cx, expectedType, expr.right);
    if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
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
            float|error result = trap floatArithmeticEval(expr.arithmeticOp, left, right);
            if result is float {
                return foldedBinaryConstExpr(result, t:FLOAT, leftExpr, rightExpr);
            }
            else {
                return cx.semanticErr(`evaluation of float constant ${expr.arithmeticOp} expression failed`, pos=expr.pos, cause=result);
            }
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

function bitwiseOperandWiden(s:ConstValueExpr expr) returns t:SemType {
    t:SemType? t = expr.multiSemType;

    if !(t is ()) {
        return t:widenUnsigned(t);
    }
    return t:INT;
}

function foldBinaryEqualityExpr(FoldContext cx, t:SemType? expectedType, s:BinaryEqualityExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, (), expr.left);
    s:Expr rightExpr = check foldExpr(cx, (), expr.right);
    if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        boolean exact = (<string>expr.equalityOp).length() == 3; // either "===" or "!=="
        boolean equal = exact ? isExactEqual(left, right) : isEqual(left, right);
        boolean positive = expr.equalityOp[0] == "=";
        boolean value = positive == equal;
        if exact {
            return <s:ConstValueExpr> { value, multiSemType: t:BOOLEAN };
        }
        if !equal && simpleConstExprIntersectIsEmpty(leftExpr, rightExpr) {
            return cx.semanticErr(`intersection of types of operands of ${expr.equalityOp} is empty`);
        }
        return foldedBinaryConstExpr(value, t:BOOLEAN, leftExpr, rightExpr);
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

// Remove after JBUG #17977 is fixed
function isEqual(SimpleConst c1, SimpleConst c2) returns boolean {
    if c1 is float {
        if c2 is float {
            return float:isNaN(c1) && float:isNaN(c2) ? true : c1 == c2;
        }
        else {
            return false;
        }
    }
    return c1 == c2;
}

// Remove after JBUG #17977 is fixed
function isExactEqual(SimpleConst c1, SimpleConst c2) returns boolean {
    if c1 is float && float:isNaN(c1) {
        if c2 is float && float:isNaN(c2) {
            return true;
        }
        else {
            return false;
        }
    }
    return c1 === c2;
}

// Precondition is that the values are !=
function simpleConstExprIntersectIsEmpty(s:ConstValueExpr leftExpr, s:ConstValueExpr rightExpr) returns boolean {
    t:SemType? lt = leftExpr.multiSemType;
    t:SemType? rt = rightExpr.multiSemType;
    if lt is () {
        if rt is () {
            // precondition of this function is that the values are != 
            // so if the types are both singletons, the intersection must be empty
            return true;
        }
        else {
            return !t:containsConst(rt, leftExpr.value);
        }
    }
    else if rt is () {
        return !t:containsConst(lt, rightExpr.value);
    }
    else {
        return t:isNever(t:intersect(lt, rt));
    }
}

function foldBinaryRelationalExpr(FoldContext cx, t:SemType? expectedType, s:BinaryRelationalExpr expr) returns s:Expr|FoldError {
    s:Expr leftExpr = check foldExpr(cx, (), expr.left);
    s:Expr rightExpr = check foldExpr(cx, (), expr.right);
    if leftExpr is s:ConstValueExpr && rightExpr is s:ConstValueExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
         if left is int && right is int {
            return foldedBinaryConstExpr(intRelationalEval(expr.relationalOp, left, right), t:INT, leftExpr, rightExpr);
        }
        else if left is string && right is string {
            return foldedBinaryConstExpr(stringRelationalEval(expr.relationalOp, left, right), t:INT, leftExpr, rightExpr);
        }
        else if left is boolean && right is boolean {
            return foldedBinaryConstExpr(booleanRelationalEval(expr.relationalOp, left, right), t:INT, leftExpr, rightExpr);
        }
        return cx.semanticErr(`invalid operand types for ${expr.relationalOp}`);
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldedBinaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, s:ConstValueExpr left, s:ConstValueExpr right) returns s:ConstValueExpr {
    return { value, multiSemType: left.multiSemType === () && right.multiSemType === () ? () : basicType };
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
    t:SemType targetType = expr.semType;
    if !(expectedType is ()) {
        targetType = t:intersect(targetType, expectedType);
    }
    s:Expr subExpr = check foldExpr(cx, targetType, expr.operand);
    if subExpr is s:ConstValueExpr {
        if !t:containsConst(expr.semType, subExpr.value) {
            return cx.semanticErr(`type cast will always fail`, pos=expr.pos);
        }
        // XXX when we have unions of singletons, will need to adjust the type here
        return subExpr;
    }
    expr.operand = subExpr;
    return expr;
}

function foldTypeTestExpr(FoldContext cx, t:SemType? expectedType, s:TypeTestExpr expr) returns s:Expr|FoldError {
    s:Expr subExpr = check foldExpr(cx, (), expr.left);
    if subExpr is s:ConstValueExpr {
        return foldedUnaryConstExpr(t:containsConst(expr.semType, subExpr.value), t:BOOLEAN, subExpr);
    }
    expr.left = subExpr;
    return expr;
}

function foldedUnaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, s:ConstValueExpr subExpr) returns s:ConstValueExpr {
    return { value, multiSemType: subExpr.multiSemType === () ? () : basicType };
}

function foldVarRefExpr(FoldContext cx, t:SemType? expectedType, s:VarRefExpr expr) returns s:Expr|FoldError {
    t:Value? constValue = check cx.lookupConst(expr.varName);
    if constValue is () {
        return expr;
    }
    else {
        s:ConstValueExpr constExpr = { value: constValue.value };
        return constExpr;
    }
}

function foldFloatLiteralExpr(FoldContext cx, t:SemType? expectedType, s:FpLiteralExpr expr) returns s:ConstValueExpr|FoldError {
    // This will need to change when we support decimal
    float|error result = floatFromDecimalLiteral(expr.untypedLiteral);
    if result is float {
        return { value: result };
    }
    else {
        return cx.semanticErr("invalid float literal", cause=result, pos=expr.pos);
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
        return { value: result };
    }
    else {
        return cx.semanticErr("invalid " + ty + " literal", cause=result, pos=expr.pos);
    }
}

function expectsFloat(t:SemType? semType) returns boolean {
    if semType is () {
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
    // xxx this will have to change to address #274
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

