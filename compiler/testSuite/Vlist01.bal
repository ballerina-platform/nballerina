import ballerina/io;

public function main() {
    io:println([]); // @output []
    io:println([true]); // @output [true]
    io:println([()]); // @output [null]
    io:println([-17]); // @output [-17]
    io:println([false, (), 43]); // @output [false,null,43]
    io:println([[[[[[]]]]]]); // @output [[[[[[]]]]]]
    io:println([false, [1, true, 21], 0]); // @output [false,[1,true,21],0]
}
