import ballerina/io;
public function main() {
    checkpanic newError(); // @error
    io:println("unreached");
}

function newError() returns error {
    return error("failed successfully");
}
