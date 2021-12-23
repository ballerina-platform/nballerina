import ballerina/io;
public function main() {
    io:println(<int>1d); // @output 1
    io:println(<int>0d); // @output 0
    io:println(<int>-1d); // @output -1
    io:println(<int>0.5d); // @output 0
    io:println(<int>1.5d); // @output 2
    io:println(<int>2.5d); // @output 2
    io:println(<int>-0.5d); // @output 0
    io:println(<int>-1.5d); // @output -2
    io:println(<int>-2.5d); // @output -2
    io:println(<int>1e2d); // @output 100
    io:println(<int>1.5e2d); // @output 150
    io:println(<int>-1.5e2d); // @output -150
    io:println(<int>1.51e2d); // @output 151
    io:println(<int>1.513e2d); // @output 151
    io:println(<int>1.515e2d); // @output 152
    io:println(<int>9223372036854775807d); // @output 9223372036854775807
    io:println(<int>9223372036854775807.0d); // @output 9223372036854775807
    io:println(<int>9223372036854775807.1d); // @output 9223372036854775807
    io:println(<int>9223372036854775807.4d); // @output 9223372036854775807
    io:println(<int>92233720368547758074e-1d); // @output 9223372036854775807
    io:println(<int>1E-6143d); // @output 0
    io:println(<int>-1E-6143d); // @output 0
}
