import wso2/nballerina.err;
import wso2/nballerina.types as t;

type SimpleConst string|int|boolean|();

type FoldError err:Semantic|err:Unimplemented;

// This is for handling const definitions in the future
type FoldContext object {
    function semanticErr(err:Message msg, err:Position? pos = (), error? cause = ()) returns err:Semantic;
    function lookupConst(string varName) returns t:Value?|FoldError;
 };

function foldExpr(FoldContext cx, t:SemType? expectedType, Expr expr) returns Expr|FoldError {
    if expr is BinaryArithmeticExpr {
        return foldBinaryArithmeticExpr(cx, expectedType, expr);
    } 
    else if expr is BinaryBitwiseExpr {
        return foldBinaryBitwiseExpr(cx, expectedType, expr);
    }
    else if expr is BinaryRelationalExpr {
        return foldBinaryRelationalExpr(cx, expectedType, expr);
    }
    else if expr is BinaryEqualityExpr {
        return foldBinaryEqualityExpr(cx, expectedType, expr);
    }
    else if expr is UnaryExpr {
        return foldUnaryExpr(cx, expectedType, expr);
    }
    else if expr is TypeCastExpr {
        return foldTypeCastExpr(cx, expectedType, expr);
    }
    else if expr is TypeTestExpr {
        return foldTypeTestExpr(cx, expectedType, expr);
    }
    else if expr is ListConstructorExpr {
        return foldListConstructorExpr(cx, expectedType, expr);
    }
    else if expr is MappingConstructorExpr {
        return foldMappingConstructorExpr(cx, expectedType, expr);
    }
    else if expr is VarRefExpr {
        return foldVarRefExpr(cx, expectedType, expr);
    }
    else if expr is IntLiteralExpr {
        return foldIntLiteralExpr(cx, expectedType, expr);
    }
    else {
        return expr;
    } 
}

function foldListConstructorExpr(FoldContext cx, t:SemType? expectedType, ListConstructorExpr expr) returns Expr|FoldError {
    Expr[] members = expr.members;
    foreach int i in 0 ..< members.length() {
        members[i] = check foldExpr(cx, t:ANY, members[i]);
    }
    // expr.expectedType = expectedType;
    return expr;
}

function foldMappingConstructorExpr(FoldContext cx, t:SemType? expectedType, MappingConstructorExpr expr) returns Expr|FoldError {
    foreach Field f in expr.fields {
        f.value = check foldExpr(cx, t:ANY, f.value);
    }
    // expr.expectedType = expectedType;
    return expr;
}

function foldBinaryArithmeticExpr(FoldContext cx, t:SemType? expectedType, BinaryArithmeticExpr expr) returns Expr|FoldError {
    Expr leftExpr = check foldExpr(cx, expectedType, expr.left);
    Expr rightExpr = check foldExpr(cx, expectedType, expr.right);
    if leftExpr is SimpleConstExpr && rightExpr is SimpleConstExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        if left is int && right is int {
            int|error result = trap intArithmeticEval(expr.arithmeticOp, left, right);
            if result is int {
                return foldedBinaryConstExpr(result, t:INT, leftExpr, rightExpr);
            }
            else {
                return cx.semanticErr(`evaluation of constant ${expr.arithmeticOp} expression failed`, pos=expr.pos, cause=result);
            }
        }
        else if left is string && right is string && expr.arithmeticOp == "+" {
            return foldedBinaryConstExpr(left + right, t:STRING, leftExpr, rightExpr);
        }
        else {
            return cx.semanticErr(`invalid operand types for ${expr.arithmeticOp}`);
        }
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

function foldBinaryBitwiseExpr(FoldContext cx, t:SemType? expectedType, BinaryBitwiseExpr expr) returns Expr|FoldError {
    Expr leftExpr = check foldExpr(cx, t:INT, expr.left);
    Expr rightExpr = check foldExpr(cx, t:INT, expr.right);
    if leftExpr is SimpleConstExpr && rightExpr is SimpleConstExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        if left is int && right is int {
            return <SimpleConstExpr> {
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

function foldedBinaryBitwiseType(BinaryBitwiseOp op, int left, t:SemType? lt, int right, t:SemType? rt) returns t:SemType? {
    if lt === () && rt === () {
        return ();
    }
    t:SemType leftType = t:widenUnsigned(lt ?: t:intConst(left));
    t:SemType rightType = t:widenUnsigned(rt ?: t:intConst(right));
    return op == "&" ? t:intersect(leftType, rightType) : t:union(leftType, rightType);    
}

function bitwiseOperandWiden(SimpleConstExpr expr) returns t:SemType {
    t:SemType? t = expr.multiSemType;

    if !(t is ()) {
        return t:widenUnsigned(t);
    }
    return t:INT;
}

function foldBinaryEqualityExpr(FoldContext cx, t:SemType? expectedType, BinaryEqualityExpr expr) returns Expr|FoldError {
    Expr leftExpr = check foldExpr(cx, (), expr.left);
    Expr rightExpr = check foldExpr(cx, (), expr.right);
    if leftExpr is SimpleConstExpr && rightExpr is SimpleConstExpr {
        SimpleConst left = leftExpr.value;
        SimpleConst right = rightExpr.value;
        boolean equal = left == right;
        if !equal && simpleConstExprIntersectIsEmpty(leftExpr, rightExpr) {
            return cx.semanticErr(`intersection of types of operands of ${expr.equalityOp} is empty`);
        }
        boolean positive = expr.equalityOp[0] == "=";
        if (<string>expr.equalityOp).length() == 2 {
            return foldedBinaryConstExpr(positive == equal, t:BOOLEAN, leftExpr, rightExpr);
        }
        // This is the === or !== case
        return <SimpleConstExpr> { value: positive == (left === right), multiSemType: t:BOOLEAN };
    }
    expr.left = leftExpr;
    expr.right = rightExpr;
    return expr;
}

// Precondition is that the values are !=
function simpleConstExprIntersectIsEmpty(SimpleConstExpr leftExpr, SimpleConstExpr rightExpr) returns boolean {
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

function foldBinaryRelationalExpr(FoldContext cx, t:SemType? expectedType, BinaryRelationalExpr expr) returns Expr|FoldError {
    Expr leftExpr = check foldExpr(cx, (), expr.left);
    Expr rightExpr = check foldExpr(cx, (), expr.right);
    if leftExpr is SimpleConstExpr && rightExpr is SimpleConstExpr {
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

function foldedBinaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, SimpleConstExpr left, SimpleConstExpr right) returns SimpleConstExpr {
    return { value, multiSemType: left.multiSemType === () && right.multiSemType === () ? () : basicType };
}

function foldUnaryExpr(FoldContext cx, t:SemType? expectedType, UnaryExpr expr) returns Expr|FoldError {
    Expr subExpr = expr.operand;
    match expr.op {
        "!" => {
            subExpr = check foldExpr(cx, t:BOOLEAN, expr.operand);
            if subExpr is SimpleConstExpr {
                SimpleConst operand = subExpr.value;
                if operand is boolean {
                    return foldedUnaryConstExpr(!operand, t:BOOLEAN, subExpr);
                }
            }
        }
        "~" => {
            subExpr = check foldExpr(cx, t:INT, expr.operand);
            if subExpr is SimpleConstExpr {
                SimpleConst operand = subExpr.value;
                if operand is int {
                    return foldedUnaryConstExpr(~operand, t:INT, subExpr);
                }
            }
        }
        "-" => {
            subExpr = check foldExpr(cx, expectedType, expr.operand);
            if subExpr is SimpleConstExpr {
                SimpleConst operand = subExpr.value;
                if operand is int {
                    if operand == int:MIN_VALUE {
                        return cx.semanticErr(`${"-"} applied to minimum integer value`, pos=expr.pos);
                    }
                    return foldedUnaryConstExpr(-operand, t:INT, subExpr);
                }
            }
        }
        _ => {
            panic err:impossible();
        }
    }
    if subExpr is SimpleConstExpr {
        return cx.semanticErr(`invalid operand type for ${expr.op}`);
    }
    expr.operand = subExpr;
    return expr;
}

function foldTypeCastExpr(FoldContext cx, t:SemType? expectedType, TypeCastExpr expr) returns Expr|FoldError {
    t:SemType targetType = expr.semType;
    if !(expectedType is ()) {
        targetType = t:intersect(targetType, expectedType);
    }
    Expr subExpr = check foldExpr(cx, targetType, expr.operand);
    if subExpr is SimpleConstExpr {
        if !t:containsConst(expr.semType, subExpr.value) {
            return cx.semanticErr(`type cast will always fail`, pos=expr.pos);
        }
        // XXX when we have unions of singletons, will need to adjust the type here
        return subExpr;
    }
    expr.operand = subExpr;
    return expr;
}

function foldTypeTestExpr(FoldContext cx, t:SemType? expectedType, TypeTestExpr expr) returns Expr|FoldError {
    Expr subExpr = check foldExpr(cx, (), expr.left);
    if subExpr is SimpleConstExpr {
        return foldedUnaryConstExpr(t:containsConst(expr.semType, subExpr.value), t:BOOLEAN, subExpr);
    }
    expr.left = subExpr;
    return expr;
}

function foldedUnaryConstExpr(SimpleConst value, t:UniformTypeBitSet basicType, SimpleConstExpr subExpr) returns SimpleConstExpr {
    return { value, multiSemType: subExpr.multiSemType === () ? () : basicType };
}

function foldVarRefExpr(FoldContext cx, t:SemType? expectedType, VarRefExpr expr) returns Expr|FoldError {
    t:Value? constValue = check cx.lookupConst(expr.varName);
    if constValue is () {
        return expr;
    }
    else {
        SimpleConstExpr constExpr = { value: constValue.value };
        return constExpr;
    }
}

function foldIntLiteralExpr(FoldContext cx, t:SemType? expectedType, IntLiteralExpr expr) returns SimpleConstExpr|FoldError {
    int|error result = intFromIntLiteral(expr.base, expr.digits);
    if result is int {
        return { value: result };
    }
    else {
        return cx.semanticErr(`invalid integer literal ${expr.digits}`, cause=result, pos=expr.pos);
    }
}

function intFromIntLiteral(IntLiteralBase base, string digits) returns int|error {
    return base == 10 ? int:fromString(digits) : int:fromHexString(digits);
}

function intArithmeticEval(BinaryArithmeticOp op, int left, int right) returns int  {
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

function bitwiseEval(BinaryBitwiseOp op, int left, int right) returns int  {
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


function stringRelationalEval(BinaryRelationalOp op, string left, string right) returns boolean {
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

function intRelationalEval(BinaryRelationalOp op, int left, int right) returns boolean {
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

function booleanRelationalEval(BinaryRelationalOp op, boolean left, boolean right) returns boolean {
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

