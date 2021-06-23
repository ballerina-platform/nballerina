import ballerina/io;

public function main() {
    io:println(<any>1); // @output 1
    io:println(<any>()); // @output 
    io:println(<any>true); // @output true
    io:println(<int>2); // @output 2
    io:println(<boolean>false); // @output false
}
