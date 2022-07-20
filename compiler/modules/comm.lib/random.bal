// Mask operand of multiplication to 31 bits to avoid overflow.
public isolated class Random {
    private final int multiplier = 0x5eece66d; // 0x5DEECE66D from Java's Random class, masked to 31 bit
    private final int addend = 0xB;
    private final int mask = (1 << 31) - 1;
    private int seed;

    public function init(int seed) {
        self.seed = self.mask & ((seed & self.mask) * self.multiplier);
    }

    public function next() returns int {
        lock {
            self.seed = (self.seed * self.multiplier + self.addend) & self.mask;
            return int:abs(self.seed - self.addend);
        }
    }

    // 0 to range [exclusive]
    public function nextRange(int range) returns int {
        if range > self.mask {
            panic error("Range too large");
        }
        if range == 0 || range == 1 {
            return 0;
        }
        return self.next() % range;  
    }

    public function randomStringValue(int len) returns string {
        int[] codePoints = [];
        foreach int _ in 0 ..< len {
            int r = self.nextRange(52);
            boolean upper = r < 26;
            int c = upper ? (65 + r) : (97 + r - 26); // ('A' + c) or ('a' + c)
            codePoints.push(c);
        }
        // codepoints in [a-zA-Z]
        return checkpanic string:fromCodePointInts(codePoints);
    }
}
