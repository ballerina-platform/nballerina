import ballerina/io;
public function main() {
    map<float> m = {};
    m["a"] = 5;
    m["b"] = 6;
    m["c"] = 1;

    io:println(m["a"] + m["b"]); // @output 11.0

    io:println(m["a"] + m["b"] + m["c"]); // @output 12.0

    io:println(m["a"] - m["b"]); // @output -1.0

    io:println(m["a"] + m["b"] - m["c"]); // @output 10.0

    io:println(m["b"] / m["c"]); // @output 6.0

    float? v5 = m["b"] / 3.0;
    io:println(v5); // @output 2.0

    float? v6 = -m["a"];
    io:println(v6); // @output -5.0
    io:println(-m["c"]); // @output -1.0

    float d = 13.0;
    float? v7 = m["a"] + d;
    io:println(v7); // @output 18.0
    io:println(m["a"] + m["b"] + m["c"] + d); // @output 25.0

    float? e = ();
    float? v8 = m["a"] + e;
    io:println(v8); // @output 
    io:println(m["a"] + m["b"] + m["c"] + d + e); // @output 

    io:println(-m["a"]); //@output -5.0
}
