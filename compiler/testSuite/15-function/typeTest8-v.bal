import ballerina/io;

function foo(string x, string y) returns string {
    return x + y;
}

public function main() {
    io:println(foo is function (string, string|int) returns string); // @output false
    io:println(foo is function ("a", "a") returns string); // @output true
    io:println(foo is function ("a", "a") returns string|int); // @output true
}
