import ballerina/io;
public function main() {
    float f = 0.0f; 
    io:println(<decimal>f); // @output  0
    f = 1.0f; 
    io:println(<decimal>f); // @output  1
    f = 1.00000f; 
    io:println(<decimal>f); // @output  1
    f = 1234567891.0f; 
    io:println(<decimal>f); // @output  1234567891
    f = 1234567890123456.0f; 
    io:println(<decimal>f); // @output  1234567890123456
    f = 1234567890123456.1f; 
    io:println(<decimal>f); // @output  1234567890123456
    f = 1234567890123456.9f; 
    io:println(<decimal>f); // @output  1234567890123457
    f = 1.7976931348623157e+308f; 
    io:println(<decimal>f); // @output  1.7976931348623157E+308
    f = 0.0000000000000009e+308f; 
    io:println(<decimal>f); // @output  9E+292
    f = 0.0000000000000000000000000000000001f; 
    io:println(<decimal>f); // @output  1E-34
    f = 4.9406564584124654E-324f; 
    io:println(<decimal>f); // @output  5E-324
}
