// @productions is-expr map-type-descriptor mapping-constructor-expr string string-literal if-else-stmt any local-var-decl-stmt
import ballerina/io;

public function main() {
    map<int> im = {};
    if im is map<any> {
        io:println("map<any>"); // @output map<any>
    }
    if im is map<string> {
        io:println("map<string>");
    }
    if im is map<int?> {
        io:println("map<int?>"); // @output map<int?>
    }
    if im is map<int|string> {
        io:println("map<int|string>"); // @output map<int|string>
    }
}
