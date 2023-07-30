import ballerina/io;
type F function(int, int) returns int;

type R record {|
    int a;
    int b;
    F f;
|};

public function main() {
    F f1 = lambdaReturn();
    io:println(f1(1, 2)); // @output 3
    R r = lambdaStruct();
    F f2 = r.f;
    io:println(f2(1, 2)); // @output 3
}


function lambdaReturn() returns F {
    return function(int a, int b) returns int {
        return a + b;
    };
}

function lambdaStruct() returns R {
    return { a: 1, b: 2,
             f: function(int a, int b) returns int {
                 return a + b;
           }};
}
