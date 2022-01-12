import ballerina/io;
public function main() {
    if false {
    }
    else if true {
    }
    else {
        io:println("unreached");  // @error
    }
}
