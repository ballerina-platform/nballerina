import ballerina/io;

public function main() {
    io:println(errorViaCheck()); // @output error("always err")
}

function errorViaCheck() returns error {
    check newError();
}

function newError() returns error {
    return error("always err");
}
