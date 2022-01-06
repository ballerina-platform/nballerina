import ballerina/io;
public function main() {
    decimal? d1 = ();
    if d1 is () {
        io:println("nil"); // @output nil
    }
    d1 = 2.3d;
    io:println(d1); // @output 2.3
}
