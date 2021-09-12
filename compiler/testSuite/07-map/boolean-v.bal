// @productions map-type-descriptor mapping-constructor-expr string-literal equality if-else-stmt equality-expr boolean-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    map<boolean> m = { x: true, y: false };
    io:println(m["x"]); // @output true
    io:println(m["y"]); // @output false
    if m["z"]  == () {
        io:println("nil"); // @output nil
    }
}
