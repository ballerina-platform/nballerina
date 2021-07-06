import ballerina/io;
public function main() {
    printMersenne(findPrimes());
}

function findPrimes() returns any[] {
    any[] primes = [false, false]; // 0 and 1 are not prime
    primes[1000000] = (); // pre allocate for speed
    int gap = 2; 
    while gap * gap < primes.length() {
        if primes[gap] == () {
            int i = gap * gap;
            while i < primes.length() {
                primes[i] = false;
                i = i + gap;
            }
        }
        gap = gap + 1;
    }
    return primes;
}

function printMersenne(any[] primes) {
    int i = 2;
    while i < primes.length() {
        if primes[i - 1] == () {
            io:println(i - 1); // @output 3
                               // @output 7
                               // @output 31
                               // @output 127
                               // @output 8191
                               // @output 131071
                               // @output 524287
        }
        i = i * 2;
    }
}
