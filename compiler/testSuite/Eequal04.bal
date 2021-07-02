import ballerina/io;

public function main() {
    any[] x = [];
    if x != () { // @error
        io:println(true);
    }
}
