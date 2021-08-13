import ballerina/io;

public function main() {
}

function foo(any v) {
    match v {
        0.0 => {
            io:println("zero");
        }
        _ => {
            io:println("non-zero");
        }
    }
}
