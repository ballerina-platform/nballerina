// @productions range-expr foreach-stmt int-literal
import ballerina/io;

public function main() {
    io:println(0); // @output 0
    foreach int i in 2 ..< 1 {
        io:println(i);
    }
    io:println(1); // @output 1
}
