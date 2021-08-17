import ballerina/io;

public function main() {
    map<any> m = { foo: 17, bar: 42 };
    any v = m["foo"];
    io:println(v); // @output 17
    io:println(m["bar"]); // @output 42
    io:println([m["baz"]]); // @output [null]
}
