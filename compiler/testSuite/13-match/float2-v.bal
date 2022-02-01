import ballerina/io;

public function main() {
    float x = -0.5f;
    match x {
        -0.5f => {
            io:println(x); // @output -1.5
        }
    }
}
