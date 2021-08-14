import ballerina/io;

public function main() {
    io:println(aa(true, 1.375, 0.375)); // @output 1.375
    io:println(aa(false, 1.375, 0.375)); // @output 0.375
    io:println(fa(true, 17.75, 2.75)); // @output 17.75
    io:println(fa(false, 17.75, 2.75)); // @output 2.75
    io:println(ff(true, 1.5, 0.5)); // @output 1.5
    io:println(ff(false, 1.5, 0.5)); // @output 0.5
}

function aa(boolean b, any x, any y) returns any {
    if b {
        return x;
    }
    else {
        return y;
    }
}

function fa(boolean b, float x, float y) returns any {
    if b {
        return x;
    }
    else {
        return y;
    }
}

function ff(boolean b, float x, float y) returns float {
    if b {
        return x;
    }
    else {
        return y;
    }
}