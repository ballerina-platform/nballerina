import ballerina/io;
type M map<M>; // @error

public function main() {
    M? m = ();
    io:println(m);
}
