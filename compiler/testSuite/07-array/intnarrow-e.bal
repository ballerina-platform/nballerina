// @productions is-expr string list-constructor-expr if-else-stmt local-var-decl-stmt int-literal
import ballerina/io;

type IS (int|string)[];

public function main() {
    IS v = [1];
    foo(v);
}

function foo(IS v) {
    if v is string[] {
    
    }
    else {
        int i = v[0]; // @error
        io:println(i);
    }
}
