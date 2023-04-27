import ballerina/io;
type S1 1|2|3|4|5|7|8|13|11|12|14;
type S2 4|7|13|8|12|14|10|9|15|16;
type S3 6|5|3|4|7|13|8|9|10;

type T1 1|2|3|4|5|7|8|13|11|12|14;
type T2 4|7|13|8|12|14|10|9|15|16;
type T3 6|5|3|4|7|13|8|9|10;

type F1 function(S1) returns T1;
type F2 function(S2) returns T2;
type F3 function(S3) returns T3;

type F F1 & F2 & F3;

type A 11|12|15|13;
type B 8|9;
type C 2|3|4;

public function main() {
    F f = foo;
    T1 v0 = f(2);
    io:println(v0); // @output 13
    A a = 11;
    T1|T2 v1 = f(a);
    io:println(v1); // @output 13
    B b = 9;
    T2&T3 v2 = f(b);
    io:println(v2); // @output 13
    C c = 2;
    T1 v3 = f(c);
    io:println(v3); // @output 13
    B|C d = 2;
    T1|(T2&T3) v4 = f(d);
    io:println(v4); // @output 13
}

function foo(S1|S2|S3 s) returns T1&T2&T3 {
    return 13;
}

