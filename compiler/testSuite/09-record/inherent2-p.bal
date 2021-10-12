import ballerina/io;

type Person record {|
    string name;
    int age;
|};

public function main() {
    Person p = { name: "James", age: 99 };
    foo(p);
    io:println(p["age"]);
}

function foo(map<string|int> m) {
    m["dateOfBirth"] = "long ago"; // @panic bad mapping store
}
