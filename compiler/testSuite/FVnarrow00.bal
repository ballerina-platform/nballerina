import ballerina/io;

public function main() {
    io:println(str("x")); // @output x
}

function str(any v) returns string {
    if v == "x" {
        return v;
    }
    else if v == "y" {
        return v;
    }
    else {
        return v;
    }
}
