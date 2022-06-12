import ballerina/time;
import ballerina/test;

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
