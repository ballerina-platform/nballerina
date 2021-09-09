import ballerina/io;

public function main() {
    string s = "hello";
    s += " world";
    io:println(s); // @output hello world
    string n = " nballerina";
    s +=n;
    io:println(s); // @output hello world nballerina
    string x = "x";
    string y = "y";
    x += y + "z";
    io:println(x); // @output xyz
}
