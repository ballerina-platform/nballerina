import ballerina/io;

type Person record {
    string name;
    int age;
};

public function main() {
    Person p = { name: "James", age: 99 };
    foo(p);
    io:println(p["dateOfBirth"]); // @output long ago
}

function foo(map<any> m) {
    m["dateOfBirth"] = "long ago";
}
