import ballerina/io;
public function main() {
    map<any> m = {
        "a": 5
    };
    anydata b = m; // @error
    io:println(b);
}
