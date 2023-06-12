import ballerina/io;
type F function("a"|"b") returns boolean;
type G function(F, "a"|"b"...) returns boolean[];
type G1 function(F, "a"|"b", "a"|"b"...) returns boolean[];

public function main() {
    F f = foo;
    io:println(f("a")); // @output true
    io:println(f("b")); // @output false
    G g = bar;
    io:println(g(f, "a", "b")); // @output [true,false]
    G1 g1 = bar;
    io:println(g1(f, "a", "b")); // @output [true,false]
    io:println(g1(f, "a", "b", "b")); // @output [true,false,false]
    io:println(g1(f, "a")); // @output [true]
}

function foo("a"|"b"|"c" value) returns boolean {
    if value == "a" {
        return true;
    } else if value == "b" {
        return false;
    } else {
        io:println("unexpected");
        return true;
    }
}

function bar(F func, "a"|"b"|"c"... vals) returns boolean[] {
    boolean[] result = [];
    foreach int i in 0 ..< vals.length() {
        "a"|"b"|"c" val = vals[i];
        if val is "c" {
            continue;
        }
        result.push(func(val));
    }
    return result;
}
