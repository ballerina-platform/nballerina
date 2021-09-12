// @productions equality if-else-stmt equality-expr return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    if makeNil() == makeNil() {
        io:println(1); // @output 1
    }
}

function makeNil() {
    return;
}
