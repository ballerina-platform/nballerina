import ballerina/io;
type F function() returns int;

public function main() {
    F[] fns = [one, two, three];
    io:println(sum(fns)); // @output 6
}

function one() returns int {
    return 1;
}

function two() returns int {
    return 2;
}

function three() returns int {
    return 3;
}


function sum(F[] fns) returns int {
    int tmp = 0;
    foreach int i in 0..< fns.length() {
        F fn = fns[i];
        tmp += fn();
    }
    return tmp;
}
