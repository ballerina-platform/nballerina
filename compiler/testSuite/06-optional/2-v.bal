import ballerina/io;

public function main() {
    print(double(2)); // @output 4
    print(double(())); // @output null
}

function print(int? x) {
    if x == () {
        io:println("null");
    }
    else {
        io:println(x);
    }
}

function double(int? x) returns int? {
    if x == () {
        return ();
    }
    else {
        return x + x;
    }
}
