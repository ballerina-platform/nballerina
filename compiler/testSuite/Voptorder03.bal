import ballerina/io;

public function main() {
    float? a = 5;
    io:println(a <= (<float?>())); // @output false
    io:println(a < (<float?>())); // @output false
    io:println(a >= (<float?>())); // @output false
    io:println(a > (<float?>())); // @output false

    io:println((<float?>()) <= a); // @output false
    io:println((<float?>()) < a); // @output false
    io:println((<float?>()) >= a); // @output false
    io:println((<float?>()) > a); // @output false
}
