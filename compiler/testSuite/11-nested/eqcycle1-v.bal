import ballerina/io;

type J ()|boolean|int|float|string|J[]|map<J>;

public function main () {
    map<J> j1 = { loop: () };
    map<J> j2 = { loop: () };
    io:println(j1 == j2); // @output true
    j1["loop"] = j1;
    io:println(j1 == j2); // @output false
    j2["loop"] = j2;
    io:println(j1 == j2); // @output true
    j2["loop"] = j1;
    map<J> j3 = { loop: () };
    j3["loop"] = { loop: { loop: { loop: j3 }}};
    io:println(j1 == j3); // @output true
}