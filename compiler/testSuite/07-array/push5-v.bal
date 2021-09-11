import ballerina/io;
public function main() {
    int?[] v = [];
    v.push(17);
    v.push(());
    v.push(21);
    io:println(v); // @output [17,null,21]
}
