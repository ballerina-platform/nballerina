// @productions match-stmt string string-literal return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo(1));
}

function foo(int v) returns string {
    match v {
        1 => {
            return "one";
        }
        _ => {
            return "other";
        }
    }
    return "unreached"; // @error
}