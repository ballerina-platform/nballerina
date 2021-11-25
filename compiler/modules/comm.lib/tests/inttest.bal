import ballerina/test;
@test:Config{}
function testBitTwiddling() {
    test:assertEquals(numberOfTrailingZeros(0x10), 4);
    test:assertEquals(numberOfTrailingZeros(0x100), 8);
    test:assertEquals(numberOfTrailingZeros(0x1), 0);
    test:assertEquals(numberOfTrailingZeros(0x0), 64);
    test:assertEquals(bitCount(0x10000), 1);
    test:assertEquals(bitCount(0), 0);
    test:assertEquals(bitCount(1), 1);
    test:assertEquals(bitCount(0x10010010), 3);
}
