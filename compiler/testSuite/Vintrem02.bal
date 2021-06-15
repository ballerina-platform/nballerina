import ballerina/io;

public function main() {
    io:println(rem(9223372036854775806 , 9223372036854775806)); // @output 0
    io:println(rem(1 , 9223372036854775806)); // @output 1
    io:println(rem(0 , 9223372036854775806)); // @output 0
    io:println(rem(-1 , 9223372036854775806)); // @output -1
    io:println(rem(-9223372036854775806 , 9223372036854775806)); // @output 0

    io:println(rem(9223372036854775806 , 10)); // @output 6
    io:println(rem(1 , 10)); // @output 1
    io:println(rem(0 , 10)); // @output 0
    io:println(rem(-1 , 10)); // @output -1
    io:println(rem(-9223372036854775806 , 10)); // @output -6

    io:println(rem(9223372036854775806 , 1)); // @output 0
    io:println(rem(1 , 1)); // @output 0
    io:println(rem(0 , 1)); // @output 0
    io:println(rem(-1 , 1)); // @output 0
    io:println(rem(-9223372036854775806 , 1)); // @output 0

    io:println(rem(9223372036854775806 , -1)); // @output 0
    io:println(rem(1 , -1)); // @output 0
    io:println(rem(0 , -1)); // @output 0
    io:println(rem(-1 , -1)); // @output 0
    io:println(rem(-9223372036854775806 , -1)); // @output 0

    io:println(rem(9223372036854775806 , -10)); // @output 6
    io:println(rem(1 , -10)); // @output 1
    io:println(rem(0 , -10)); // @output 0
    io:println(rem(-1 , -10)); // @output -1
    io:println(rem(-9223372036854775806 , -10)); // @output -6

    io:println(rem(9223372036854775806 , -9223372036854775806)); // @output 0
    io:println(rem(1 , -9223372036854775806)); // @output 1
    io:println(rem(0 , -9223372036854775806)); // @output 0
    io:println(rem(-1 , -9223372036854775806)); // @output -1
    io:println(rem(-9223372036854775806 , -9223372036854775806)); // @output 0
}

function rem(int a, int b) returns int {
    return a % b;
}
