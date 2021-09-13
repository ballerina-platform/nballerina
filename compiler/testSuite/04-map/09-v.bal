// @productions map-type-descriptor mapping-constructor-expr string-literal boolean-literal local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    map<any> m = { x: true, y: 17, z: "hello"};
    io:println(m.length()); // @output 3
}
