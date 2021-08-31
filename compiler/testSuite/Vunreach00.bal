import ballerina/io;

public function main() {
    // Type of this is not singleton, so no error
    if (0 > 1) == (1 === 1) {
        io:println("true");
    }
    else {
        io:println("false"); // @output false
    }
}
