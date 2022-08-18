import ballerina/io;
type L [L]; // @error

public function main() {
    L|() l = ();
    io:println(l);
}
