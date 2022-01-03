import ballerina/io;
public function main() {
    decimal d = 1d; 
    io:println(<int>d); // @output 1

    d = 0d; 
    io:println(<int>d); // @output 0

    d = -1d; 
    io:println(<int>d); // @output -1

    d = 0.5d; 
    io:println(<int>d); // @output 0

    d = 1.5d; 
    io:println(<int>d); // @output 2

    d = 2.5d; 
    io:println(<int>d); // @output 2

    d = -0.5d; 
    io:println(<int>d); // @output 0

    d = -1.5d; 
    io:println(<int>d); // @output -2

    d = -2.5d; 
    io:println(<int>d); // @output -2

    d = 1e2d; 
    io:println(<int>d); // @output 100

    d = 1.5e2d; 
    io:println(<int>d); // @output 150

    d = -1.5e2d; 
    io:println(<int>d); // @output -150

    d = 1.51e2d; 
    io:println(<int>d); // @output 151

    d = 1.513e2d; 
    io:println(<int>d); // @output 151

    d = 1.515e2d; 
    io:println(<int>d); // @output 152

    d = 9223372036854775807d; 
    io:println(<int>d); // @output 9223372036854775807

    d = 9223372036854775807.0d; 
    io:println(<int>d); // @output 9223372036854775807

    d = 9223372036854775807.1d; 
    io:println(<int>d); // @output 9223372036854775807

    d = 9223372036854775807.4d; 
    io:println(<int>d); // @output 9223372036854775807

    d = 92233720368547758074e-1d; 
    io:println(<int>d); // @output 9223372036854775807

    d = 1E-6143d; 
    io:println(<int>d); // @output 0
    
    d = -1E-6143d; 
    io:println(<int>d); // @output 0
}
