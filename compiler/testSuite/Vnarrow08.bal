import ballerina/io;

public function main() {
    io:println(zero(0.0)); // @output +
    io:println(zero(-0.0)); // @output -
    io:println(zero(1.0)); // @output !
}

function zero(float v) returns string {
    if v == 0.0 {
        if v === -0.0 {
            return "-";
        }
        else if v === 0.0 {
            return "+";
        }
    }
    return "!";
}

