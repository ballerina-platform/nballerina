import ballerina/io;

public function main() {
    error e1 = error("hi");
    error e2 = error("hi");
    io:println(e1 === e1); // @output true
    io:println(e1 !== e1); // @output false
    io:println(e1 === e2); // @output false
    io:println(e1 !== e2); // @output true
    any|error a1 = e1;
    any|error a2 = e2;
    io:println(a1 === a1); // @output true
    io:println(a1 !== a1); // @output false
    io:println(a1 === a2); // @output false
    io:println(a1 !== a2); // @output true
    error? v1 = e1;
    error? v2 = e2;
    io:println(v1 === v1); // @output true
    io:println(v1 !== v1); // @output false
    io:println(v1 === v2); // @output false
    io:println(v1 !== v2); // @output true
    v2 = ();
    io:println(v1 === v2); // @output false
    io:println(error("hi") === error("hi")); // @output false
}