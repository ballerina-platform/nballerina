import ballerina/io;

public function main() {
    map<any> m = { x: true, y: 17, z: "hello"};
    io:println(m.length()); // @output 3
}
