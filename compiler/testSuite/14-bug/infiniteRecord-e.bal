import ballerina/io;
type R record {| R r; |}; // @error

public function main() {
    R? rec = ();
    io:println(rec);
}
