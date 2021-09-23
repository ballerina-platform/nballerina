import ballerina/io;
public function main() {
    io:println(passAlong()); // @output error("err")
}

function passAlong() returns error? {
    checkpanic check alwaysErr();
}

function alwaysErr() returns error? {
    return error("err");
}
