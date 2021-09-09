import ballerina/io;
public function main() {
    int i = 5;
    int j = 9;
    io:println(i | j); // @output 13

    i = 9223372036854775807;
    j = 9223372036854775807;
    io:println(i | j); // @output 9223372036854775807

    i = -1;
    j = -1;
    io:println(i | j); // @output -1

    i = 9223372036854775807;
    j = -1;
    io:println(i | j); // @output -1
}
