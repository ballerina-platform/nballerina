import ballerina/io;
function convertFloatToDec(float f) {
    io:println(<decimal>f);
}

public function main() {
    convertFloatToDec(0.0); // @output 0
    convertFloatToDec(1.0); // @output 1
    convertFloatToDec(1.0000); // @output 1
    convertFloatToDec(1234567890123456.0); // @output 1234567890123456
    convertFloatToDec(1234567890123456.9); // @output 1234567890123457
    convertFloatToDec(1.7976931348623157e+308); // @output 1.7976931348623157E+308
    convertFloatToDec(0.0000000000000000000000000000000001); // @output 1E-34
}
