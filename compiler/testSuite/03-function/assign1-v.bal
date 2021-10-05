// @productions local-var-decl-stmt function-call-expr
import ballerina/io;

function foo(string str) returns string {
    io:println(str);                        
    return "test string2";                  
}

public function main() {
    int _ = 2;
    int _ = 3;
    int|error _ = 2;
    boolean _ = true;
    string _ = foo("test string1"); // @output test string1
}
