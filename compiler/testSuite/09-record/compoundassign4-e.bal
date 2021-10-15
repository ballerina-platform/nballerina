// import ballerina/io;

type R record {|
    int x;
    int n;
|};

public function main() {
    R r = { x: 1, n: 5 };
    string k = "x";
    r[k] += 1; // @error
}
