import ballerina/io;

type ISA (int|string)[];

public function main() {
    int[] iv = [];
    if iv is any[] {
        io:println("any[]"); // @output any[]
    }
    if iv is string[] {
        io:println("string[]");
    }
    if iv is int?[] {
        io:println("int?[]"); // @output int?[]
    }
    if iv is ISA {
        io:println("ISA"); // @output ISA
    }
}
