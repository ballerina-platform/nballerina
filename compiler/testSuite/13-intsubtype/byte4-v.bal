import ballerina/io;

public function main() {
   byte? x = ();
   x = 0xff;
   io:println(x); // @output 255
}
