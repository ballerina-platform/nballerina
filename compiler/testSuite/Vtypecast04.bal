import ballerina/io;

public function main() {
    any x = {value: 42};
    io:println((<map<any>>x)["value"]); // @output 42
}
