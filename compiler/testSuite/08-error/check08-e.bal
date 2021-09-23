import ballerina/io;
public function main() {
    checkpanic newError();
    io:println("unreached");
}

function newError() returns error {
    return error("failed successfully");
}
