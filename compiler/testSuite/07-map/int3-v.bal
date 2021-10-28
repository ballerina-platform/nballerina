// @productions map-type-descriptor mapping-constructor-expr string-literal equality if-else-stmt equality-expr additive-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    map<int> m = { x: 5, y: 7 };
    int? x = m["x"];
    int? y = m["y"];
    if x != () {
        if y != () {
            io:println(x + y); // @output 12
        }
    }
}
