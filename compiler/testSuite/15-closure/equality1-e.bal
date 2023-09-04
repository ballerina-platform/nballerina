import ballerina/io;
type F1 function(int) returns string;
type F2 function(string) returns int;

public function main() {
    final string s1 = "foo";
    final int i1 = 5;
    F1 f1 = function(int a) returns string {
        return s1 + "..";
    };
    F2 f2 = function(string s) returns int {
        return i1 + 10;
    };
    boolean test = f1 == f2; // @error
    io:println(test);
}
