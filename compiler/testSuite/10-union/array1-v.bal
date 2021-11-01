import ballerina/io;
public function main() {
    int[] v1 = [1,2,3];
    any[] v2 = v1;
    if v2 is int[]|string[] {
        io:println("yes"); // @output yes
    }
}
