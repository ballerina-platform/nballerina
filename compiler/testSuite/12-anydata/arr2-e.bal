import ballerina/io;
public function main() {
    error[] a = [];
    anydata val = a; // @error
    io:println(val);
}
