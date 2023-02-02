import ballerina/io;
type T record {|
    int...;
|};
public function main() {
    map<int>[2] a = [];	
    if a[0] is T {
        io:println("working"); // @output working
    } 
    io:println(a); // @output [{},{}]
}
