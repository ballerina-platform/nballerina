import ballerina/io;

public function main() {
    string s = "hello";  
    io:println(s); // @output hello
    s = "bye";
    io:println(s); // @output bye
}
