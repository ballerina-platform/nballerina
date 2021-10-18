import ballerina/io;

public function main() {
    int? i = ();
    () ufo = <()> i;
    io:println(ufo is ()); // @output true
}
