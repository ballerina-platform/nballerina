import ballerina/io;
type F function(int, int);

public function main() {
    F f = sum;
    f(1, 2); // @output 3
}

function sum(int init, int... rest) {
    int result = init;
    foreach int i in 0 ..< rest.length() {
        result += rest[i];
    }
    io:println(result);
}
