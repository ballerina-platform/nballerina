import ballerina/io;

public function main() {
    printBoolean(true); // @output 1
    printBoolean(false); // @output 0
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    }
    else {
        io:println(0);
    }
}
