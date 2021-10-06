import ballerina/io;

type MyNil ();

public function main() {
    MyNil n = ();
    io:println(n is ()); // @output true
    io:println(() is MyNil); // @output true
}
