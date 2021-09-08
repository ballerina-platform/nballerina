import ballerina/io;

public function main() {
    error err = error("hello");
    string s = err.message();
    io:println(s); // @output hello
}
