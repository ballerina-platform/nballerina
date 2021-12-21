import ballerina/io;
public function main() {
    int? a = ();
    int b = 6;
    int? c = a << b;
    io:println(c); // @output 
}
