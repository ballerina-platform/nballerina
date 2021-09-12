// @productions is-not-expr is-expr string string-literal if-else-stmt any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any s = "hello";
    any i = 3;
    foo(s); // @output string
    foo(i); // @output not string
}

function foo(any x){
    if x !is string {
        io:println("not string");
    }
    else {
        io:println("string");
    }
    
}
