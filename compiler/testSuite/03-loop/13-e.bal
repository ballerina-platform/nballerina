// @productions range-expr foreach-stmt boolean-literal function-call-expr
import ballerina/io;

public function main() {
    loop();
}
public function loop() {
    foreach int i in false ..< 10 { // @error
        io:println(i);
    }
}
