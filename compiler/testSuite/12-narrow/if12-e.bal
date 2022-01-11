import ballerina/io;
public function main() {
    boolean b = true;
    if b {
        int|float i = 8;
        if i is float {
            return;
        }
        int j = i;
        io:println(j);
    }
    int|float i = 8;
    int j = i; // @error
    io:println(j);
}
