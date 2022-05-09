import ballerina/time;
import ballerina/test;

// Mask operand of multiplication to 31 bits to avoid overflow.
isolated class Random {
    private final int multiplier = 0x5eece66d; // 0x5DEECE66D from Java's Random class, masked to 31 bit
    private final int addend = 0xB;
    private final int mask = (1 << 31) - 1;
    private int seed;

    function init(int seed) {
        self.seed = self.mask & ((seed & self.mask) * self.multiplier);
    }

    function next() returns int {
        lock {
            self.seed = (self.seed * self.multiplier + self.addend) & self.mask;
            return int:abs(self.seed - self.addend);
        }
    }

    // 0 to range [exclusive]
    function nextRange(int range) returns int {
        if range > self.mask {
            panic error("Range too large");
        }
        if range == 0 || range == 1 {
            return 0;
        }
        return self.next() % range;  
    }

    function randomStringValue(int len) returns string {
        int[] codePoints = from int _ in 0 ... len select string:toCodePointInt("a") + self.nextRange(52);
        // codepoints in [a-zA-Z]
        return checkpanic string:fromCodePointInts(codePoints);
    }
}

@test:Config
function testRandomReproducibility() {
    time:Utc time = time:utcNow();
    Random r1 = new(time[0]);
    Random r2 = new(time[0]);
    foreach int i in 0...10000000 {
        test:assertEquals(r1.nextRange(200), r2.nextRange(200));
    }
}

// This test might take up some time to get to zero.
@test:Config
function testRandPropertyZeroAndNonNeg() {
    time:Utc time = time:utcNow();
    Random r1 = new(time[0]);
    while true {
        int r = r1.next();
        if r == 0 {
            break;
        }
    }
}
