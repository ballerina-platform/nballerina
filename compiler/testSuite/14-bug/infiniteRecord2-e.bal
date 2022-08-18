import ballerina/io;
type R record {| R r; int x; |}; // @error
type R1 record {| any r; int x; |};

public function main() {
    R1 r1 = { r: (), x: 1 };
    r1.r = r1;
    io:println(r1);
    R r = <R> r1;
    io:println(r);
}
