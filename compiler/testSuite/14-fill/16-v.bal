import ballerina/io;
type M map<int|string>;

public function main() {
    M[] a = [];
    a[2] = { "int": 1, "string": "str" };
    io:println(a); // @output [{},{},{"int":1,"string":"str"}]
}
