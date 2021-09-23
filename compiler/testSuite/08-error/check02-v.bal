import ballerina/io;

public function main() {
    io:println(catch()); // @output 22
}

function catch() returns int|error {
    check neverErr();
    return 22;
}

function neverErr() returns error? {
    return ();
}
