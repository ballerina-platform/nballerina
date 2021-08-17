import ballerina/io;

public function main() {
    map<any> m = {};
    int sum = 0;
    int count = 10000000;
    foreach int i in 0 ..< count {
        int x = 0xbeef + i;
        sum = sum + i;
        m[x.toHexString()] = i;
    }
    foreach int i in 0 ..< count {
        int x = 0xbeef + i;
        sum = sum - <int>m[x.toHexString()];
    }
    io:println(sum); // @output 0
}
