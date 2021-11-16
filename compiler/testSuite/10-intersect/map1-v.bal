import ballerina/io;

public function main() {
    map<int> m1 = {x: 17};
    map<int|float>&map<int|string> m2 = m1;
    m1 = m2;
    int? n = m2["x"];
    io:println(n); // @output 17
}

