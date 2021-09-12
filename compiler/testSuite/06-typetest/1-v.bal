// @productions is-expr string-literal equality boolean if-else-stmt equality-expr floating-point-literal boolean-literal any function-call-expr int-literal
import ballerina/io;

public function main() {
    // @output 1
    // @output boolean|int?
    bin(1);
    // @output 9223372036854775807
    // @output boolean|int?
    bin(9223372036854775807);
    // @output true
    // @output boolean|int?
    bin(true);
    // @output hello
    bin("hello");
    // @output nil
    // @output boolean|int?
    bin(());
    // @output 1.5
    bin(1.5);
}

function bin(any x) {
    if x == () {
        io:println("nil");
    }
    else {
        io:println(x);
    }
    if x is boolean|int? {
        io:println("boolean|int?");
    }
}