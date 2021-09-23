import root.types;
import ballerina/io;

public function main() {
    types:S s = "foo";
    io:println(s); // @output foo
}
