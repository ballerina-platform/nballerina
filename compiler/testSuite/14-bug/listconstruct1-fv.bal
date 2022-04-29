import ballerina/io;
public function main() {
    anydata|anydata[] a5 = [1, 2, 3];
    io:println(a5 is anydata[]); // @output true
    io:println(a5 is anydata[3]); // @output false
}
