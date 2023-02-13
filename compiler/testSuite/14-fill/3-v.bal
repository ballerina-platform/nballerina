import ballerina/io;
public function main() {
    true[] a = [];
    a[3] = true;
    io:println(a); // @output [true,true,true,true]

    boolean[] b = [];
    b[3] = true;
    io:println(b); // @output [false,false,false,true]
}
