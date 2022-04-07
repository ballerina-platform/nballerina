import ballerina/io;
public function main() {
    string s1 = "!";
    string t1 = "\u{0E01}";
    string s2 = "xy";
    string t2 = "non-immediate string";
    io:println(s1 is string:Char); // @output true
    io:println(s2 is string:Char); // @output false
    io:println(t1 is string:Char); // @output true
    io:println(t2 is string:Char); // @output false
}
