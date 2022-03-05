import ballerina/io;

public function main() {
    float x = 1.0;
    match x {
        1 => {
            io:println(x); // @output 1.0
        }
    }
}
