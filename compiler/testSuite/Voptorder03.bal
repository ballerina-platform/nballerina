import ballerina/io;

public function main() {
    float? a = 5;
    io:println(a <= ()); // @output false
    io:println(a < ()); // @output false
    io:println(a >= ()); // @output false
    io:println(a > ()); // @output false

    io:println(() <= a); // @output false
    io:println(() < a); // @output false
    io:println(() >= a); // @output false
    io:println(() > a); // @output false
}
