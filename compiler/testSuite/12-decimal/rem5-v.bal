import ballerina/io;
public function main() {
    decimal d1 = 1d;
    decimal d2 = 1d;
    io:println(d1 % d2); // @output 0

    d1 = 1d;
    d2 = 2d; 
    io:println(d1 % d2); // @output 1

    d1 = -1d;
    d2 = 2d; 
    io:println(d1 % d2); // @output -1

    d1 = -10d;
    d2 = 3d; 
    io:println(d1 % d2); // @output -1

    d1 = 10d;
    d2 = -3d; 
    io:println(d1 % d2); // @output 1

    d1 = -16.3d;
    d2 = 4.1d; 
    io:println(d1 % d2); // @output -4.0

    d1 = 17.8d;
    d2 = -4.1d; 
    io:println(d1 % d2); // @output 1.4

    d1 = -17.8d;
    d2 = -4.1d; 
    io:println(d1 % d2); // @output -1.4

    d1 = 27d;
    d2 = 4d; 
    io:println(d1 % d2); // @output 3

    d1 = 28d;
    d2 = 5d; 
    io:println(d1 % d2); // @output 3

    d1 = 10d;
    d2 = 3d; 
    io:println(d1 % d2); // @output 1

    d1 = 1E-6143d;
    d2 = 1E-6143d; 
    io:println(d1 % d2); // @output 0

    d1 = 1E-6143d;
    d2 = 1E-6142d; 
    io:println(d1 % d2); // @output 1E-6143

    d1 = 1E-6143d;
    d2 = -1E-6142d; 
    io:println(d1 % d2); // @output 1E-6143

    d1 = 1E-3d;
    d2 = 1E-2d; 
    io:println(d1 % d2); // @output 0.001

    d1 = 9.05d;
    d2 = 0.1d; 
    io:println(d1 % d2); // @output 0.05

    d1 = 9.0E31d;
    d2 = 1E-2d; 
    io:println(d1 % d2); // @output 0
    
    d1 = 9.00005d;
    d2 = 0.0001d; 
    io:println(d1 % d2); // @output 0.00005
}
