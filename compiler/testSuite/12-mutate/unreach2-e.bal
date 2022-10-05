import ballerina/io;

public function main() {
    (int|string)[] arr = ["a", 1, "b"];
    if arr is int[] {
        io:println("all ints");
    }
    else if arr is int[] {
        io:println("unreachable"); // @error
    }
}
