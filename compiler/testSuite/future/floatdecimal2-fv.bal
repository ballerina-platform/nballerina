
import ballerina/io;

public function main() {
    io:println(fromFloat(0) === 0d); // @output tbd
    io:println(fromFloat(0) === 0.0d); // @output tbd
    io:println(fromFloat(1) === 1d); // @output tbd
    io:println(fromFloat(1) === 1.0d); // @output tbd
    io:println(fromFloat(9007199254740992) === 9007199254740992d); // @output tbd
}

function fromFloat(float f) returns decimal {
    return <decimal>f;
}
