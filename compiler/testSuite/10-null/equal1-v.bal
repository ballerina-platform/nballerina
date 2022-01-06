// @productions equality if-else-stmt equality-expr return-stmt function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    if makeNil() == null {
        io:println(1); // @output 1
    }
    if null == makeNil() {
        io:println(2); // @output 2
    }
    if null == null {
        io:println(3); // @output 3
    }
    if makeNil() != null {
    }
    else {
        io:println(4); // @output 4
    }
    if null != makeNil() {
    }
    else {
        io:println(5); // @output 5
    }
    boolean b = null != null;
    if b {
        io:println(6);
    }
}

function makeNil() {
    return;
}
