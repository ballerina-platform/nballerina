import ballerina/io;

public function main() {
    io:println(errorViaCheck());
}

function errorViaCheck() returns error? {
    check newError(); // @error
    io:print("unreachable");
}

function newError() returns error {
    return error("always err");
}
