// @productions local-var-decl-stmt function-call-expr match-stmt
import ballerina/io;

function foo(int v) returns boolean {
    match v {
        1 => {
            boolean b = true; // @error
            return true;
        }
        _ => {
            return false;
        }
    }
}

public function main() {
    io:println(foo(2));
}
