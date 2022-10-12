import ballerina/io;

type NN [int, int];

type SS [string, string];

type NS [int, string];

type SN [string, int];

type UU [int|string, int|string];

type U NN|SS|NS|SN;

public function main() {
    SN ns = ["str", 3];
    U u = ns;

    if u is NN {
        io:println("NN");
    } else if u is SS {
        io:println("SS");
    } else if u is NS {
        io:println("NS");
    } else {
        SN _ = u;
        io:println("SN"); //  @output SN
    }
}
