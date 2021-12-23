import ballerina/io;

public function main() {
    decimal d = 1d;
    io:println(<float>d); // @output 1.0

    d = 1.000000000000000000000000000000000d;
    io:println(<float>d); // @output 1.0

    d = 1.1d;
    io:println(<float>d); // @output 1.1

    d = 9.1d;
    io:println(<float>d); // @output 9.1

    d = 9.999999999999999999999999999999999d;
    io:println(<float>d); // @output 10.0

    d = 9.99999999999999999999999999999999d;
    io:println(<float>d); // @output 10.0

    d = 9.9999999999999999999999999999999d;
    io:println(<float>d); // @output 10.0

    d = 10.00000000000000000000000000d;
    io:println(<float>d); // @output 10.0

    d = 10.00000000000000000000000001d;
    io:println(<float>d); // @output 10.0

    d = 10.00000000000000000000000001d;
    io:println(<float>d); // @output 10.0

    d = 99.99999999999999999999999999999999d;
    io:println(<float>d); // @output 100.0

    d = 1e2d;
    io:println(<float>d); // @output 100.0

    d = 1.9e2d;
    io:println(<float>d); // @output 190.0

    d = 9.999999999999999999999999999999999e100d;
    io:println(<float>d); // @output 1e101

    d = 9999999999999999999999999999999999e100d;
    io:println(<float>d); // @output 1e134

    d = 1e308d;
    io:println(<float>d); // @output 1e308
    
    d = 1.79769313486231571e+308d;
    io:println(<float>d); // @output 1.7976931348623157e308

    d = 0d;
    io:println(<float>d); // @output 0.0

    d = 1e-322d;
    io:println(<float>d); // @output 1e-322

    d = 1e-323d;
    io:println(<float>d); // @output 1e-323

    d = 1e-324d;
    io:println(<float>d); // @output 0.0

    d = -1e-324d;
    io:println(<float>d); // @output -0.0

    d = 1e-6143d;
    io:println(<float>d); // @output 0.0

    d = -1e-6143d;
    io:println(<float>d); // @output -0.0

    d = 1e309d;
    io:println(<float>d); // @output Infinity

    d = 1.7976931348623156e+309d;
    io:println(<float>d); // @output Infinity

    d = 9.999999999999999999999999999999999E6144d;
    io:println(<float>d); // @output Infinity

    d = -1e309d;
    io:println(<float>d); // @output -Infinity

    d = -2e309d;
    io:println(<float>d); // @output -Infinity

    d = -9.999999999999999999999999999999999E6144d;
    io:println(<float>d); // @output -Infinity
    
    d = -1.7976931348623156e+309d;
    io:println(<float>d); // @output -Infinity
}
