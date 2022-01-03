import ballerina/io;
public function main() {
    io:println(1d === 1d); // @output true
    io:println(0d === 0d); // @output true
    io:println(-9.999999999999999999999999999999999E6144d === -9.999999999999999999999999999999999E6144d); // @output true
    io:println(0.000001d === 0.000001d); // @output true
    io:println(1.0d === 1.00d); // @output false
    io:println(0.0d === 0d); // @output false
    io:println(0.00000100d === 0.000001d); // @output false
    io:println(1E-6142d === 10E-6143d); // @output false
    io:println(100E3d !== 10E4d); // @output true
}
