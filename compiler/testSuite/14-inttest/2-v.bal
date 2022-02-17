import ballerina/io;

type I 2|3|4;
type I12 1|2;

public function main() {
    io:println(foo(1) is I); // @output true
    io:println(foo(4) is I); // @output false
    io:println(bar(true) is I); // @output true
    io:println(bar(false) is I); // @output false
}

function foo(int y) returns int:Signed32 {
    return <int:Signed32> (y + 1);
}

function bar(boolean z) returns I12 {
    if z {
        return 2;
    }
    else {
        return 1;
    }
}
