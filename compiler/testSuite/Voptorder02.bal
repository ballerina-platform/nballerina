import ballerina/io;

public function main() {
    float? n1 = 1;
    float? n2 = ();
    io:println(n1 < n2); // @output false
    float? n3 = 5;
    io:println(n1 <= n3); // @output true
    io:println(n1 < n3); // @output true
    io:println(n1 >= n3); // @output false
    io:println(n1 > n3); // @output false

    float n4 = 5;
    io:println(n1 <= n4); // @output true
    io:println(n1 < n4); // @output true
    io:println(n1 >= n4); // @output false
    io:println(n1 > n4); // @output false


    io:println(n4 <= n1); // @output false
    io:println(n4 < n1); // @output false
    io:println(n4 >= n1); // @output true
    io:println(n4 > n1); // @output true
}
