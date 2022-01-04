import ballerina/io;
public function main() {
    float|decimal x = 10;
    if x is float {
        io:println("float"); // @output float
    }
    x = 10d;
    if x is decimal {
        io:println("decimal"); // @output decimal
    }
    if x is decimal|int {
        io:println("decimal"); // @output decimal
    }
}
