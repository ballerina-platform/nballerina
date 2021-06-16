import ballerina/io;

public function main() {
    printBoolean(lt(9223372036854775806, 9223372036854775806)); // @output 0
    printBoolean(lt(9223372036854775806, 1)); // @output 0
    printBoolean(lt(9223372036854775806, 0)); // @output 0
    printBoolean(lt(9223372036854775806, -1)); // @output 0
    printBoolean(lt(9223372036854775806, -9223372036854775806)); // @output 0

    printBoolean(lt(1, 9223372036854775806)); // @output 1
    printBoolean(lt(1, 1)); // @output 0
    printBoolean(lt(1, 0)); // @output 0
    printBoolean(lt(1, -1)); // @output 0
    printBoolean(lt(1, -9223372036854775806)); // @output 0

    printBoolean(lt(0, 9223372036854775806)); // @output 1
    printBoolean(lt(0, 1)); // @output 1
    printBoolean(lt(0, 0)); // @output 0
    printBoolean(lt(0, -1)); // @output 0
    printBoolean(lt(0, -9223372036854775806)); // @output 0

    printBoolean(lt(-1, 9223372036854775806)); // @output 1
    printBoolean(lt(-1, 1)); // @output 1
    printBoolean(lt(-1, 0)); // @output 1
    printBoolean(lt(-1, -1)); // @output 0
    printBoolean(lt(-1, -9223372036854775806)); // @output 0

    printBoolean(lt(-9223372036854775806, 9223372036854775806)); // @output 1
    printBoolean(lt(-9223372036854775806, 1)); // @output 1
    printBoolean(lt(-9223372036854775806, 0)); // @output 1
    printBoolean(lt(-9223372036854775806, -1)); // @output 1
    printBoolean(lt(-9223372036854775806, -9223372036854775806)); // @output 0
}

function lt(int a, int b) returns boolean {
    return a < b;
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    } 
    else {
        io:println(0);
    }
}
