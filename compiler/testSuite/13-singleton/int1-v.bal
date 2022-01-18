import ballerina/io;

type Sign 1|-1;

public function main() {
   Sign x = 1;
   io:println(x); // @output 1
}
