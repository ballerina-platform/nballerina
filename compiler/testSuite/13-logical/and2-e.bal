import ballerina/io;
public function main() {
    if true && false {
        io:println("unreachable"); // @error
    }
}
