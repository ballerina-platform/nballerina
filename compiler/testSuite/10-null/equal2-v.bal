import ballerina/io;

public function main() {
    null a = null;
    null b = ();
    () c = null;
    () d = ();
    io:println(a == b); // @output true
    io:println(a == c); // @output true
    io:println(a == d); // @output true
    io:println(b == c); // @output true
    io:println(b == d); // @output true

    io:println(a == retNul1()); // @output true
    io:println(a == retNul2()); // @output true
    io:println(a == retNul3()); // @output true
    io:println(a == retNul4()); // @output true
    io:println(a == retNul5()); // @output true
}

function retNul1() {
    return;
}

function retNul2() returns () {
    return ();
}

function retNul3() returns () {
    return null;
}

function retNul4() returns null {
    return null;
}

function retNul5() returns null {
    return ();
}
