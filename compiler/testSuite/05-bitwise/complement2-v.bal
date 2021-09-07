import ballerina/io;
public function main() {
    int i = 0;
    io:println(~i); // @output -1
    io:println(twiddle(1)); // @output -2
    io:println(~twiddle(100)); // @output 100
    io:println((~0x7FFFFFFFFFFFFFFF).toHexString()); // @output -8000000000000000
    io:println(~-1); // @output 0

    io:println(minusTwo(42)); // @output 40
    io:println(minusTwo(-98)); // @output -100

    io:println(addTwo(42)); // @output 44
    io:println(addTwo(-98)); // @output -96
}


public function twiddle(int i) returns int{
    return ~i;
}

public function minusTwo(int i) returns int{
    return ~-~-i;
}
public function addTwo(int i) returns int{
    return -~-~i;
}
