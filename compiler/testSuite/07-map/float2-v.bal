import ballerina/io;

public function main() {
    map<float> m = { };
    m["x"] = 1;
    float? x = m["x"];
    if x != () {
        io:println(x + 0.5); // @output 1.5
    }
}

function ignore(any x) {}
