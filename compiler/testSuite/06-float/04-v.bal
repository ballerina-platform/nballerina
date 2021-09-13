// @productions floating-point-literal
import ballerina/io;

public function main() {
    io:println(0.375); // @output 0.375
    io:println(100.375f); // @output 100.375
}
