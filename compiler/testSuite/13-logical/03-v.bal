import ballerina/io;
public function main() {
    f(1); // @output i
    f("x"); // @output s
}

function f(int|string x) {
    if true && x is string {
        string _ = x;
        io:println("s");
        return;
    }
    int _ = x;
    io:println("i");
}
