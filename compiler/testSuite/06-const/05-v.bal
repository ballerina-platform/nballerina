// @productions module-const-decl relational-expr int-literal
import ballerina/io;

const B = () < 1;

public function main() {
    io:println(B); // @output false
}

