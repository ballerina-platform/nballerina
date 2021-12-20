import ballerina/io;

function foo(boolean b) {
    match b {
        true => { return; }
        false => { return; }
    }
    io:println("unreached"); // @error
}

public function main() {
    foo(true);
}