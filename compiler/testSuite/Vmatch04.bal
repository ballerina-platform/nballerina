import ballerina/io;

public function main() {
    match 1 {
        1 => {
            io:println("one");  // @output one
        }
    }
    match 2 {
        _ => {
            io:println("any");  // @output any
        }
    }
}
