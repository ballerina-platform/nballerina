// @productions local-var-decl-stmt if-else-stmt string-literal
import ballerina/io;
public function main() {
    int|string x = "str";
    if x is int {
        int i = x;
        _ = i;
    } else {
        string s = x;
        io:println(s); // @output str
    }
}
