import ballerina/io;

type N record {
    int x;
};

type S record {
    string x;
};

type NorS N|S;

public function main() {
    S s = { x: "str" };
    NorS nOrS = s;

    if nOrS is N {
        io:println("N");
    } else {
        S _ = nOrS;
        io:println("S"); //  @output S
    }
}
