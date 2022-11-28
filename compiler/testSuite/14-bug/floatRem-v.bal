import ballerina/io;

public function main() {
    float a = getFloat(5, 100000);
    float b = getFloat(89, 20000);
    io:println(a % b); // @output 124449.35999998456
    io:println(b % a); // @output 124471.21999999792
}

// We need to make sure llvm can't optimize this function to a constant value, if that happens llvm could convert
// the `%` operation to a constant as well.
function getFloat(int seed, int iterations) returns float {
    float[] buffer = [1.0, 5.5, 3.3, 7.5, 9.5, 10.54];
    float currentVal = 0;
    int bufferSize = buffer.length();
    int currentIndex = (seed + seed) % bufferSize;
    foreach int i in 0 ..< iterations {
        currentVal += buffer[currentIndex];
        currentIndex = (currentIndex + seed) % bufferSize;
    }
    return currentVal;
}
