import ballerina/io;
type R record {
    int x;
};

type R1 record {|
    int x;
|};

type F function(R1 a, R1 b) returns int;

public function main() {
    F f = foo; 
    io:println(f({ x: 1 }, { x: 2 })); // @output 3
}

function foo(R init, R... rest) returns int {
    int a = init.x;
    foreach int i in 0..< rest.length() {
        a += rest[i].x;
    }
    return a;
}
