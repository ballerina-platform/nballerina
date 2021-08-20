import ballerina/io;

public function main() {
    if -0.0 == 0.0 {
        return;
    }
    io:println("impossible"); // @error
}
