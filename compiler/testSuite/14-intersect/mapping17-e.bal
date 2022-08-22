import ballerina/io;
type R1 record { int x; int y; };
type R2 record { int x; string y; };

public function main() {
   (R1&R2)|() r = (); // @error
   io:println(r);
}
