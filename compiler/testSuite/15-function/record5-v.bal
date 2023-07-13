import ballerina/io;
type ArgTy int|float|string;
type BinaryInt function(ArgTy, ArgTy) returns ArgTy;
type BinaryFloat function(ArgTy, ArgTy) returns ArgTy;
type BinaryString function(ArgTy, ArgTy) returns ArgTy;
type OpFn BinaryInt|BinaryFloat|BinaryString;

type BinaryOp record {|
    ArgTy lhs;
    ArgTy rhs;
    OpFn op;
|};

public function main() {
    BinaryOp op = {lhs: 1, rhs: 2, op: foo};
    io:println(exec(op)); // @output 3

    op = {lhs: 1.0, rhs: 2.0, op: bar};
    io:println(exec(op)); // @output 3.0

    io:println(exec({lhs: 1, rhs: 2.0, op: foo})); // @output -1
    io:println(exec({lhs: "a", rhs: "b", op: baz})); // @output ab
    io:println(exec({lhs: "a", rhs: 1, op: baz})); // @output -1
}

function exec(BinaryOp op) returns ArgTy {
    OpFn fn = op.op;
    return fn(op.lhs, op.rhs);
}

function foo(ArgTy a, ArgTy b) returns int {
    if a is int && b is int {
        return a + b;
    }
    return -1;
}

function bar(ArgTy a, ArgTy b) returns float {
    if a is float && b is float {
        return a + b;
    }
    return -1;
}

function baz(ArgTy a, ArgTy b) returns string|int {
    if a is string && b is string {
        return a + b;
    }
    return -1;
}
