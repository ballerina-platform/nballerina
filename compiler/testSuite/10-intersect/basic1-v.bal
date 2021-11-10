import ballerina/io;

type T1 int|string;
type T2 float|string;
type S T1&T2;

public function main() {
    S s1 = "Intersect!";
    (int|string)&(string|float) s2 = s1;
    string?&string s3 = s2;
    T1&string? s4 = s3;
    io:println(s4); // @output Intersect!
}
