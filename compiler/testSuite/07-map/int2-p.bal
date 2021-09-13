// @productions map-type-descriptor mapping-constructor-expr string-literal equality if-else-stmt equality-expr boolean-literal additive-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    map<int> mi = {};
    map<any> ma = mi;
    ma["x"] = true; // @panic bad mapping store
    int? x = mi["x"];
    if x != () {
        io:println(x + 1);
    }
}