
import ballerina/io;
type F function(int, int) returns int;

function foo(int x) returns F {
    return function(int... a) returns int {
                int sum = x;
                foreach int i in 0 ..< a.length() {
                    sum += a[i];
                }
                return sum;
    };
}

public function main() {
    F f = foo(10);
    int x = f(1, 2);
    io:println(x); // @output 13
}
