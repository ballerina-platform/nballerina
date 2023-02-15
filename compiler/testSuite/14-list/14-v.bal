import ballerina/io;
public function main() {
    int[] a = [1, 2];
    any b = a == [1, 2];
    io:println(b); // @output true
    any c = a == [3, 1];
    io:println(c); // @output false
    any d = [1, 2] == [3, 1];
    io:println(d); // @output false
    any e = [1, 2] == [1, 2];
    io:println(e); // @output true
}
