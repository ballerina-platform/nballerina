import ballerina/io;

type MyNil ();

public function main() {
    int? i = ();
    MyNil n = <MyNil> i;
    io:println(n is ()); // @output true
}
