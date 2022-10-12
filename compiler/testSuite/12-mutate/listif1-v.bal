import ballerina/io;

type N [int];

type S [string];

type NorS N|S;

public function main() {
    S s = ["str"];
    NorS nOrS = s;

    if nOrS is N {
        io:println("N");
    } else {
        S _ = nOrS;
        io:println("S"); //  @output S
    }
}
