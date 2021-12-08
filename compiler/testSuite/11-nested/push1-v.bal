import ballerina/io;

type C record {|
    float x;
    float y;
|};

const N = 10;
public function main() {
    C[] v = [];
    foreach int i in 0 ..< N {
        v.push({x: 1, y: 2});
    }
    foreach int i in 0 ..< N {
        C c = v[i];
        c.x *= <float>i;
        c.y *= <float>i;
    }
    float total1 = 0;
    float total2 = 0;
    foreach int i in 0 ..< N {
        C c = v[i];
        total1 += c.x + c.y;
        total2 += 3.0 * <float>i;
    }
    io:println(total1 == total2);  // @output true
}
