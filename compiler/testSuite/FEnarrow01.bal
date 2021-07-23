import ballerina/io;

public function main() {
    string v = "x";
    if v == "x" {
        if v != "x" {
            io:println("unreachable"); // @error
        }
        else {
            io:println("x");
        }
    }
}
