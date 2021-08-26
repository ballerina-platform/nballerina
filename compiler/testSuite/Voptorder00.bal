import ballerina/io;

public function main() {
    int? n1 = 1;
    int? n2 = ();
    io:println(n1 < n2); // @output false

    int? n3 = 5;
    io:println(n1 <= n3); // @output true
    io:println(n1 < n3); // @output true
    io:println(n1 >= n3); // @output false
    io:println(n1 > n3); // @output false

    int n4 = 5;
    io:println(n1 <= n4); // @output true
    io:println(n1 < n4); // @output true
    io:println(n1 >= n4); // @output false
    io:println(n1 > n4); // @output false
}
