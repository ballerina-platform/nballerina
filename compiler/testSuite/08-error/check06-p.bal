import ballerina/io;
public function main() {
    checkpanic newError();
    io:println("may not reach");
}

function newError() returns error? {
    return error("failed successfully"); // @panic failed successfully
}
