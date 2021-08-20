import ballerina/io;

// @small_heap 304
public function foo() {
    any[] a = [111, 112, 113];
    any[] b = [114, [115, [116, 126]], [117, 118, 119]]; 
    any[] c = [120, 121, 122]; // Collection should happen here
    any[] ii = <any[]>b[2];
    any[] jj = <any[]>b[1];
    io:println(ii[2]); // @output 119
    io:println(jj[0]); // @output 115
    io:println(c[2]); // @output 122
}

public function main() {
    foo();
}