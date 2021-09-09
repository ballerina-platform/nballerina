import ballerina/io;

public function main() {
    foo(1);
}

function foo(any v) {
    match v {
        1 => {
            io:println("X");
        }
        1 => { // @error
            io:println("Y");
        }
    }
}
