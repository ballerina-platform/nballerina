// @productions error-constructor-expr string string-literal return-stmt function-call-expr
import ballerina/io;

public function main() {
    io:println(foo("help")); // @output error("help")
    bar(error("bad")); // @output error("bad")
}

function foo(string s) returns error {
    return error(s);
}

function bar(error err) {
    io:println(err);
}
