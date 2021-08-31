import ballerina/io;

public function main() {
    boolean? n1 = false;
    boolean? n2 = ();
    io:println(n1 < n2); // @output false
    io:println(n1 <= n2); // @output false
    io:println(n1 > n2); // @output false
    io:println(n1 >= n2); // @output false

    io:println(n2 < n1); // @output false
    io:println(n2 <= n1); // @output false
    io:println(n2 > n1); // @output false
    io:println(n2 >= n1); // @output false

    boolean? n3 = true;
    io:println(n1 <= n3); // @output true
    io:println(n1 < n3); // @output true
    io:println(n1 >= n3); // @output false
    io:println(n1 > n3); // @output false

    boolean n4 = true;
    io:println(n1 <= n4); // @output true
    io:println(n1 < n4); // @output true
    io:println(n1 >= n4); // @output false
    io:println(n1 > n4); // @output false

    io:println(n4 <= n1); // @output false
    io:println(n4 < n1); // @output false
    io:println(n4 >= n1); // @output true
    io:println(n4 > n1); // @output true

    boolean? n5 = ();
    io:println(n5 < n2); // @output false
    io:println(n5 <= n2); // @output true
    io:println(n5 > n2); // @output false
    io:println(n5 >= n2); // @output true
}
