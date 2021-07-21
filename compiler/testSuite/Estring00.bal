import ballerina/io;
public function main() {
    if "a" == "a" {
        return;
    }
    io:println("impossible"); // @error
}
