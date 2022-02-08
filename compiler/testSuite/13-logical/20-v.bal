import ballerina/io;
public function main() {
    io:println(f(1)); // @output true
    io:println(f("one")); // @output true
}

public function f(int|string x) returns boolean {
    if x is int && false {
        // unreachable
    }
    else {
        int|string _ = x;
        return true;
    }
}
