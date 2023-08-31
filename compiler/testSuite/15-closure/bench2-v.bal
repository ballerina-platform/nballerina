import ballerina/io;
type F function (int) returns int;

function foo(int x) returns int {
    return x + 1 + 2;
}

function bench(int base) returns int {
    F f = foo;
    int sum = 0;
    foreach int i in 0 ..< 10000000 {
        final int v = i;
        if i % 2 == 0 {
            f = function (int x) returns int {
                return v + x + base;
            };
        }
        else {
            f = foo;
        }
        sum += f(base);
    }
    return sum;
}

public function main() {
    io:println(bench(10)); // @output 25000160000000
}

