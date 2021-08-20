import ballerina/io;

public function main() {
    if 10.5 == 0.5 + 0.5 + 2.0 / 0.2 + 2.0 * 1.5 - 3.5 {
        return;
    }
    io:println("impossible"); // @error
}
