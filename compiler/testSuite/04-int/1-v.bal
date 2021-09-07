import ballerina/io;

public function main() {
    int two48 = 65536*65536*65536;
    testAround(two48);
    // @output true
    // @output true
    // @output true
    // @output true
    int two55 = two48 * 128;
    testAround(two55);
    // @output true
    // @output true
    // @output true
    // @output true
    int two56 = two55 * 2;
    testAround(two56);
    // @output true
    // @output true
    // @output true
    // @output true
    int two62 = two56 * 64;
    testAround(two62);
    // @output true
    // @output true
    // @output true
    // @output true
}

function testAround(int pow2) {
    roundTrip(pow2 - 1);
    roundTrip(-pow2);
    roundTrip(pow2);
    roundTrip(-pow2 -1);
}

function roundTrip(int n) {
    io:println(n == <int>toAny(n));
}

function toAny(int n) returns any {
    return n;
}