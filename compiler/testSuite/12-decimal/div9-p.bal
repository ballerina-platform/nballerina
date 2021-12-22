import ballerina/io;
public function main() {
    // This test case corresponds to a float operation which gives NaN.
    decimal d1 = 0d;
    decimal d2 = 0d;
    io:println(d1 / d2); // @panic not a valid decimal
}
