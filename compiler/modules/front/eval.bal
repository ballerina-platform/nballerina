import wso2/nballerina.comm.err;
import wso2/nballerina.front.syntax as s;

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

function decimalArithmeticEval(s:BinaryArithmeticOp op, decimal left, decimal right) returns decimal  {
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
