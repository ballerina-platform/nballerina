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
        UnaryFn f = <UnaryFn>fn;
        return f(op.lhs);
    }
}

function add(int|string lhs, int|string rhs) returns int {
    if lhs is string || rhs is string {
        return 0;
    }
    return lhs + rhs;
}

function nAdd(int|string init, int|string... rest) returns int {
    if init is string || rest is string[] {
        return -1;
    }
    int result = init;
    foreach int i in 0..< rest.length() {
        result = add(result, rest[i]);
    }
    return result;
}

function increment(int|string lhs) returns int {
    if lhs is string {
        return 0;
    }
    return lhs + 1;
}
