import ballerina/io;
public function main() {
    string? a = "a";
    string? b = "b";
    string? c = a + b;
    io:println(c); // @output ab

    string? d = ();
    io:println(c + d); // @output 
}
