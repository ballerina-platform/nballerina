import ballerina/io;

const Inf = 1.0/0.0;
const NaN = 0.0/0.0;
const NegInf = -1.0/0.0;
type Special 0f|NaN|Inf|NegInf;

public function main() {
    any x = 1.0;
    io:println(x is Special); // @output false
    x = Inf;
    io:println(x is Special); // @output true
    x = NegInf;
    io:println(x is Special); // @output true
    x = NaN;
    io:println(x is Special); // @output true
    x = 0.0f;
    io:println(x is Special); // @output true
    x = -0.0f;
    io:println(x is Special); // @output true
    x = 1;
    io:println(x is Special); // @output false
}