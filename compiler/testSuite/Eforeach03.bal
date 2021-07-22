import ballerina/io;

public function main() {
    loop();
}
public function loop() {
    foreach int i in 1 ..< i { // @error
        io:println(i);
    }
}
