import ballerina/io;

public function main() {
    printBoolean(); // @output 1
}

function printBoolean() {
    if !false {
        io:println(1);
    }
}


