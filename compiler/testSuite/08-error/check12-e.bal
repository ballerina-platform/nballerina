import ballerina/io;

public function main() {
    io:println(errorViaCheck());
}

function errorViaCheck() returns error? {
    check newError(); // the checkpanic will always panic, but that's not an error
    io:print("unreachable"); // @error
}

function newError() returns error {
    return error("always err");
}
