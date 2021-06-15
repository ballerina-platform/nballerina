import ballerina/io;

public function main() {
    foo(1, 1); // @output 1
    foo(2, 1); // @output 1
    foo(5, 4); // @output 4
    foo(12, 10); // @output 10
}

function foo(int x, int y) {
    if (x > y) {
        foo(x - 1, y);
    } else if (x < y) {
        foo(x, y - 1);
    } else {
        io:println(x);
    }
}
