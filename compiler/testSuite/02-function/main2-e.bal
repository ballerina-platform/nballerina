// @productions return-stmt
import ballerina/io;

public function main() returns int { // @error
    io:println(1);
    return 0;
}
