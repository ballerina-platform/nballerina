import ballerina/io;
public function main() {
    io:println([1,2] == [1, 2]); // @output true
    io:println([1,2] === [1, 2]); // @output false
// FIXME:
//     io:println([1,2] < [1, 2]);
}
