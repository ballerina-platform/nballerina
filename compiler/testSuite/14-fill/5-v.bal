import ballerina/io;
public function main() {
    "xyz"[] a = [];
    a[3] = "xyz";
    io:println(a); // @output ["xyz","xyz","xyz","xyz"]

    string[] b = [];
    b[3] = "abc";
    io:println(b); // @output ["","","","abc"]
}
