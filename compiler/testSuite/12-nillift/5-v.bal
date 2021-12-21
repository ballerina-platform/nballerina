import ballerina/io;
public function main() {
    int? a = 5;
    int? b = ();
    int? c = a + b;
    io:println(c); // @output 
}
