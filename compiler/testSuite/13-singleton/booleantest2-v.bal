import ballerina/io;

type T true;
type F false;

public function main() {
    boolean v = true;
    io:println(v is T); // @output true
    io:println(v is F); // @output false
    io:println(v is boolean); // @output true

    v = false;
    io:println(v is T); // @output false
    io:println(v is F); // @output true
    io:println(v is boolean); // @output true
}

