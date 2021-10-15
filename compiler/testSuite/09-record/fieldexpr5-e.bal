
import ballerina/io;

public function main() {
    int a = "{ a : 1 }".a; // @error
    io:println(a);
}
