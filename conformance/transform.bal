import ballerina/io;

public function main(string[] tests) {
    foreach string filename in tests {
        io:println(filename);
    }
}
