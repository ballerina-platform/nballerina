import ballerina/io;

public function main() {
    string s = "hello";
    map<any> m = {};
    m[s] = 42;
    io:println(m[s]); // @output 42
}
