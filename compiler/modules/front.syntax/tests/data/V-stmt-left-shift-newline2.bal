import ballerina/io;
public function main() {
    int a = 4;
    int c = 1;
    // @case
    int b = a <<
    c;
    // @end
    io:println(b);
}
