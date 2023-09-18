import ballerina/io;
type F function(int) returns int;

public function main() {
    F foo = function(int a) returns int {
        return a * 2;
    };
    F bar = function(int a) returns int {
        return foo(a) + 2;
    };
    io:println(bar(5)); // @output 12
}
