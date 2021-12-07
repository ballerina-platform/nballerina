import ballerina/io;

type T T[];

public function main() {
    T t1 = [];
    T t2 = [];
    io:println(t2 < t2); // @error
}
