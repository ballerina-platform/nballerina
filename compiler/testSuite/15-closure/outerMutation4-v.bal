import ballerina/io;
type F function(float) returns float;

function runner(F f, float val) returns float {
    return f(val);
}

public function main() {
    float v1 = 10.0;
    float v2 = 20.0;
    float res = v1 + runner(function(float a) returns float {
        v1 += a;
        return 5;
    }, 2) + v1 + v2 + runner(function(float b) returns float {
        v2 += v1;
        return 0;
    }, 2);
    io:println(res); // @output 47.0
    io:println(v1); // @output 12.0
    io:println(v2); // @output 32.0
}
