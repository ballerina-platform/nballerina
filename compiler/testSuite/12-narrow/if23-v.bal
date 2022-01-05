import ballerina/io;

public function main() {
    int|boolean x = 8;
    while true {
        if x is boolean {
            io:println("b");
            return;
        }
        int _ = x;
        io:println("i"); // @output i
        return;
    }
}
