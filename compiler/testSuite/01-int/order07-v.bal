import ballerina/io;

public function main() {
    printBoolean(gt(9223372036854775806, 9223372036854775806)); // @output 0
    printBoolean(gt(9223372036854775806, 1)); // @output 1
    printBoolean(gt(9223372036854775806, 0)); // @output 1
    printBoolean(gt(9223372036854775806, -1)); // @output 1
    printBoolean(gt(9223372036854775806, -9223372036854775806)); // @output 1

    printBoolean(gt(1, 9223372036854775806)); // @output 0
    printBoolean(gt(1, 1)); // @output 0
    printBoolean(gt(1, 0)); // @output 1
    printBoolean(gt(1, -1)); // @output 1
    printBoolean(gt(1, -9223372036854775806)); // @output 1

    printBoolean(gt(0, 9223372036854775806)); // @output 0
    printBoolean(gt(0, 1)); // @output 0
    printBoolean(gt(0, 0)); // @output 0
    printBoolean(gt(0, -1)); // @output 1
    printBoolean(gt(0, -9223372036854775806)); // @output 1

    printBoolean(gt(-1, 9223372036854775806)); // @output 0
    printBoolean(gt(-1, 1)); // @output 0
    printBoolean(gt(-1, 0)); // @output 0
    printBoolean(gt(-1, -1)); // @output 0
    printBoolean(gt(-1, -9223372036854775806)); // @output 1

    printBoolean(gt(-9223372036854775806, 9223372036854775806)); // @output 0
    printBoolean(gt(-9223372036854775806, 1)); // @output 0
    printBoolean(gt(-9223372036854775806, 0)); // @output 0
    printBoolean(gt(-9223372036854775806, -1)); // @output 0
    printBoolean(gt(-9223372036854775806, -9223372036854775806)); // @output 0
}

function gt(int a, int b) returns boolean {
    return a > b;
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    } 
    else {
        io:println(0);
    }
}
