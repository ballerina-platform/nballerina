import ballerina/io;

public function main() {
    io:println(errorViaCheck()); // @output error("failed successfully")
}

function errorViaCheck() returns error? {
    check newError();
}

function newError() returns error? {
    return error("failed successfully");
}
