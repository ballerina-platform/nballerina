import ballerina/io;

public function main() {
    p(1); // @output int
    p(false); // @output boolean
    p("hello"); // @output string
    p("this is a long string"); // @output string
    p(0x7fffffffffffffff); // @output int
    p(-0x7fffffffffffffff); // @output int
    any list = [1, 2];
    p(list); // @output array
    any mapping = {};
    p(mapping); // @output map
}

function p(any v) {
    if v is boolean {
        io:println("boolean");
    }
    if v is int {
        io:println("int");
    }
    if v is string {
        io:println("string");
    }
    if v is any[] {
        io:println("array");
    }
    if v is map<any> {
        io:println("map");
    }
}