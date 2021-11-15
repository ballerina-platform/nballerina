import ballerina/io;
function convertDecToInt(decimal d) {
    io:println(<int>d);
}

public function main() {
    convertDecToInt(0.5d); // @output 0
    convertDecToInt(1.5d); // @output 2
    convertDecToInt(2.5d); // @output 2
    convertDecToInt(-0.5d); // @output 0
    convertDecToInt(-1.5d); // @output -2
    convertDecToInt(-2.5d); // @output -2
    convertDecToInt(1e2d); // @output 100
    convertDecToInt(1.513e2d); // @output 151
    convertDecToInt(1.515e2d); // @output 152
    convertDecToInt(9223372036854775807.4d); // @output 9223372036854775807
    convertDecToInt(-9223372036854775808.5d); // @output -9223372036854775808
    convertDecToInt(1E-6143d); // @output 0
    convertDecToInt(-1E-6143d); // @output 0
}
