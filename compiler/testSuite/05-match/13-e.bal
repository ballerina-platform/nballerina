import ballerina/io;

public function main() {
    io:println(foo(1));
}

function foo(any p) returns int {
    any v = p;
    if v is int {
        match v {
            1 => {
                v = 1;
            }
            2 => { 
                return 17;
            }
        }
        return v; // @error
    }
    return 0;
}