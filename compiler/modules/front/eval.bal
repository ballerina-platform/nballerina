import wso2/nballerina.comm.err;
import wso2/nballerina.front.syntax as s;

function intArithmeticEval(err:SemanticContext cx, Position pos, s:BinaryArithmeticOp op, int left, int right) returns int|err:Semantic  {
    int|error result = trappedIntArithmeticEval(op, left, right);
    if result is int {
        return result;
    }
    return cx.semanticErr(`evaluation of int constant ${op} expression failed`, pos, cause=result);             
}

// JBUG have to separate this function out, because match stmt not recognized as exhaustive
function trappedIntArithmeticEval(s:BinaryArithmeticOp op, int left, int right) returns int|error  {
    match op {
        "+" => {
            return trap left + right;
        }
        "-" => {
            return trap left - right;
        }
        "*" => {
            return trap left * right;
        }
        "/" => {
            return trap left / right;
        }
        "%" => {
            return trap left % right;
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

function decimalArithmeticEval(err:SemanticContext cx, Position pos, s:BinaryArithmeticOp op, decimal left, decimal right) returns decimal|err:Semantic  {
    decimal|error result = trappedDecimalArithmeticEval(op, left, right);
    if result is decimal {
        return result;
    }
    return cx.semanticErr(`evaluation of decimal constant ${op} expression failed`, pos, cause=result);             
}

function trappedDecimalArithmeticEval(s:BinaryArithmeticOp op, decimal left, decimal right) returns decimal|error  {
    match op {
        "+" => {
            return trap left + right;
        }
        "-" => {
            return trap left - right;
        }
        "*" => {
            return trap left * right;
        }
        "/" => {
            return trap left / right;
        }
        "%" => {
            return trap left % right;
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

function convertToIntEval(err:SemanticContext cx, Position pos, float|decimal value) returns int|err:Semantic  {
    int|error result = trap <int>value;
    if result is int {
        return result;
    }
    return cx.semanticErr(`cannot convert ${value} to int`, pos, cause=result);             
}
