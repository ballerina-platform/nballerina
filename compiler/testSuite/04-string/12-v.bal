// @productions string-literal equality equality-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    string name = "เจมส์";
    io:println(name); // @output เจมส์
    io:println(name.length()); // @output 5
    string name2 = "\u{0e40}\u{E08}\u{0000e21}\u{0e2a}\u{e4c}";
    io:println(name2); // @output เจมส์
    io:println(name == name2); // @output true
    io:println(name != name2); // @output false
    string name3 = "James"; 
    _ = name3;
    io:println(name == "James"); // @output false
    io:println(name != "James"); // @output true
}

