import ballerina/io;
public function main() {
    map<int> m = {};
    m["a"] = 5;
    m["b"] = 6;
    m["c"] = 1;

    io:println(m["a"] + m["b"]); // @output 11

    io:println(m["a"] + m["b"] + m["c"]); // @output 12

    io:println(m["a"] - m["b"]); // @output -1

    io:println(m["a"] + m["b"] - m["c"]); // @output 10

    io:println(m["b"] / m["c"]); // @output 6

    int? v5 = m["b"] / 3;
    io:println(v5); // @output 2

    int? v6 = -m["a"];
    io:println(v6); // @output -5
    io:println(-m["c"]); // @output -1

    int d = 13;
    int? v7 = m["a"] + d;
    io:println(v7); // @output 18
    io:println(m["a"] + m["b"] + m["c"] + d); // @output 25

    int? e = ();
    int? v8 = m["a"] + e;
    io:println(v8); // @output 
    io:println(m["a"] + m["b"] + m["c"] + d + e); // @output 

    io:println(-m["a"]); //@output -5
}
