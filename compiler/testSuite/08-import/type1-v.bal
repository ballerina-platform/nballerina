import root.types;
import ballerina/io;

type S types:S;

public function main() {
    S s = "foo";
    io:println(s); // @output foo
}
