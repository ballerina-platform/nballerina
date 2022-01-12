import ballerina/io;
public function main() {
    boolean b = false;
    int|boolean|float x = 8.4;
    if b {
        if x is float {
            return;
        }
        int|boolean _ = x;
    }
    else {
        int|boolean|float _ = x;
    }
    int|boolean ib = x; // @error
    io:println(ib);
}
