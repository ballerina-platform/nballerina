import ballerina/io;

public function main() {
    map<int> m = { x: 5, y: 7 };
    int? x = m["x"];
    int? y = m["y"];
    if x != () {
        if y != () {
            io:println(x + y); // @output 12
        }
    }
}
