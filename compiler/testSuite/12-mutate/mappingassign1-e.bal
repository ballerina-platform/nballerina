type N record {|
    int x;
|};

type S record {|
    string x;
|};

type NS record {|
    int|string x;
|};

type NorS N|S;

public function main() {
    NS ns = { x: "str" };
    NorS nOrS = ns; // @error
}
