import ballerina/io;
type T map<int>;

public function main() {
    T[] a = [];	
    a[1] = {"a": 1 };
    io:println(a); // @output [{},{"a":1}]
    
    T[3] b = [{"b": 0}];
    io:println(b); // @output [{"b":0},{},{}]

    T[][] c = [];
    c[1][1] = {"c": 10 };
    io:println(c); // @output [[],[{},{"c":10}]]

    c[1][0]["tmp"] = 1;
    io:println(c); // @output [[],[{"tmp":1},{"c":10}]]
}

