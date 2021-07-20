import ballerina/io;

public function main() {
    map<any> m = { list: [1,2,3], mapping: {x: 1, y: 2}};
    io:println(m); // @output {"list":[1,2,3],"mapping":{"x":1,"y":2}}
}
