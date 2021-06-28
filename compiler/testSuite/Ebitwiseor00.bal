import ballerina/io;
public function main() {
    int i = 5;
    boolean j = true;
    io:println(i | j); // @error
}
