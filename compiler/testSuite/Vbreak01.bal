import ballerina/io;

public function main() {
    int i = 0;
    while i >= 0 {
        // @output 0
        // @output 1
        io:println(i);
        i = i + 1;
        if i == 2 {
            break;
        }
    }
}
