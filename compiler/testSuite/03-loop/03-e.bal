// @productions range-expr foreach-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    loop(10);
}
public function loop(int to) {
    foreach int i in 1 ..< to {
        io:println(i);
    }
    io:println(i); // @error
}
