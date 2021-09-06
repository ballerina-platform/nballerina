import ballerina/io;

public function main() {
    map<any> x = {value: 42};
    any y = x;
    io:println((<map<any>>y)["value"]); // @output 42
}
