import ballerina/io;

public function main() {
    boolean[]|int[] bi = [];
    int[] i = [];
    io:println(bi < i); // @error
}
