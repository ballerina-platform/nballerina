import ballerina/io;
public function main() {
    int? a = 5;
    int? b = 6;
    int? c = 1;

    int? v1 = a + b;
    io:println(v1); // @output 11
    io:println(a + b); // @output 11

    int? v2 = a + b + c;
    io:println(v2); // @output 12
    io:println(a + b + c); // @output 12

    int? v3 = a - b;
    io:println(v3); // @output -1

    int? v4 = a + b - c;
    io:println(v4); // @output 10

    io:println(b / c); // @output 6

    int? v5 = b / 3;
    io:println(v5); // @output 2

    int? v6 = -a;
    io:println(v6); // @output -5
    io:println(-c); // @output -1

    int d = 13;
    int? v7 = a + d;
    io:println(v7); // @output 18
    io:println(a + b + c + d); // @output 25

    int? e = ();
    int? v8 = a + e;
    io:println(v8); // @output 
    io:println(a + b + c + d + e); // @output 

    io:println(-a); //@output -5
}
