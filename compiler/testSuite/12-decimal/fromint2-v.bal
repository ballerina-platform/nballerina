import ballerina/io;
public function main() {
    int i = 1;
    io:println(<decimal>i);   // @output 1
    i = 0;
    io:println(<decimal>i);   // @output 0
    i = -1;
    io:println(<decimal>i);   // @output -1
    i = 2147483647;
    io:println(<decimal>i);   // @output 2147483647
    i = 2147483646;
    io:println(<decimal>i);   // @output 2147483646
    i = 2147483648;
    io:println(<decimal>i);   // @output 2147483648
    i = -2147483648;
    io:println(<decimal>i);   // @output -2147483648
    i = -2147483647;
    io:println(<decimal>i);   // @output -2147483647
    i = -2147483649;
    io:println(<decimal>i);   // @output -2147483649
    i = 9223372036854775807;
    io:println(<decimal>i);   // @output 9223372036854775807
    i = -9223372036854775807 - 1;
    io:println(<decimal>i);   // @output -9223372036854775808
}
