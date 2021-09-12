// @productions null equality equality-expr return-stmt any function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    io:println(makeNil() == ()); // @output true
    io:println(makeNil() == null); // @output true
    io:println(() != null); // @output false
    any x = null;
    io:println(x == null); // @output true
    io:println(makeNilAny() != null); // @output false
}

function makeNil() {
    return null;
}

function makeNilAny() returns any {
    return null;
}

