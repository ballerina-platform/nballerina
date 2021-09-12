// @productions map-type-descriptor mapping-constructor-expr boolean-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    map<any> m = { foo: true, bar: ()};
    io:println(m); // @output {"foo":true,"bar":null}
}