import ballerina/io;

public function main() {
    printBoolean(9223372036854775806 <= 9223372036854775806); // @output 1
    printBoolean(9223372036854775806 <= 1); // @output 0
    printBoolean(9223372036854775806 <= 0); // @output 0
    printBoolean(9223372036854775806 <= -1); // @output 0
    printBoolean(9223372036854775806 <= -9223372036854775806); // @output 0

    printBoolean(1 <= 9223372036854775806); // @output 1
    printBoolean(1 <= 1); // @output 1
    printBoolean(1 <= 0); // @output 0
    printBoolean(1 <= -1); // @output 0
    printBoolean(1 <= -9223372036854775806); // @output 0

    printBoolean(0 <= 9223372036854775806); // @output 1
    printBoolean(0 <= 1); // @output 1
    printBoolean(0 <= 0); // @output 1
    printBoolean(0 <= -1); // @output 0
    printBoolean(0 <= -9223372036854775806); // @output 0

    printBoolean(-1 <= 9223372036854775806); // @output 1
    printBoolean(-1 <= 1); // @output 1
    printBoolean(-1 <= 0); // @output 1
    printBoolean(-1 <= -1); // @output 1
    printBoolean(-1 <= -9223372036854775806); // @output 0

    printBoolean(-9223372036854775806 <= 9223372036854775806); // @output 1
    printBoolean(-9223372036854775806 <= 1); // @output 1
    printBoolean(-9223372036854775806 <= 0); // @output 1
    printBoolean(-9223372036854775806 <= -1); // @output 1
    printBoolean(-9223372036854775806 <= -9223372036854775806); // @output 1
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    } 
    else {
        io:println(0);
    }
}
