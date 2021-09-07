import ballerina/io;

public function main() {
    foo(1);
}

function foo(int v) {
    if v == 1 {
        match v {
            1 => {
                io:println("one");
            }
            2 => { // @error
                io:println("two");
            }
        }
    }
}