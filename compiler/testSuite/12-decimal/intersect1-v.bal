import ballerina/io;
public function main() {
    (decimal|int)&(decimal|float) t1 = 2.3e23d;
    decimal?&decimal t2 = t1;
    (decimal|int)&decimal? t3 = t2;
    io:println(t3); // @output 2.3E+23
}
