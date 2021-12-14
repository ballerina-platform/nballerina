import ballerina/io;

type T T[];

public function main() {
    T t1 = [];
    T t2 = [];
    io:println(t1 < t2); // @error
}
