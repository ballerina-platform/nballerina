import ballerina/io;

public function main() {
    string s1 = "\u{80}";
    io:println(s1 == "\u{81}"); //@output false
}