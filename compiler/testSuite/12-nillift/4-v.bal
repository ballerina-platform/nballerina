import ballerina/io;
public function main() {
    int? a = 5;
    int? c = -a;
    io:println(c); // @output -5
}
