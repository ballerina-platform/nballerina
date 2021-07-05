import ballerina/io;

public function main() {
    any[] v = [];
    int i = 0;
    while i < 1000*1000 {
        v[i] = 1;
        i = i + 1;
    }
    v[123000] = 1001;
    i = 0;
    int sum = 0;
    while i < v.length() {
        sum = sum + <int>v[i];
        i = i + 1;
    }
    io:println(sum); // @output 1001000
}
