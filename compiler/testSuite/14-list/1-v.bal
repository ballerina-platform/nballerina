import ballerina/io;
public function main() {
    io:println([1, 2] == [1, 2]); // @output true
    io:println([1, 2] === [1, 2]); // @output false
    io:println([[1, 2], 3] == [[1, 2], 3]); // @output true
    io:println([1, 2] === [1, 2]); // @output false
    io:println([[1, 2], 3] === [[1, 2], 3]); // @output false
    io:println(([1, 2]) == [1, 2]); // @output true
    io:println(([1, 2]) === [1, 2]); // @output false
    io:println(([[1, 2], 3]) == [[1, 2], 3]); // @output true

    io:println(["a", 2] == ["a", 2]); // @output true
    io:println(["a", 2] === ["a", 2]); // @output false

    io:println([[1, 2], 3] == [[1, 2], 4]); // @output false
    io:println(["ab", 3] == ["ab", 4]); // @output false
    io:println(["ab", 3] == ["ac", 3]); // @output false
    io:println([["ab", 3], 5] == [["ab", 4], 5]); // @output false
    io:println([["ab", 3], 5] == [["ac", 3], 5]); // @output false
}
