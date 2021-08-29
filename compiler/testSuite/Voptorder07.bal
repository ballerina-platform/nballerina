import ballerina/io;

public function main() {
    string? a = "abc";
    io:println(a <= (<string?>())); // @output false
    io:println(a < (<string?>())); // @output false
    io:println(a >= (<string?>())); // @output false
    io:println(a > (<string?>())); // @output false

    io:println((<string?>()) <= a); // @output false
    io:println((<string?>()) < a); // @output false
    io:println((<string?>()) >= a); // @output false
    io:println((<string?>()) > a); // @output false
}
