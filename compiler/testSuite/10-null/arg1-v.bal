import ballerina/io;

type Nothing null;
type Everything any|error;

public function main() {
    Nothing n = ();
    Everything e = explode(n);
    io:println(e); // @output 42
}

function explode(Nothing n) returns Everything {
    return 42;
}
