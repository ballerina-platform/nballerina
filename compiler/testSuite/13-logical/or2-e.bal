import ballerina/io;

const F = false;
public function main() {
    if F || F {
        io:println("unreachable"); // @error
    }
}
