import ballerina/io;

type MyNil ();
type AnotherNil MyNil?;

public function main() {
    AnotherNil n = ();
    if n is MyNil {
        return;
    }
    io:println("opt and nil are not the same"); // @error
}
