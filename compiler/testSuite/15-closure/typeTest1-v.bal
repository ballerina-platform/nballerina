import ballerina/io;

public function main() {
    io:println(function(string x, string y) returns string {
        return x + y;
    } is function (string, string|int) returns string); // @output false

    io:println(function(string x, string y) returns string {
        return x + y;
    } is function ("a", "a") returns string); // @output true

    io:println(function(string x, string y) returns string {
        return x + y;
    } is function ("a", "a") returns string|int); // @output true
}
