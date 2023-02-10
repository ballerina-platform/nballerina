import ballerina/io;
public function main() {
    io:println({a: 1, b: 2, a:3}); // @error
}
