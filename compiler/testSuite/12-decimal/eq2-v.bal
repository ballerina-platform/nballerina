import ballerina/io;
public function main() {
    decimal d1 = 1d;
    decimal d2 = 1d; 
    io:println(d1 == d2); // @output true
    d1 = -1d; 
    d2 = 1d; 
    io:println(d1 != d2); // @output true
    d1 = 0d; 
    d2 = 0d;
    io:println(d1 == d2); // @output true
    d1 = 9.999999999999999999999999999999999E6144d; 
    d2 = 0.000000000000000000000000000000001E6144d;
    io:println(d1 != d2); // @output true
    d1 = 0.999999999999999999999999999999999E6144d; 
    d2 = 9.999999999999999999999999999999990E6143d;
    io:println(d1 == d2); // @output true
    d1 = 0d; 
    d2 = 1E-6143d;
    io:println(d1 == d2); // @output false
    d1 = 0.1E-6142d;
    d2 = 1E-6143d;
    io:println(d1 == d2); // @output true
}
