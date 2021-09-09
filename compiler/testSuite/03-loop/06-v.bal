import ballerina/io;

function lower() returns int {
    int u = 2;
    io:println(u); // @output 2
    return u;
}

function upper() returns int {
    int u = 5;
    io:println(u); // @output 5
    return u;
}

public function main() {
    foreach int i in lower() ..< upper() {
        io:println(i); // @output 2
                       // @output 3
                       // @output 4
    }
}

