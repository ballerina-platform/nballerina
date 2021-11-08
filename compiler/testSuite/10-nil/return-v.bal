// @productions return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(0); // @output 0
    makeNil();
    io:println(1); // @output 1
}

function makeNil() {
    return null;
}
