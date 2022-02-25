import ballerina/io;

public function main() {
    int[4] v = [1, 2, 3, 4];
    foo(v[2]); // @error
}

function foo(string s) {
    io:println(s);
}
