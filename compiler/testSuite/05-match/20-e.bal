import ballerina/io;

public function main() {
    foo(1);
}

public function foo(int x) {
    match x {
        1 => {
            // Next line is an error because operand types are disjoint
            if x == 2 { // @error
                io:println("unexpected");
            }
        }
    }
}
