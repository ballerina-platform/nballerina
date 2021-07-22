import ballerina/io;
public function main() {
    int x = 1;
    any v = x + 3;
    io:println(v); // @output 4
    v = x == 1;
    io:println(v); // @output true
    v = x > 2;
    io:println(v); // @output false
    v = !(x > 2);
    io:println(v); // @output true
    io:println(x >= 1); // @output true
    io:println(x + 2); // @output 3
}
