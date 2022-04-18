import ballerina/io;
public function main() {
    string s = "!";
    io:println(<string:Char> s); // @output !
}
