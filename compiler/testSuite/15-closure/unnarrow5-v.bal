import ballerina/io;
type F function(int) returns int;

function runner(F f, int val) returns int {
    return f(val);
}

public function main() {
    int|boolean v1 = 10;
    if v1 is int {
        int res = v1 + runner(function(int a) returns int {
                    v1 = true;
                    return 5;
                  }, 2);
        io:println(res); // @output 15
    }
}
