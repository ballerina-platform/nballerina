import ballerina/io;
type F function(int, int);

public function main() {
    F f = foo;
    f(1, 2); // @output 3
}

function foo(int... vals) {
    int sum = 0;
    foreach int i in 0 ..< vals.length() {
        sum += vals[i];
    }
    io:println(sum);
}
