import ballerina/io;

public function main() {
    any[] x = [];
    any[] y = x;
    if x != y { // @error
        io:println(true);
    }
}
