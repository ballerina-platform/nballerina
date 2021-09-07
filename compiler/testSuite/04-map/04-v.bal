import ballerina/io;

public function main() {
    map<any> m = { foo: true, bar: ()};
    io:println(m); // @output {"foo":true,"bar":null}
}