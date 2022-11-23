import ballerina/io;

public function main() {
    float a = getRandomFloat(5, 100000);
    float b = getRandomFloat(89, 20000);
    io:println(a % b);
    io:println(b % a);
}

function getRandomFloat(int seed, int iterations) returns float {
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
