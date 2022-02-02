import ballerina/io;
public function main() {
    if false {
        if true { // @error
            io:println("unreached");
        }
    }
}
