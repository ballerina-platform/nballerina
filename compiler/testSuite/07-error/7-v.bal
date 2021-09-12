// @productions error-constructor-expr string-literal type-cast-expr
import ballerina/io;

public function main() {
    error? x = error("hello");
    error e = <error>x;
    io:println(e); // @output error("hello")
}
