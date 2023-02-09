import ballerina/io;
type T [int, boolean, "x"];
public function main() {
    T[] a = [];	
    a[1] = [1, true, "x"];
    io:println(a); // @output [[0,false,"x"],[1,true,"x"]]
}
