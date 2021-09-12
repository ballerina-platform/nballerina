import ballerina/io;
public function main() {
    any[] v = [];
    v.push(0);
    v.push(true);
    v.push(2);
    v.push(());
    v.push(4);
    io:println(v); // @output [0,true,2,null,4]
}