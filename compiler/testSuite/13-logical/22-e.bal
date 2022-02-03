import ballerina/io;
public function main() {
    int|string x = 1;
    if x is int && x !is int {
        io:print("x is never"); // @error
    }
}
