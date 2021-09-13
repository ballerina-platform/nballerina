// @productions range-expr foreach-stmt function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    loop(10);
}
public function loop(int to) {
    int i = 8;
    foreach int i in 1 ..< to { // @error
        io:println(i);
    }
}
