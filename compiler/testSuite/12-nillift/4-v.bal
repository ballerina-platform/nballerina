import ballerina/io;
public function main() {
    int? a = 5;
    int? b = ();
    int? d = a + b + c(); // @output c
    io:println(d); // @output 

    float e = 5.5;
    float? f = ();
    float? h = e + f + g(); //@output g
    io:println(h); // @output 
}

function c() returns int? {
    io:println("c");
    return 5;
}

function g() returns float? {
    io:println("g");
    return 6.5;
}
