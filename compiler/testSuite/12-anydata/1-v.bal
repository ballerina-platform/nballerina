import ballerina/io;
public function main() {
    anydata val = ();
    io:println(val); // @output 
    val = 5;
    io:println(val); // @output 5
    val = 7.5;
    io:println(val); // @output 7.5
    val = "test";
    io:println(val); // @output test
}
