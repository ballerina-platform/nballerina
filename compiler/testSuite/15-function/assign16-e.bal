
import ballerina/io;
type F1 function(int);
type F2 function(int|float);
type F3 function(int|string);

public function main() {
    F1 a = fooBar;
    a(1.0); // @error
}

function fooBar(int|float|string a) {
    if a is int {
        io:println("int");
    }
    else if a is float {
        io:println("float");
    }
    else {
        io:println("string");
    }
}
