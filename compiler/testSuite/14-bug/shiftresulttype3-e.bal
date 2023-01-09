import ballerina/io;
public function main() {
    int:Signed8 a = 4;

    int:Signed8 x = a >> 1; // @error
    io:println(x);
}
