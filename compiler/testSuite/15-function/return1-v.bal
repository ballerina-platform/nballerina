import ballerina/io;
type IncFunc function(int) returns int;

public function main() {
    IncFunc inc = incFn("pos");
    io:println(inc(1)); // @output 2
    inc = incFn("neg");
    io:println(inc(1)); // @output 0
}

function incFn("pos"|"neg" kind) returns IncFunc {
    if (kind == "pos") {
        return posInc;
    } else {
        return negInc;
    }
}

function posInc(int a) returns int {
    return a + 1;
}

function negInc(int a) returns int {
    return a - 1;
}
