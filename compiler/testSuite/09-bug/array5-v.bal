import ballerina/io;

type ISA (int|string)[];
type IBA (int|boolean)[];

public function main() {
    int[] v1 = [42];
    ISA v2 = v1;
    if v2 is IBA {
        v2[0] = 17;
        int n = v2[0];
        io:println(n); // @output 17
    }
}
