import ballerina/io;

public function main() {
    boolean? a = false;
    io:println(a <= (<boolean?>())); // @output false
    io:println(a < (<boolean?>())); // @output false
    io:println(a >= (<boolean?>())); // @output false
    io:println(a > (<boolean?>())); // @output false

    io:println((<boolean?>()) <= a); // @output false
    io:println((<boolean?>()) < a); // @output false
    io:println((<boolean?>()) >= a); // @output false
    io:println((<boolean?>()) > a); // @output false
}
