// @productions foreach-stmt
import ballerina/io;

public function main() {
    loop();
}
public function loop() {
    foreach boolean i in 1 ..< 10 { // @error
        io:println(i);
    }
}
