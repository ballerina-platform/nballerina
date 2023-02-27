import ballerina/io;
public function main() {
    io:println([1, 2, 3][2]); // @output 3
    io:println([[1, 2], 3][0][1]); // @output 2
}
