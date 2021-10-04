import ballerina/io;

// @small_heap 344
public function foo() {
    any[] a = [111, 112, 113];
    int[] ia1 = [116, 126];
    any[] aa1 = [115, ia1];
    int[] ia2 = [117, 118, 119];
    any[] b = [114, aa1, ia2];
    any[] c = [120, 121, 122]; // Collection happens here
    any[] ii = <any[]>b[2];
    any[] jj = <any[]>b[1];
    io:println(ii[2]); // @output 119
    io:println(jj[0]); // @output 115
    io:println(c[2]); // @output 122
}

public function main() {
    foo();
}