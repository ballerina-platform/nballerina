import ballerina/io;
public function main() {
    checkpanic newError();  // the checkpanic will always panic, but that's not an error
    io:println("unreached"); // @error
}

function newError() returns error {
    return error("failed successfully");
}
