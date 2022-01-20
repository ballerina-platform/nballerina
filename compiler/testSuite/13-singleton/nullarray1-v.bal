import ballerina/io;

public function main() {
    null[] v = [()];
    v[0] = ();
    null n = v[0];
    io:println(n === ()); // @output true
}
