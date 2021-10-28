// @productions map-type-descriptor mapping-constructor-expr string-literal equality if-else-stmt equality-expr floating-point-literal additive-expr any assign-stmt local-var-decl-stmt
import ballerina/io;

public function main() {
    map<float> m = { };
    m["x"] = 1;
    float? x = m["x"];
    if x != () {
        io:println(x + 0.5); // @output 1.5
    }
}
