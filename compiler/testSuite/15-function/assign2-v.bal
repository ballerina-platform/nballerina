import ballerina/io;

type Accum function(int...) returns int;

public function main() {
    Accum f = sum;	
    int a = f(1, 2, 3, 4, 5);
    io:println(a); // @output 15
    Accum g = max;
    io:println(f(g(1, 2, 3, 4, 5))); // @output 5
    io:println(f(g(1, 2, 3, 4, 5), g(1, 2, 3))); // @output 8
}

function sum(int... values) returns int {
    int sum = 0;
    foreach int i in 0 ..< values.length() {
        sum += values[i];
    }
    return sum;
}

function max(int... values) returns int {
    int max = values[0];
    foreach int i in 0 ..< values.length() {
        if (values[i] > max) {
            max = values[i];
        }
    }
    return max;
}
