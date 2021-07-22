// The hashing implementation is encapsulated in this field
// The sequence of calls is
// 1 call to hashInit
// 0 to n calls to hashUpdate
// 0 or 1 calls to hashUpdatePartial
// 1 call to hashFinish32
// This interface is designed to work for siphash

#include <stdint.h>

typedef uint64_t HashState;

// This implementation is based on aHash (as used in Rust's hash tables),
// specifically the fallback implementation
typedef uint64_t HashKey[2];

extern HashKey _bal_hash_key;

// These are fractional digits of PI in hex
// main can set these to properly random data for better DoS protection
#define HASH_DEFINE_KEY HashKey _bal_hash_key = { 0x243F6A8885A308D3, 0x13198A2E03707344 }

static inline void hashInit(HashState *hp) {
    *hp = _bal_hash_key[0];
}

// This is only for internal use by the hash implementation
// On x86_64 this gets optimized into a multiply and an xor
static inline uint64_t hashFoldedMultiply(uint64_t x, uint64_t y) {
    unsigned __int128 xy = (unsigned __int128)x * (unsigned __int128)y;
    return (uint64_t)xy ^ (uint64_t)(xy >> 64);
}

#define KNUTH_MULTIPLIER 6364136223846793005

// this is used when all 8 bytes of data have information
static inline void hashUpdate(HashState *hp, uint64_t data) {
    //printf("hash update %lx\n", data);
    // This comes from aHash (used in Rust)
    *hp = hashFoldedMultiply(data ^ *hp, KNUTH_MULTIPLIER);
}

// only the bottom nBytes (1 <= nBytes <= 7) have information
static inline void hashUpdatePartial(HashState *hp, uint64_t data, int nBytes) {
    //printf("partial %d ", nBytes);
    // XXX don't yet understand what aHash does here
    hashUpdate(hp, data);
}

static inline uint64_t hashRotateLeft(uint64_t bits, int rotate) {
    return (bits << rotate) | (bits >> (64 - rotate));
}

static inline uint64_t hashFinish(HashState *hp) {
    int rotate = *hp & 63;
    return hashRotateLeft(hashFoldedMultiply(*hp, _bal_hash_key[1]), rotate);
}
