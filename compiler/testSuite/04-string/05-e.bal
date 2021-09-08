import ballerina/io;
public function main() {
    if "abc" == "a" + "b" + "c" {
        return;
    }
    io:println("impossible"); // @error
}
