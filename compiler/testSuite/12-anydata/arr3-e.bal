import ballerina/io;
public function main() {
    any[] a = [1, 3];
    anydata val = a; // @error
    io:println(val);
}
