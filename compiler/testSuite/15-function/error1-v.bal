import ballerina/io;
type F function(int, int) returns int|error;

public function main() {
    F f = foo;
    int|error res = f(1, 2);
    io:println(res is error); // @output false
    res = f(1, -1);
    io:println(res is error); // @output true
}

function foo(int... vals) returns int|error {
    int sum = 0;
    foreach int i in 0 ..< vals.length() {
        int val = vals[i];
        if val < 0 {
            return error("negative value");
        }
        sum += val;
    }
    return sum;
}
