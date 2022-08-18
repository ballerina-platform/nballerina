
import ballerina/io;
type A1 (int|string)[];
type A2 (byte|"a"|"b"|"c")[];

public function main() {
    A1&A2 a = [5, "b", "c"];
    a[2] = "x"; // @error
    io:println(a);
}
