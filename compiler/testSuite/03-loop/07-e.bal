// @productions range-expr foreach-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    loop();
}
public function loop() {
    foreach int i in 1 ..< i { // @error
        io:println(i);
    }
}
