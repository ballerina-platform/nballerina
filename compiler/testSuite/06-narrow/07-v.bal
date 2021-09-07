import ballerina/io;

public function main() {
    foo(0.0); // @output positive zero
    foo(-0.0); // @output negative zero
    foo(1.0); // @output non-zero
}

function foo(float f) {
    if f == 0.0 {
        if 1.0/f == 2.0/0.0  {
            io:println("positive zero");
        }
        else if 3.0/f == 4.0/-0.0 {
            io:println("negative zero");
        }
    }
    else {
        io:println("non-zero");
    }
}
