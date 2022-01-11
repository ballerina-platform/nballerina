import ballerina/io;
public function main() {
    if true {
    }
    else if false {
    }
    else {
        io:println("unreached");  // @error
    }
}
