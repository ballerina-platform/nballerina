import ballerina/io;

public function main() {
    int i = 0;
    while i >= 0 {
        // @output 0
        // @output 1
        // @output 2
        // @output 3
        io:println(i);
        i = i + 1;
        if i >= 1 {
            if (i == 4) {
               break;
            }
        }
    }
}
