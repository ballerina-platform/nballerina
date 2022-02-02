import ballerina/io;
public function main() {
    f(true);
}
public function f(boolean b) {
    if b is false {
        if true && b {
            io:println("unreachable"); // @error
        }
    }
}
