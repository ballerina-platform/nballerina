import ballerina/io;

type NN record {|
    int x;
    int y;
|};

type SS record {|
    string x;
    string y;
|};

type NS record {|
    int x;
    string y;
|};

type SN record {|
    string x;
    int y;
|};

type UU record {|
    int|string x;
    int|string y;
|};

type U NN|SS|NS|SN;

public function main() {
    UU r = { x: 1, y: "yyy" };
    if r is U {
        io:println("yes");
    } else {
        io:println("no"); // @output no
    }
}
