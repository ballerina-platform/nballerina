import ballerina/io;

public function main() {
    foo(1);
}

function foo(int v) {
    match v {
        1 => { 
            io:println("one");
        }
        true => { // @error
            io:println("true");

        }
    }
}
