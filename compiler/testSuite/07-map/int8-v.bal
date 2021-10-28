// @productions map-type-descriptor mapping-constructor-expr type-cast-expr exact-equality equality-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    map<int> im = {x: 1, y: 2, z: 3};
    any m = im;
    _ = m;
    map<int> im2 = <map<int>>im;
    io:println(im2); // @output {"x":1,"y":2,"z":3}
    io:println(im === im2); // @output true
}
