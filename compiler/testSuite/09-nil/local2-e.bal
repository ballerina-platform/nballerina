import ballerina/io;

type MyNil ();

public function main() {
    MyNil n = false; // @error
}
