import root.sub1;
import root.sub2;
import ballerina/io;

public function main() {
    io:println(sub1:main(17)); // @output 18
    io:println(sub2:foo()); // @output 2
}
