import ballerina/io;

public function main() {
    loop(10);
}
public function loop(int to) {
    int i = 8;
    foreach int i in 1 ..< to { // @error
        io:println(i);
    }
}
