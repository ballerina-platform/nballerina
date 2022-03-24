import ballerina/io;
public function main() {
    io:println(addAll(1));
}

function addAll(int...) returns int { // @error
    return 0;
}
