import ballerina/io;

public function main() {
   foo(1); // @output 2
}

function foo(any v) {
    any x = v;
    if x is int {
        boolean b = true;
        foreach int i in 0 ..< 2 {
            if b {
                x = x + 1;
                break;
            }
        }
    }
    io:println(x);
}
