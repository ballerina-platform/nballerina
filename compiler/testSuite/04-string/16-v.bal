// @productions string string-literal range-expr foreach-stmt return-stmt additive-expr function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    string str = "x";
    foreach int i in 0..<9 {
        str = double(str);
    }
    io:println(str.length()); // @output 512
}

function double(string s) returns string{
    return s + s;
}
