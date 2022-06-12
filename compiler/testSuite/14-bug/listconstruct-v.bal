import ballerina/io;

public function main() {
    [int]|[int, int]|[int, int, int] t1 = [1, 2, 3];
    io:println(t1 is [int, int, int]); // @output true
    io:println(t1 is [byte, byte, byte]); // @output false

    [int]|[int, int]|int|byte t2 = [1, 2];
    io:println(t2 is [int, int]); // @output true
    io:println(t2 is [byte, byte]); // @output false

    [int...]|int|byte t3 = [1, 2];
    io:println(t3 is [int...]); // @output true
    io:println(t3 is [int, int]); // @output false
    io:println(t3 is [byte...]); // @output false
}
