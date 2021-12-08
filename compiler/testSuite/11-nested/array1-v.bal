import ballerina/io;

public function main() {
    float[][] vv = [
        [1, 2],
        [3, 4, 5, 0],
        [0.5],
        []
    ];
    float total = 0;
    foreach int i in 0 ..< vv.length() {
        float[] v = vv[i];
        foreach int j in 0 ..< v.length() {
            total += v[j];
        }
    }
    io:println(total); // @output 15.5
}

