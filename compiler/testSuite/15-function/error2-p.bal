import ballerina/io;
type F function(int, int) returns int;

public function main() {
    F f = bar;
    int res = f(1, -1);
    io:println(res);
}

function bar(int... vals) returns int {
    return checkpanic foo(vals[0], vals[1]);
}

function foo(int... vals) returns int|error {
    int sum = 0;
    foreach int i in 0 ..< vals.length() {
        int val = vals[i];
        if val < 0 {
            return error("negative value"); // @panic negative value
        }
        sum += val;
    }
    return sum;
}
