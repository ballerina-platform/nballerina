import ballerina/io;

type Person record {|
    Name name;
    int age;
|};

type Name record {|
    string first;
    string last;
|};

public function main() {
    Person p = {
        name: { first: "John", last: "Smith" },
        age: 30
    };
    io:println(p["name"]); // @output {"first":"John","last":"Smith"}
}
