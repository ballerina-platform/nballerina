// @productions range-expr foreach-stmt continue-stmt equality if-else-stmt equality-expr int-literal
import ballerina/io;

public function main() {
    foreach int i in 6 ..< 10 {
        io:println(i); // @output 6
                       // @output 7
                       // @output 8
                       // @output 9
        if i == 8 {
            continue;
        }
    }
}
