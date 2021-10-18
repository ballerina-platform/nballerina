import ballerina/io;

type IntOrStringArr (int|string)[];
public function main() {
    (int|string)[] arr = ["a", 1, "b"];
    if arr is (int|string|boolean)[] {
        return;
    }
    io:println("unreachable"); // @error
}
