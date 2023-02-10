import ballerina/io;
public function main() {
    io:println({a: 1, b: 2}.c);	 // @error
}
