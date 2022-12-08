
import ballerina/io;

public function main() {
    io:println(<decimal>0f === 0d); // @output tbd
    io:println(<decimal>0f === 0.0d); // @output tbd
    io:println(<decimal>1f === 1d); // @output tbd
    io:println(<decimal>1f === 1.0d); // @output tbd
    io:println(<decimal>9007199254740992f === 9007199254740992d); // @output tbd
}
