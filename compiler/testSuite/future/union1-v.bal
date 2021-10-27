import ballerina/io;

type String string;
type Int int;

public function main() {
    Int|String x = 17;
    io:println(x);
}
