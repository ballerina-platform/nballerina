// Venn diagram https://github.com/ballerina-platform/nballerina/issues/907#issuecomment-1588623742
import ballerina/io;
type S1 1|2|3|4|8|9|F1;
type S2 3|4|5|6|9|F2|F3;
type S3 2|3|6|7|8|9|F2|F3;

type F1 function(S1) returns S1;
type F2 function(S2) returns S2;
type F3 function(S3) returns S3;

type F F1&F2&F3;

type B F3|F2;
type C 8|9|F1;

public function main() {
    F f = foo; 	
    F1 v1 = foo;
    S1 r1 = f(v1);
    io:println(r1); // @output 3
    B|C v2 = foo;
    S1|(S2&S3) r2 = f(v2);
    io:println(r2); // @output 3
    C v3 = foo;
    S1 r3 = f(v3);
    io:println(r3); // @output 3
    B v4 = foo;
    S2&S3 r4 = f(v4);
    io:println(r4); // @output 3
}

function foo(S1|S2|S3 s) returns S1&S2&S3 {
    return 3;
}
