import ballerina/io;
public function main() {
    io:println({a:{x: 5, y: 10}, b: 2} == {a:1, b: 4}); // @error
}
