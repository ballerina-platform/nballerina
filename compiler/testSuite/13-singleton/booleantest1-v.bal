import ballerina/io;

type T true;
type F false;

public function main() {
    any v = true;
    io:println(v is T); // @output true
    io:println(v is F); // @output false

    v = false;
    io:println(v is T); // @output false
    io:println(v is F); // @output true
    v = 0;
    io:println(v is T); // @output false
    io:println(v is F); // @output false
}
