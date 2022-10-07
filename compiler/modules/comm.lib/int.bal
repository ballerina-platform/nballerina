// Count number of bits set in bits.
// This is the Brian Kernighan algorithm.
// There's usually a hardware instruction for this
// typically called PopCpount
// This is __builtin_popcount in GCC and clang
// This won't work if bits is < 0.
public function bitCount(int bits) returns int {
    int n = 0;
    int v = bits;
    while v != 0 {
        v &= v - 1;
        n += 1;
    }
    return n;
}

// This should be a function in lang.int
// Modern CPUs have a hardware instruction for this
// This is __builtin_ctz in GCC and clang
public isolated function numberOfTrailingZeros(int bits) returns int {
    if bits == 0 {
        return 64;
    }
    int flag = 1;
    int n = 0;
    while (bits & flag) == 0 {
        n += 1;
        flag <<= 1;
    }
    return n;
}


