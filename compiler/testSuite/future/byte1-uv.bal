import ballerina/io;

type Byte byte;

public function main() {
   Byte x = 1;
   io:println(x); // @output 1
}
