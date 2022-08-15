import ballerina/io;
type R1 record { int x; };
type R2 record { string x; };

public function main() {
   (R1&R2)|() r = (); // @error
   io:println(r);
}
