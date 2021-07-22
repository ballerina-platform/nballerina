import ballerina/io;
public function main() {
    any i = 5;
    int j = 4;
    io:println(i & j); // @error
}
