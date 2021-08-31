import ballerina/io;

public function main() {
    any x = true;
    io:println(<boolean?>x); // @output true
    x = ();
    if <boolean?>x == () {
        io:println("nil"); // @output nil
    }
    x = "hello";
    io:println(<string|boolean>x); // @output hello
}
