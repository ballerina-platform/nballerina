import ballerina/io;
public function main() {
    any[] v = [];
    int val = 1;
    int i = 0;
    // we don't have shift yet
    while i < 62 {
        val = val*2;
        i = i + 1;
    }
    v[val] = 0; // @panic list too long
    io:println(v[val]); 
}
