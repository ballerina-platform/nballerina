import ballerina/io;
public function main() {
    io:println("start");
    while true {
        return;
    }
    io:println("end"); // @error
}
