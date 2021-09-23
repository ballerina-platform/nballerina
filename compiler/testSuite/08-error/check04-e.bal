import ballerina/io;

public function main() {
    io:println(noAssign());
}

function noAssign() returns error? {
    check errorOrInt(); // @error
}

function errorOrInt() returns error|int {
    return 0;
}
