// @productions local-var-decl-stmt if-else-stmt string-literal
import ballerina/io;
public function main() {
    int|string x = "str";
    if x is string {
        string s = x;
        io:println(s); // @output str
    }
}
