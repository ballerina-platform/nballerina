// @productions string string-literal equality if-else-stmt equality-expr return-stmt any function-call-expr
import ballerina/io;

public function main() {
    io:println(str("x")); // @output x
}

function str(any v) returns string {
    if v == "x" {
        return v;
    }
    else {
        return "";
    }
}
