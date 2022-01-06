import ballerina/io;
public function main() {
    io:println("start"); // @output start
    while true {
        break;
    }
    io:println("end"); // @output end
}
