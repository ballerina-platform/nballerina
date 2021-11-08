import ballerina/io;

type MyNil null;

public function main() {
    int? i = null;
    MyNil n = <MyNil> i;
    io:println(n is null); // @output true
}
