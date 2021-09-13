// @productions range-expr foreach-stmt break-stmt equality if-else-stmt equality-expr boolean-literal int-literal
import ballerina/io;

public function main() {
    foreach int i in 6 ..< 10 {
        io:println(i); // @output 6
                       // @output 7
                       // @output 8
        if i == 8 {
            break;
        }
    }
    io:println(true); // @output true

}
