import ballerina/io;

public function main() {
    error err = error("whoops");
    io:println(err); // @output error("whoops")
}
