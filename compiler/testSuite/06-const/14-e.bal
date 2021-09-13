// @productions module-const-decl string-literal
import ballerina/io;

// Spec does not currently allow this, but it could
const X = Y;  // @error

public function main() {
    io:println("ok");
}

function Y() {
}

