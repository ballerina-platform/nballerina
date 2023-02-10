import ballerina/io;
public function main() {
    io:println({a: 1, b: 2}.a);	 // @output 1
    io:println({a: 1, b: 2}.b + 1); // @output 3
}
