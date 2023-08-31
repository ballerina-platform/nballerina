import ballerina/io;
type F1 function(int, int) returns int;

public function main() {
    final int base = 10;
    F1 f1 = function(int a, int b) returns int {
        return a + b + base;
    };
    F1 f2 = f1;
    boolean result = f1 == f2; // @error
    io:println(result);
}
