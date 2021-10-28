// @productions mapping-constructor-expr return-stmt any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(wrap(1)); // @output {"value":1}
    io:println(wrap(wrap(()))); // @output {"value":{"value":null}}
}

function wrap(any x) returns map<any> {
    return { value: x };
}
