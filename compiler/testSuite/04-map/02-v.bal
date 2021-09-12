// @productions mapping-constructor-expr int-literal
import ballerina/io;

public function main() {
    io:println({x: 1, y: 2}); // @output {"x":1,"y":2}
}
