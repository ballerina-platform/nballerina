import ballerina/io;

public function main() {
    int? a = 5;
    io:println(a <= (<int?>())); // @output false
    io:println(a < (<int?>())); // @output false
    io:println(a >= (<int?>())); // @output false
    io:println(a > (<int?>())); // @output false

    io:println((<int?>()) <= a); // @output false
    io:println((<int?>()) < a); // @output false
    io:println((<int?>()) >= a); // @output false
    io:println((<int?>()) > a); // @output false
}
