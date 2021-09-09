import ballerina/io;

public function main() {
    int? n = 17;
    io:println(n); // @output 17
    n = ();
    if n == () {
        io:println("null"); // @output null
    }
    else {
        io:println("not null");
    }
}