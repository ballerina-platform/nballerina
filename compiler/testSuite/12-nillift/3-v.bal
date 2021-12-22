import ballerina/io;
public function main() {
    int? a = 4;
    int? b = 2;
    int? c = 1;

    int? v1 = a | b;
    io:println(v1); // @output 6
    io:println(a | b | c); // @output 7

    int? d = ();
    int? v2 = a | d;
    io:println(v2); // @output 
    io:println(a | b | c | d); // @output 

    int? v3 = c << b;
    io:println(v3); // @output 4
}
