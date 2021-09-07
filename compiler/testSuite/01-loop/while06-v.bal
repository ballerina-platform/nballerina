import ballerina/io;

public function main() {
    int i = 0;
    while i < 5 {
        int j = 0;
        while j < i {
            io:println(j);
            j = j + 1;
        }
        i = i + 1;
    }
    // @output 0
    // @output 0
    // @output 1
    // @output 0
    // @output 1
    // @output 2
    // @output 0
    // @output 1
    // @output 2
    // @output 3
}
