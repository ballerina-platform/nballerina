import ballerina/io;
public function main() {
    int|boolean|float|string x = "two";
    if x is int|boolean|string {
        x = 2;
        if x is int|boolean {
            int|boolean _ = x;
            if x is boolean {
                return;
            }
            int _ = x;
        }
        int|float|string _ = x;
    }
    io:println(x); // @output 2
}
