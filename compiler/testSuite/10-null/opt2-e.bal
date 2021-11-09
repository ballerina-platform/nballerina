import ballerina/io;

public function main() {
    null? n = null;
    if n is null {
        return;
    }
    io:println("opt and nil are not the same"); // @error
}
