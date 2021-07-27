import ballerina/io;
public function main() {
    if -1 != ~0 {
        io:println("impossible"); // @error
    }
}
