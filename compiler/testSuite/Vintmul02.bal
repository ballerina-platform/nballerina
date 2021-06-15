import ballerina/io;

public function main() {
    io:println(mul(9223372036854775806, 1)); // @output 9223372036854775806
    io:println(mul(9223372036854775806, 0)); // @output 0
    io:println(mul(9223372036854775806, -1)); // @output -9223372036854775806

    io:println(mul(1, 1)); // @output 1
    io:println(mul(1, 0)); // @output 0
    io:println(mul(1, -1)); // @output -1

    io:println(mul(0, 1)); // @output 0
    io:println(mul(0, 0)); // @output 0
    io:println(mul(0, -1)); // @output 0

    io:println(mul(-1, 1)); // @output -1
    io:println(mul(-1, 0)); // @output 0
    io:println(mul(-1, -1)); // @output 1

    io:println(mul(-9223372036854775806, 1)); // @output -9223372036854775806
    io:println(mul(-9223372036854775806, 0)); // @output 0
    io:println(mul(-9223372036854775806, -1)); // @output 9223372036854775806
}

function mul(int a, int b) returns int {
    return a * b;
}
