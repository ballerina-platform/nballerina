// @productions range-expr foreach-stmt continue-stmt equality if-else-stmt equality-expr boolean-literal return-stmt int-literal
import ballerina/io;

public function main() {
    foreach int i in 6 ..< 10 {
        io:println(i); // @output 6
                       // @output 7
        if i == 6 {
            continue;
        }
        io:println(true); // @output true
        return;
    }
    io:println(false);

}
