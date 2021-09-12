// @productions range-expr foreach-stmt return-stmt unary-expr function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int i = loop();
    io:println(i); // @output 5
}
public function loop() returns int {
    foreach int i in 5 ..< 10 {
        return i;
    }
    return -1;
}
