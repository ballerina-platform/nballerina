import ballerina/io;
type F function(int) returns int;
type F1 function(int) returns F;
type R record {|
    int val;
|};

public function main() {
    R r = { val: 5 };
    F1 f1 = function(int y) returns F {
        int b = y * 2;
        return function(int x) returns int {
            r.val = x + b;
            return r.val;
        };
    };
    F f = f1(10);
    io:println(r); // @output {"val":5}
    int i = f(20);
    io:println(i); // @output 40
    io:println(r); // @output {"val":40}
}
