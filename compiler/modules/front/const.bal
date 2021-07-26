import wso2/nballerina.err;
import wso2/nballerina.types as t;

type SimpleConst string|int|boolean|();

// We could use an error to represent this.
// I have chosen not too,
// because we will be using it often in if and while statements,
// where not being constant is normal not an error.
// I don't want to create an error object in this case,
// because creating the backtrace is likely expensive.
distinct class NotConst {
    Expr expr;
    function init(Expr expr) {
        self.expr = expr;
    }
}

type EvalResult SimpleConst|NotConst;

function evalConstExpr(Expr expr) returns EvalResult|err:Semantic {
    if expr is SimpleConstExpr {
        return expr.value;
    }
    else if expr is BinaryExpr {
        EvalResult left = check evalConstExpr(expr.left);
        if left is NotConst {
            return left;
        }
        else {
            EvalResult right = check evalConstExpr(expr.right);
            if right is NotConst {
                return right;
            }
            else {
                return evalConstBinary(expr, left, right);
            }
        }
    }
    else if expr is UnaryExpr {
         EvalResult operand = check evalConstExpr(expr.operand);
         if operand is NotConst {
             return operand;
         }
         else {
             return evalConstUnary(expr, operand);
         }
    }
    else if expr is TypeCastExpr {
        EvalResult operand = check evalConstExpr(expr.operand);
        if operand is NotConst {
            return operand;
        }
        else if !t:containsConst(expr.semType, operand) {
            return err:semantic(`type cast will always fail`, pos=expr.pos);
        }
        else {
            return operand;
        }
    }
    else {
        return new NotConst(expr);
    }
}

function evalConstUnary(UnaryExpr expr, SimpleConst operand) returns EvalResult|err:Semantic {
    UnaryExprOp op = expr.op;
    SimpleConst value;
    if op is "!" {
        if operand is boolean {
            return !operand;
        }
    }
    else if op is "~" {
        if operand is int {
            return ~operand;
        }
    }
    else {
        // "-"
        if operand is int {
            if operand == int:MIN_VALUE {
                return err:semantic(`${"-"} applied to minimum integer value`, pos=expr.pos);
            }
            else {
                return -operand;
            }
        }
    }
    // type error
    return new NotConst(expr);
}

function evalConstBinary(BinaryExpr expr, SimpleConst left, SimpleConst right) returns EvalResult|err:Semantic {
    if expr is BinaryArithmeticExpr {
        if left is int && right is int {
            int|error result = trap intArithmeticEval(expr.arithmeticOp, left, right);
            if result is int {
                return result;
            }
            else {
                return err:semantic(`evaluation of constant ${expr.arithmeticOp} expression failed`, pos=expr.pos, cause=result);
            }
        }
        else if left is string && right is string && expr.arithmeticOp == "+" {
            return left + right;
        }
    }
    else if expr is BinaryBitwiseExpr {
        if left is int && right is int {
            return bitwiseEval(expr.bitwiseOp, left, right);
        }
    }
     else if expr is BinaryRelationalExpr {
        if left is int && right is int {
            return intRelationalEval(expr.relationalOp, left, right);
        }
        else if left is string && right is string {
            return stringRelationalEval(expr.relationalOp, left, right);
        }
        else if left is boolean && right is boolean {
            return booleanRelationalEval(expr.relationalOp, left, right);
        }

    }
    else {
        boolean opIsNegated = expr.equalityOp[0] == "!";
        if left == right {
            return !opIsNegated;
        }
        else if left is int && right is int {
            t:SemType? lt = exprIntSubtype(expr.left);
            t:SemType? rt = exprIntSubtype(expr.right);
            if lt is () || rt is () || !t:isNever(t:intersect(lt, rt)) {
                return opIsNegated;
            }
        }
        else if (left is boolean && right is boolean) || (left is string && right is string) {
            if !exprTypeIsSingleton(expr.left) || !exprTypeIsSingleton(expr.right) {
                return opIsNegated;
            }
        }
    }
    // If we get here, there's some sort of type error.
    // When we do const expressions, we should give a better error here.
    // For now, we leave this to get an error in the normal expression type-checking. 
    return new NotConst(expr);
}

// If the static type of the expression is a proper subtype of int,
// then return the range of that type.
function exprIntSubtype(Expr expr) returns t:SemType? {
    if expr is SimpleConstExpr {
        SimpleConst n = expr.value;
        if n is int {
            return t:intConst(n);
        }
    }
    else if expr is TypeCastExpr {
        // XXX when we get simple type subtypes then we need to intersect the types
        return exprIntSubtype(expr.operand);
    }
    else if expr is BinaryBitwiseExpr {
        t:SemType lt = bitwiseExprOperandWiden(expr.left);
        t:SemType rt = bitwiseExprOperandWiden(expr.right);
        return expr.bitwiseOp == "&" ? t:intersect(lt, rt) : t:union(lt, rt);
    }
    return ();
}

function exprTypeIsSingleton(Expr expr) returns boolean {
    if expr is SimpleConstExpr {
        return true;
    }
    else if expr is TypeCastExpr {
        return exprTypeIsSingleton(expr.operand);
    }
    return false;
}

// this promotes the type to int:UnsignedN
function bitwiseExprOperandWiden(Expr expr) returns t:SemType {
    t:SemType? t = exprIntSubtype(expr);
    if !(t is ()) {
        return t:widenUnsigned(t);
    }
    return t:INT;
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
