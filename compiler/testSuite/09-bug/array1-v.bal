import ballerina/io;

type ISA (int|string)[];

public function main() {
    int[] v1 = [1];
    ISA v2 = v1;
    if v2 is int[] {
        int i = v2[0];
        io:println(i); // @output 1
    }
}
