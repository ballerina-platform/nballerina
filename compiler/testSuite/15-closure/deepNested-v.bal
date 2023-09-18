import ballerina/io;
type F1 function(int) returns F1|F;
type F function(int) returns int;

public function main() {
    int val = 10;
    F1|F f = function(int p1) returns F1 {
        return function(int p2) returns F1 {
            return function(int p3) returns F {
                return function(int p4) returns int {
                    val *= 2;
                    return val + p1 + p2 + p3 + p4;
                };
            };
        };
    };
    int p = 1;
    while f is F1 {
        f = f(p);
        p += 1;
    }
    io:println(f(p)); // @output 30
    io:println(val); // @output 20
}
