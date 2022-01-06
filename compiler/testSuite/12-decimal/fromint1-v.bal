import ballerina/io;
public function main() {
    io:println(<decimal>1); // @output 1
    io:println(<decimal>0); // @output 0
    io:println(<decimal>-1); // @output -1
    io:println(<decimal>2147483647); // @output 2147483647
    io:println(<decimal>2147483646); // @output 2147483646
    io:println(<decimal>2147483648); // @output 2147483648
    io:println(<decimal>-2147483648); // @output -2147483648
    io:println(<decimal>-2147483647); // @output -2147483647
    io:println(<decimal>-2147483649); // @output -2147483649
    io:println(<decimal>9223372036854775807); // @output 9223372036854775807
    io:println(<decimal>-9223372036854775808); // @output -9223372036854775808
}
