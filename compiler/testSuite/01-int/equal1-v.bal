import ballerina/io;

public function main() {
    // Note that spec does not allow == between two operand where the intersection of the operand types is empty 
    // So 1 == 0 is illegal
    int big = 9223372036854775806;
    printBoolean(big == 9223372036854775806); // @output 1
    printBoolean(big == 1); //@output 0
    printBoolean(big == 0); //@output 0
    printBoolean(big == -1); //@output 0
    printBoolean(big == -9223372036854775806); //@output 0

    int one = 1;
    printBoolean(one == 9223372036854775806); // @output 0
    printBoolean(one == 1); // @output 1
    printBoolean(one == 0); //@output 0
    printBoolean(one == -1); //@output 0
    printBoolean(one == -9223372036854775806); //@output 0

    int zero = 0;
    printBoolean(zero == 9223372036854775806); // @output 0
    printBoolean(zero == 1); // @output 0
    printBoolean(zero == 0); // @output 1
    printBoolean(zero == -1); //@output 0
    printBoolean(zero == -9223372036854775806); //@output 0

    printBoolean(-one == 9223372036854775806); // @output 0
    printBoolean(-one == 1); // @output 0
    printBoolean(-one == 0); // @output 0
    printBoolean(-one == -1); // @output 1
    printBoolean(-one == -9223372036854775806); //@output 0

    printBoolean(-big == 9223372036854775806); // @output 0
    printBoolean(-big == 1); // @output 0
    printBoolean(-big == 0); // @output 0
    printBoolean(-big == -1); // @output 0
    printBoolean(-big == -9223372036854775806); // @output 1
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    } 
    else {
        io:println(0);
    }
}
