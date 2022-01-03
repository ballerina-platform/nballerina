import ballerina/io;

function foo(any|error v) {
    match v {
        _ => {
            io:println("should not match");
        }
    }
}

public function main() {
    foo(error("hi"));
    io:println("done"); // @output done
}
