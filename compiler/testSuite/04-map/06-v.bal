// @productions map-type-descriptor mapping-constructor-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    map<any> m = { };
    any x = m;
    io:println(x); // @output {}
}
