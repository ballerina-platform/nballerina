import ballerina/io;
type F function(int) returns int|F;

function foo(int a) returns F {
    return function(int x) returns F {
        final int b = a * 2;
        return function(int y) returns int {
            return x + y + a + b;
        };
    };
}
public function main() {
    F f = foo(5);
    F|int res = f(5);
    if res is F {
        io:println(res(5)); // @output 25
    }
    if res is int {
        io:println(res);
    }
}

