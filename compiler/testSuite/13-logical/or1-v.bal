import ballerina/io;
public function main() {
    boolean b = true || true;
    io:println(b); // @output true

    io:println(true || false); // @output true
    io:println(false || true); // @output true
    io:println(false || false); // @output false
}
