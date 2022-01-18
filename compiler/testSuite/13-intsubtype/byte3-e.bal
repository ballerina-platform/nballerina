import ballerina/io;

public function main() {
   byte x = -1; // @error
   io:println(x);
}

