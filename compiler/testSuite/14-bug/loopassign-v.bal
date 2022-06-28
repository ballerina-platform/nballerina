import ballerina/io;
public function main() {
    float|int a = 5;
    if a is int {
        a = 8;
        int c = 12;
        while c > 10 {
            c -= 1;
        }
        io:println(c); // @output 10
    }
}
