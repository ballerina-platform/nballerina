import ballerina/io;
public function main() {
    f(true); // @output b
    f(false); // @output r
}
function f(boolean b) {
    while true {
        if b {
            io:println("b");
            break;
        }
        else {
            io:println("r");
            return;
        }
    }
}
