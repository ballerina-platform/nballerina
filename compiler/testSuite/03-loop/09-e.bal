// @productions range-expr foreach-stmt function-call-expr
import ballerina/io;

public function main() {
    loop();
}
public function loop() {
    foreach int i in i ..< 10 { // @error
        io:println(i);
    }
}
