import ballerina/io;

public function main() {
    error? x = error("hello");
    error e = <error>x;
    io:println(e); // @output error("hello")
}
