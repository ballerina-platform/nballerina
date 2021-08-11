import ballerina/io;

public function main() {
    int n = 1;
    io:println(foo(-n)); // @output hit
}

function foo(any v) {
    match v {
        1 => {
            io:println("miss");
        }
        -1 => {
            io:println("hit");
        }
    }
}