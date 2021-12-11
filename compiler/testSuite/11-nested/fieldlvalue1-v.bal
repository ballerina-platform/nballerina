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
    p.name.first = "Jane";
    io:println(p["name"]); // @output {"first":"Jane","last":"Smith"}
}
