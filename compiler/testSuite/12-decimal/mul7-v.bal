import ballerina/io;
public function main() {
    decimal d1 = 1d; 
    decimal d2 = 1d;
    io:println(d1 * d2); // @output 1

    d1 = -1d; 
    d2 = 1d; 
    io:println(d1 * d2); // @output -1

    d1 = -1d; 
    d2 = 0d; 
    io:println(d1 * d2); // @output 0

    d1 = 1E-6000d; 
    d2 = 1E-143d; 
    io:println(d1 * d2); // @output 1E-6143
    
    // updated output to match wasm result
    d1 = 1E6000d; 
    d2 = 1E144d; 
    io:println(d1 * d2); // @output 1E+6144

    d1 = 9.999999999999999999999999999999999E6000d; 
    d2 = 1E144d; 
    io:println(d1 * d2); // @output 9.999999999999999999999999999999999E+6144

    d1 = 9.999999999999999999999999999999999E6000d; 
    d2 = -1E144d; 
    io:println(d1 * d2); // @output -9.999999999999999999999999999999999E+6144

    d1 = 9.999999999999999999999999999999999E6000d; 
    d2 = -2E143d; 
    io:println(d1 * d2); // @output -2.000000000000000000000000000000000E+6144

    d1 = -1E-6143d; 
    d2 = 0d; 
    io:println(d1 * d2); // @output 0

    d1 = 1E-6143d; 
    d2 = 0d; 
    io:println(d1 * d2); // @output 0

    d1 = 0d; 
    d2 = 0d; 
    io:println(d1 * d2); // @output 0

    d1 = 9.999999999999999999999999999999999E-6001d; 
    d2 = 2E-143d; 
    io:println(d1 * d2); // @output 2.000000000000000000000000000000000E-6143

    d1 = 1E-6143d; 
    d2 = 1E6143d; 
    io:println(d1 * d2); // @output 1.00000000000000000000000000000000

    d1 = 1E-6001d;
    d2 = 1E-143d; 
    io:println(d1 * d2); // @output 0
    
    d1 = 9.999999999999999999999999999999999E-6001d; 
    d2 = 1E-143d;
    io:println(d1 * d2); // @output 0

    d1 = 1E-6143d; 
    d2 = 1E-1d;
    io:println(d1 * d2); // @output 0

    d1 = 9.999999999999999999999999999999999E-6001d; 
    d2 = 0.2E-143d;
    io:println(d1 * d2); // @output 0

    d1 = 1E-6143d; 
    d2 = 1E-6143d;
    io:println(d1 * d2); // @output 0
}
