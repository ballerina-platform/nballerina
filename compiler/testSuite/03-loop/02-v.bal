// @productions range-expr foreach-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    loop(8);
}
public function loop(int to) {
    foreach int i in 2 ..< to {
        io:println(i); // @output 2
                       // @output 3
                       // @output 4
                       // @output 5
                       // @output 6
                       // @output 7
    }
}
