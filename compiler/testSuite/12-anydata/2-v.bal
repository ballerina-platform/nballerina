import ballerina/io;
public function main() {
    () a = ();
    anydata val = a;
    io:println(val); // @output 
    int b = 5;
    val = b;
    io:println(val); // @output 5
    float c = 7.5;
    val = c;
    io:println(val); // @output 7.5
    string d = "test";
    val = d;
    io:println(val); // @output test
}
