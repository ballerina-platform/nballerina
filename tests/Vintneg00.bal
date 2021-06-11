import ballerina/io;
public function main() {
    int neg1 = neg(17);
    io:println(neg1); // @output -17
    io:println(neg(0)); // @output 0
    io:println(neg(-1)); // @output 1
    io:println(negneg(1)); // @output 1
}

function neg(int x) returns int {
  return -x;
}

function negneg(int x) returns int {
    return - -x;
}
