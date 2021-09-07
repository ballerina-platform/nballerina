import ballerina/io;

public function main() {
    int i = 0;
    while true {
        if !(i < 3) {
            break;
        }
        // @output 0
        // @output 1
        // @output 2
        io:println(i);
        i = i + 1;
    }
}