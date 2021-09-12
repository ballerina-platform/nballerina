import ballerina/io;

public function main() {
   foo(1); // @output 2
}

function foo(any v) {
    any x = v;
    if x is int {
        boolean b = true;
        while true {
            if b {
                x = x + 1;
                break;
            }
        }
    }
    io:println(x);
}
