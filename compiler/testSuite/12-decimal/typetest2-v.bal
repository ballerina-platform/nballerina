import ballerina/io;
public function main() {
    decimal x = 2.3d;
    if x !is 2.3d {
        io:println("not 2.3");
    }
    else {
        io:println("is 2.3"); // @output is 2.3
    }
}
