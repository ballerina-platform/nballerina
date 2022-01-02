import ballerina/io;
public function main() {
    boolean b = false;
    func(b);
}

public function func(boolean b) {
    int|boolean|float x = 8.0;
    if x is int|boolean {
        return;
    }
    if b {
        x = 40;
        return;
    }
    float f = x;
    io:println(f); // @output 8.0
}
