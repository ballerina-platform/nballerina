// @productions map-type-descriptor mapping-constructor-expr exact-equality equality equality-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    map<int> v1 = { x: 1, y: 2, z: 3 };
    map<int> v2 = { z: 3, y: 2, x: 1 };
    map<int> v3 = { x: 1, y: 2, z: 4 };
    map<int> v4 = { x: 1, y: 2, z: 3, w: 4 };

    io:println(v1 == v1); // @output true
    io:println(v1 == v2); // @output true
    io:println(v1 == v3); // @output false
    io:println(v1 == v4); // @output false
    io:println(v4 == v1); // @output false
    io:println(v1 === v1); // @output true
    io:println(v1 === v2); // @output false
}