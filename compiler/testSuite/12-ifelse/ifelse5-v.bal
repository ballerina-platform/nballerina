import ballerina/io;
public function main() {
    if false {
    }
    else if true {
        io:println("unconditionally reach"); // @output unconditionally reach
    }
    else {
    }
}
