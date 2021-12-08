import ballerina/io;

public function main() {
    map<string>[] j = [];
    map<string>[] k = [{ "a": "b" }];
    io:println(j < k); // @error
}
