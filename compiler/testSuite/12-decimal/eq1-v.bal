import ballerina/io;
public function main() {
    io:println(1d == 1d); // @output true
    io:println(1d != 1d); // @output false
    io:println(0d == 0d); // @output true
    io:println(0.999999999999999999999999999999999E6144d == 9.999999999999999999999999999999990E6143d); // @output true
    io:println(1E-6143d == 1E-6143d); // @output true
    io:println(0.1E-6142d == 1E-6143d); // @output true
}
