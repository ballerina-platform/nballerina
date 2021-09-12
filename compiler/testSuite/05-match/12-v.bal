// @productions match-stmt string-literal local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int x = 1;
    match x {
        1 => {
            io:println("one");  // @output one
        }
    }
    match x {
        _ => {
            io:println("any");  // @output any
        }
    }
}
