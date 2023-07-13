import ballerina/io;
type F function(int);

type Foo int|F;

public function main() {
    Foo f = bar;
    f(1); // @error
}

function bar(int x) {
    io:println(x);
}
