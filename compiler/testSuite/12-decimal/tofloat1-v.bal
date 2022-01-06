import ballerina/io;

public function main() {
    io:println(<float>1d); // @output 1.0
    io:println(<float>1.000000000000000000000000000000000d); // @output 1.0
    io:println(<float>1.1d); // @output 1.1
    io:println(<float>9.1d); // @output 9.1
    io:println(<float>9.999999999999999999999999999999999d); // @output 10.0
    io:println(<float>9.99999999999999999999999999999999d); // @output 10.0
    io:println(<float>9.9999999999999999999999999999999d); // @output 10.0
    io:println(<float>10.00000000000000000000000000d); // @output 10.0
    io:println(<float>10.00000000000000000000000001d); // @output 10.0
    io:println(<float>10.00000000000000000000000001d); // @output 10.0
    io:println(<float>99.99999999999999999999999999999999d); // @output 100.0
    io:println(<float>1e2d); // @output 100.0
    io:println(<float>1.9e2d); // @output 190.0
    io:println(<float>9.999999999999999999999999999999999e100d); // @output 1e101
    io:println(<float>9999999999999999999999999999999999e100d); // @output 1e134
    io:println(<float>1e308d); // @output 1e308
    io:println(<float>1.79769313486231571e+308d); // @output 1.7976931348623157e308
    io:println(<float>0d); // @output 0.0
    io:println(<float>1e-322d); // @output 1e-322
    io:println(<float>1e-323d); // @output 1e-323
    io:println(<float>1e-324d); // @output 0.0
    io:println(<float>-1e-324d); // @output -0.0
    io:println(<float>1e-6143d); // @output 0.0
    io:println(<float>-1e-6143d); // @output -0.0
    io:println(<float>1e309d); // @output Infinity
    io:println(<float>1.7976931348623156e+309d); // @output Infinity
    io:println(<float>9.999999999999999999999999999999999E6144d); // @output Infinity
    io:println(<float>-1e309d); // @output -Infinity
    io:println(<float>-2e309d); // @output -Infinity
    io:println(<float>-9.999999999999999999999999999999999E6144d); // @output -Infinity
    io:println(<float>-1.7976931348623156e+309d); // @output -Infinity
}
