import ballerina/io;

function btoi(boolean b) returns int {
    match b {
        true => { return 1; }
        false => { return 0; }
    }
}//workaround #784

public function main() {
    io:println(btoi(true)); // @output 1
    io:println(btoi(false)); // @output 0
}