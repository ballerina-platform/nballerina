import ballerina/io;

public function main() {
    float x = -1.5;
    match x {
        -1.5 => {
            io:println(x); // @output -1.5
        }
    }
}
