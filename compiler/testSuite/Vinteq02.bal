import ballerina/io;

public function main() {
    if 17 == 17 {
        io:println(17); // @output 17
    }
    else {
        io:println(0);
    }
    if 21 != 21 {
        io:println(0); 
    }
    else {
        io:println(21); // @output 21
    }
    int x = 42;
    if x == 42 {
        io:println(42); // @output 42
    }
    else {
        io:println(0);
    }
    if 42 != x {
        io:println(0);
    }
    else {
        io:println(42); // @output 42
    }
}
