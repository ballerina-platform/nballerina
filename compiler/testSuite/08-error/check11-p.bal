import ballerina/io;
public function main() {
    io:println(doPanic());
}

function doPanic() {
    check checkpanic alwaysErr();
}

function alwaysErr() returns error? {
    return error("err"); // @panic err
}
