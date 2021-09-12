import ballerina/io;

public function main() {
    io:println(9223372036854775806 % 9223372036854775806); // @output 0
    io:println(1 % 9223372036854775806); // @output 1
    io:println(0 % 9223372036854775806); // @output 0
    io:println(-1 % 9223372036854775806); // @output -1
    io:println(-9223372036854775806 % 9223372036854775806); // @output 0

    io:println(9223372036854775806 % 10); // @output 6
    io:println(1 % 10); // @output 1
    io:println(0 % 10); // @output 0
    io:println(-1 % 10); // @output -1
    io:println(-9223372036854775806 % 10); // @output -6

    io:println(9223372036854775806 % 1); // @output 0
    io:println(1 % 1); // @output 0
    io:println(0 % 1); // @output 0
    io:println(-1 % 1); // @output 0
    io:println(-9223372036854775806 % 1); // @output 0

    io:println(9223372036854775806 % -1); // @output 0
    io:println(1 % -1); // @output 0
    io:println(0 % -1); // @output 0
    io:println(-1 % -1); // @output 0
    io:println(-9223372036854775806 % -1); // @output 0

    io:println(9223372036854775806 % -10); // @output 6
    io:println(1 % -10); // @output 1
    io:println(0 % -10); // @output 0
    io:println(-1 % -10); // @output -1
    io:println(-9223372036854775806 % -10); // @output -6

    io:println(9223372036854775806 % -9223372036854775806); // @output 0
    io:println(1 % -9223372036854775806); // @output 1
    io:println(0 % -9223372036854775806); // @output 0
    io:println(-1 % -9223372036854775806); // @output -1
    io:println(-9223372036854775806 % -9223372036854775806); // @output 0
}
