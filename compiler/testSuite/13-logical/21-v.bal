import ballerina/io;
public function main() {
    io:println(f(1)); // @output 2
    io:println(f("hello")); // @output hello world
}

function f(int|string x) returns int|string {
    if x is int && true {
        int _ = x;
        return x + 1;
    }
    else {
        string _ = x;
        return x + " world";
    }
}
