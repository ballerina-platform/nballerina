import ballerina/jballerina.java;
import ballerina/test;

class Random {
    private handle jrandom;

    function init(int seed) {
        self.jrandom = createJavaRandomObj(seed);
    }

    function next() returns int {
        return self._next(self.jrandom).abs();
    }

    // 0 to range [exclusive]
    function nextRange(int range) returns int {
        if range > 2147483647 {
            panic error("Range too large");
        }
        if range == 0 || range == 1 {
            return 0;
        }
        return self._next(self.jrandom).abs() % range;  
    }

    function randomStringValue(int len) returns string {
        int[] codePoints = from int _ in 0 ... len select string:toCodePointInt("a") + self.nextRange(52);
        // codepoints in [a-zA-Z]
        return checkpanic string:fromCodePointInts(codePoints);
    }

    function _next(handle receiver) returns int = @java:Method {
        'class: "java.util.Random",
        name: "nextLong"
    } external;   
}

function createJavaRandomObj(int seed) returns handle = @java:Constructor {
    'class: "java.util.Random",
    paramTypes: ["long"]
} external;


@test:Config
function testRandom() {
    Random r1 = new(100);
    Random r2 = new(100);
    foreach int i in 0...10000 {
        test:assertEquals(r1.nextRange(200), r2.nextRange(200));
    }
}
