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
