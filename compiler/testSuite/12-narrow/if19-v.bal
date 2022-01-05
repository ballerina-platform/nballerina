import ballerina/io;
public function main() {
    boolean b = true;
    int|boolean|float x = 84;
    if b {
        if x is float {
            return;
        }
        int|boolean _ = x;
    }
    else {
        return;
    }
    int|boolean ib = x;
    io:println(ib); // @output 84
}
