import ballerina/io;
public function main() {
    (int|string)[] arr = ["a", 1, "b"];
    io:println(arr[0]); // @output a
    io:println(arr[1]); // @output 1
}
