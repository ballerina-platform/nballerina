import ballerina/io;
public function main() {
    any x = {v:1};
    any y = x;
    // @output true
    // @output false
    printEq(x, y);
    // @output false
    // @output true
    printEq({v:1}, 1);
    // @output false
    // @output true
    printEq({v:1}, [1]);
    // @output false
    // @output true
    printEq({v:1}, {v:1});
    // @output false
    // @output true
    printEq({}, {});
    // @output false
    // @output true
    printEq({v:1}, {v:2});
}

function printEq(any x, any y) {
    io:println(x === y);
    io:println(x !== y);
}
