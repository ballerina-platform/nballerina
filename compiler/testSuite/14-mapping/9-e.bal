import ballerina/io;
public function main() {
    match { a: 1, b: 2 } {
        { a: 1, b: 2 }  => { // @error
            io:println("unexpected");
        }
    }
}
