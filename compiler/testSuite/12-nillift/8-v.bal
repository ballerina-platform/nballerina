import ballerina/io;
public function main() {
    int? a = ();
    int? c = -a;
    io:println(c); // @output 
}
