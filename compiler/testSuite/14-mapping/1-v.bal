import ballerina/io;

public function main() {
    io:println({a: 1, b: 2} == {a: 1, b: 2}); // @output true
    io:println({a: 1, b: 2} === {a: 1, b: 2}); // @output false
    io:println({a: 2, b: 2} == {a: 1, b: 2}); // @output false
    io:println({a: {x: 1, y: 2}, b: 2} == {a: {x: 1, y: 2}, b: 2}); // @output true
    io:println({a: {x: 1, y: 2}, b: 2} === {a: {x: 1, y: 2}, b: 2}); // @output false
    io:println({a: {x: 2, y: 2}, b: 2} == {a: {x: 1, y: 2}, b: 2}); // @output false
    io:println({a: "a", b: 2} == {a: "a", b: 2}); // @output true
    io:println({a: "c", b: 2} == {a: "a", b: 2}); // @output false
    io:println({a: {x: "a", y: 2}, b: 2} == {a: {x: "a", y: 2}, b: 2}); // @output true
    io:println({a: {x: "b", y: 2}, b: 2} == {a: {x: "a", y: 2}, b: 2}); // @output false
}
