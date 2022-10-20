type N record {|
    int x;
|};

type S record {|
    string x;
|};

type NS record {|
    int|string x;
|};

type P record {|
    N|S x;
|};

type Q record {|
    NS x;
|};

public function main() {
    S s = { x:"str" };
    Q q = { x:s };
    P p = q; // @error
}
