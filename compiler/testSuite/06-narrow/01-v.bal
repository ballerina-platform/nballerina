import ballerina/io;

public function main() {
    io:println(foo(1.5)); // @output 1.5
}

function foo(any v) returns float {
    if v == 1.5 {
        return v;
    }
    else {
        return 0.0;
    }
}
