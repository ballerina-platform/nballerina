import ballerina/io;
type F function (int) returns int;

function foo(int x) returns int {
    return x + 1;
}

function genFs(int base) returns F[] {
    F[] array = [];
    foreach int i in 0 ..< 10000000 {
        final int v = i;
        if i % 2 == 0 {
            F f = function (int x) returns int {
                return v + x + base;
            };
            array.push(f);
        }
        else {
            array.push(foo);
        }
    }
    return array;
}

function fSum(F[] funcs) returns int {
    int sum = 0;
    foreach int i in 0 ..< funcs.length() {
        F f = funcs[i];
        sum += f(i);
    }
    return sum;
}

public function main() {
    F[] funcs = genFs(10);
    io:println(fSum(funcs)); // @output 75000045000000
}

