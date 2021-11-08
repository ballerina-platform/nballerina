import ballerina/io;

type MyNil null;

public function main() {
    MyNil n = false; // @error
}
