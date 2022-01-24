import ballerina/io;
public function main() {
    f("a"); // @output non-empty str
    f(""); // @output empty str
    f(2); // @output int
}

public function f(int|string x) {
    if x is string && isEmpty(x) {
        string _ = x;
        io:println("empty str");
        return;
    }
    else if x is int {
        int _ = x;
        io:println("int");
        return;
    }
    string _ = x;
    io:println("non-empty str");
}

function isEmpty(string s) returns boolean {
    return s == "";
}
