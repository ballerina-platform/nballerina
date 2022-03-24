import ballerina/io;
public function main() {
    [int, string, boolean] v = [1, "sr", true];
    io:println(v[3]); // @error
}
