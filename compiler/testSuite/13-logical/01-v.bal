import ballerina/io;
public function main() {
    io:println(true && f("a", true));  // @output a
                                       // @output true

    io:println(false && f("b", true));  // @output false

    io:println(false || f("c", false));  // @output c
                                         // @output false

    io:println(true || f("c", false));  // @output true
}

public function f(string s, boolean b) returns boolean {
    io:println(s);
    return b;
}
