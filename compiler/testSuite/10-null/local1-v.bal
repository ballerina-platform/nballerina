import ballerina/io;

type MyNil null;

public function main() {
    MyNil n = null;
    io:println(n is null); // @output true
    io:println(null is MyNil); // @output true
}
