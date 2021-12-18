import ballerina/io;
public function main() {
    map<decimal> m1 = { "x1": 2, "x2": 2.3, "x3": 2.3e34d };
    io:println(m1); // @output {"x1":2,"x2":2.3,"x3":2.3E+34}

    map<decimal|int> m2 = { "x1": 1.2 };
    io:println(m2["x1"] is decimal); // @output true

    m2["x2"] = 23e34d;
    io:println(m2); // @output {"x1":1.2,"x2":2.3E+35}
}
