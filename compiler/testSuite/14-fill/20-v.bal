import ballerina/io;
public function main() {
    map<int>[2] a = [];	
    if a[0] is map<int> {
        io:println("working"); // @output working
    } 
    io:println(a); // @output [{},{}]
}
