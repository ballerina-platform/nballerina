import ballerina/io;

public function main() {
    int[] ix = [];
    boolean[]|int[] bi = ix;
    int[] i = [];
    io:println(bi < i); // @error
}
