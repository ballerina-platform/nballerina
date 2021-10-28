import ballerina/io;
public function main() {
    int[] x1 = [];    
    (any|error)[] x2 = x1;
    x2.push(255);
    io:println(x1[0]); // @output 255
}


