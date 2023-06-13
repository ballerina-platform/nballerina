// Venn diagram https://github.com/ballerina-platform/nballerina/issues/907#issuecomment-1588623742
import ballerina/io;
type S1 1|2|3|4|5|7|8|13|11|12|14;
type S2 4|7|13|8|12|14|10|9|15|16;
type S3 6|5|3|4|7|13|8|9|10;

type F1 function(S1) returns S1;
type F2 function(S2) returns S2;
type F3 function(S3) returns S3;

type F F1 & F2 & F3;

type A 11|12|15|13;
type B 8|9;
type C 2|3|4;

public function main() {
    F f = foo;
    S1 v0 = f(2);
    io:println(v0); // @output 13
    A a = 11;
    S1|S2 v1 = f(a);
    io:println(v1); // @output 13
    B b = 9;
    S2&S3 v2 = f(b);
    io:println(v2); // @output 13
    C c = 2;
    S1 v3 = f(c);
    io:println(v3); // @output 13
    B|C d = 2;
    S1|(S2&S3) v4 = f(d);
    io:println(v4); // @output 13
}

function foo(S1|S2|S3 s) returns S1&S2&S3 {
    return 13;
}
