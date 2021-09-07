import ballerina/io;

public function main() {
    if makeNil() == makeNil() {
        io:println(1); // @output 1
    }
}

function makeNil() {
    return;
}
