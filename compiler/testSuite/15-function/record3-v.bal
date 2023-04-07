import ballerina/io;
type BinaryFn function(int, int) returns int;
type UnaryFn function(int) returns int;

type Op record {|
    int lhs;
    int rhs;
    BinaryFn|UnaryFn fn;
|};

public function main() {
    Op a = { lhs: 1, rhs: 2, fn: add };
    io:println(executeOp(a)); // @output 3
    a.fn = nAdd;
    io:println(executeOp(a)); // @output 3
    a.fn = increment;
    io:println(executeOp(a)); // @output 2
}

function executeOp(Op op) returns int {
    BinaryFn|UnaryFn fn = op.fn;
    if fn is BinaryFn {
        return fn(op.lhs, op.rhs);
    } else {
        return fn(op.lhs);
    }
}

function add(int lhs, int rhs) returns int {
    return lhs + rhs;
}

function nAdd(int init, int... rest) returns int {
    int result = init;
    foreach int i in 0..< rest.length() {
        result = add(result, rest[i]);
    }
    return result;
}

function increment(int lhs) returns int {
    return lhs + 1;
}


