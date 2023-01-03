import ballerina/io;
public function main() {
    int:Unsigned8 a = 255;
    int:Unsigned8 b = 63;
    int:Unsigned8 c = 64;
    int:Unsigned8 d = 122;

    io:println(a << b); // @output -9223372036854775808

    io:println(a << c); // @output 255

    io:println(a << d); // @output -288230376151711744

    io:println(b << b); // @output -9223372036854775808

    io:println(b << c); // @output 63

    io:println(a << a); // @output -9223372036854775808
}
