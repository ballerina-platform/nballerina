import ballerina/io;
public function main() {
    int a = 4;
    // @case
    int b = a <<
    1;
    // @end
    io:println(b);
}
