import ballerina/io;
public function main() {
    int[][] a = [];
    a[3] = [5, 6];
    io:println(a); // @output [[],[],[],[5,6]]
}
