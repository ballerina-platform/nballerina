import ballerina/io;

public function main() {
    foreach int i in 6 ..< 10 {
        if i == 8 {
            continue;
        }
        io:println(i); // @output 6
                       // @output 7
                       // @output 9
    }
}
