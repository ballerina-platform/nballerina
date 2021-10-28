// @productions map-type-descriptor mapping-constructor-expr string-literal type-cast-expr any local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    map<any> x = {value: 42};
    any y = x;
    io:println((<map<any>>y)["value"]); // @output 42
}
