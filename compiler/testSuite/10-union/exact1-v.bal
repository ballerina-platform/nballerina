import ballerina/io;

public function main() {
    int[]|int v1 = 255;
    any[]|int v2 = v1;
    int v3 = <int>v2;
    io:println(v3); // @output 255
}
