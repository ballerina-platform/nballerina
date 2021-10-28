// @productions range-expr foreach-stmt function-call-expr assign-stmt int-literal
import ballerina/io;

public function main() {
    loop(10);
}
public function loop(int to) {
    foreach int i in 1 ..< to {
        i = 1; // @error
        io:println(i);
    }
}
