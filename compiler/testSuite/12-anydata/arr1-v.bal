import ballerina/io;
public function main() {
    int[] a = [1, 2, 3];
    anydata val = a;
    io:println(val); // @output [1,2,3]
    anydata[] b = [a, a];
    val = b;
    io:println(val); // @output [[1,2,3],[1,2,3]]
}
