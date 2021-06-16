import ballerina/io;

public function main() {
    printBoolean(lte(9223372036854775806, 9223372036854775806)); // @output 1
    printBoolean(lte(9223372036854775806, 1)); // @output 0
    printBoolean(lte(9223372036854775806, 0)); // @output 0
    printBoolean(lte(9223372036854775806, -1)); // @output 0
    printBoolean(lte(9223372036854775806, -9223372036854775806)); // @output 0

    printBoolean(lte(1, 9223372036854775806)); // @output 1
    printBoolean(lte(1, 1)); // @output 1
    printBoolean(lte(1, 0)); // @output 0
    printBoolean(lte(1, -1)); // @output 0
    printBoolean(lte(1, -9223372036854775806)); // @output 0

    printBoolean(lte(0, 9223372036854775806)); // @output 1
    printBoolean(lte(0, 1)); // @output 1
    printBoolean(lte(0, 0)); // @output 1
    printBoolean(lte(0, -1)); // @output 0
    printBoolean(lte(0, -9223372036854775806)); // @output 0

    printBoolean(lte(-1, 9223372036854775806)); // @output 1
    printBoolean(lte(-1, 1)); // @output 1
    printBoolean(lte(-1, 0)); // @output 1
    printBoolean(lte(-1, -1)); // @output 1
    printBoolean(lte(-1, -9223372036854775806)); // @output 0

    printBoolean(lte(-9223372036854775806, 9223372036854775806)); // @output 1
    printBoolean(lte(-9223372036854775806, 1)); // @output 1
    printBoolean(lte(-9223372036854775806, 0)); // @output 1
    printBoolean(lte(-9223372036854775806, -1)); // @output 1
    printBoolean(lte(-9223372036854775806, -9223372036854775806)); // @output 1
}

function lte(int a, int b) returns boolean {
    return a <= b;
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    } 
    else {
        io:println(0);
    }
}
