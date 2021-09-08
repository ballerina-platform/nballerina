import ballerina/io;
public function main() {
    map<int> mi = {};
    map<any> ma = mi;
    ma["x"] = true; // @panic bad mapping store
    int? x = mi["x"];
    if x != () {
        io:println(x + 1);
    }
}