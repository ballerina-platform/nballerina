import ballerina/io;
public function main() {
    if "a" == "b" {
        io:println("impossible"); // @error
    }
}
