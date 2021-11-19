import ballerina/io;

type J ()|boolean|int|float|string|J[]|map<J>;

public function main() {
    J j = [
        { name: "James", age: 100, children: ["Jack", "Jane"], married: true }
    ];
    io:println(j); // @output [{"name":"James","age":100,"children":["Jack","Jane"],"married":true}]
    if j is J[] {
        io:println("array"); // @output array
        J j0 = j[0];
        if j0 is map<J> {
            io:println("map"); // @output map
            io:println(j0["age"]); // @output 100
        }
    } 
}
