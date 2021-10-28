import ballerina/io;
public function main() {
    checkpanic newError(); // @error
}

function newError() returns error|int {
    return error("failed successfully");
}
