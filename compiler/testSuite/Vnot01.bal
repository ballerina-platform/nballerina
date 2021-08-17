import ballerina/io;

public function main() {
    printBoolean(); // @output 1
                    // @output 2
}

function printBoolean() {
    if !false {
        io:println(1);
    }
    boolean b = false;
    if !b {
        io:println(2);
    }
}


