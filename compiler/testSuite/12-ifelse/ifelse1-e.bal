import ballerina/io;
public function main() {
    if true {
    }
    else if true {
        io:println("unreached");  // @error
    }
}
