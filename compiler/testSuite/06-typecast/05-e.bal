import ballerina/io;

public function main() {
    string i = <string>f(); // @error
    io:println(i);
}

public function f() returns int|boolean {
    return false;
}
