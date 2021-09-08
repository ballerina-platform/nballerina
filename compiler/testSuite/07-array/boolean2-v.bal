import ballerina/io;

public function main() {
    boolean[] x = [];
    x[1] = true;
    x[3] = true;
    io:println(x); // @output [false,true,false,true]
}

