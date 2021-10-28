// @productions map-type-descriptor mapping-constructor-expr string string-literal type-cast-expr return-stmt any function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    map<any> m = {};
    put(m, "five", 5);
    io:println(get(m, "five")); // @output 5
}

function put(map<any> m, string k, int v) {
    m[k] = v;
}


function get(map<any> m, string k) returns int{
    return <int> m[k];
}
