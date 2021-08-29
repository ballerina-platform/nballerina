import ballerina/io;

public function main() {
    string? n1 = "abc";
    string? n2 = ();
    io:println(n1 < n2); // @output false

    string? n3 = "xy";
    io:println(n1 <= n3); // @output true
    io:println(n1 < n3); // @output true
    io:println(n1 >= n3); // @output false
    io:println(n1 > n3); // @output false

    string n4 = "zyx";
    io:println(n1 <= n4); // @output true
    io:println(n1 < n4); // @output true
    io:println(n1 >= n4); // @output false
    io:println(n1 > n4); // @output false
}
