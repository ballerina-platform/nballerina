// @productions map-type-descriptor mapping-constructor-expr string-literal assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    string s = "hello";
    map<any> m = {};
    m[s] = 42;
    io:println(m[s]); // @output 42
}
