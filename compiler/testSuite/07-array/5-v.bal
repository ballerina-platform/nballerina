import ballerina/io;

public function main() {
    int[] x = [2, 100];
    x[1] >>= x[1]>>4;
    io:println(x[1]); // @output 1
    x[1] += 33*3;
    io:println(x[1]); // @output 100
    x[1] -= x[1]*x[1];
    io:println(x[1]); // @output -9900
    string[] s = ["hello"];
    s[0] += " world";
    io:println(s[0]); // @output hello world
    string n = " nballerina";
    s[0] +=n;
}
