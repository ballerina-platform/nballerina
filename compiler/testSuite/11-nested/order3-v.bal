import ballerina/io;

public function main() {
    int[] v1 = [];
    if v1 is string[] {
        string[] j = [];
        io:println(v1 < j);
        io:println(v1 > j);
    }
    else {
        io:println("else"); // @output else
    }
}
