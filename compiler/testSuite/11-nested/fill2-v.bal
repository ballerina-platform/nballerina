import ballerina/io;

public function main() {
    map<int[]>[] v = [];
    v[1] = {};
    map<int[]> v0 = v[0];
    v0["x"] = [17,73];
    int[]? iv = v0["x"];
    if iv != () {
        int n = iv[1];
        io:println(n); // @output 73
    }
}

