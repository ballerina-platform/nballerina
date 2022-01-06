import ballerina/io;
public function main() {
    decimal d1 = 0.0d;
    decimal d2 = 0d;
    // JBUG #34472, output should be false
    io:println(d1 === d2); // @output false 
}
