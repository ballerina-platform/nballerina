import ballerina/io;

type MyNil null;
type AnotherNil MyNil?;

public function main() {
    AnotherNil n = null;
    if n is MyNil {
        return;
    }
    io:println("opt and nil are not the same"); // @error
}
