import ballerina/io;

public function main() {
    io:println(9223372036854775806 * 1); // @output 9223372036854775806
    io:println(9223372036854775806 * 0); // @output 0
    io:println(9223372036854775806 * -1); // @output -9223372036854775806

    io:println(1 * 1); // @output 1
    io:println(1 * 0); // @output 0
    io:println(1 * -1); // @output -1

    io:println(0 * 1); // @output 0
    io:println(0 * 0); // @output 0
    io:println(0 * -1); // @output 0

    io:println(-1 * 1); // @output -1
    io:println(-1 * 0); // @output 0
    io:println(-1 * -1); // @output 1

    io:println(-9223372036854775806 * 1); // @output -9223372036854775806
    io:println(-9223372036854775806 * 0); // @output 0
    io:println(-9223372036854775806 * -1); // @output 9223372036854775806
}
