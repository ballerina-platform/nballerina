type C record {|
    int i;
    int? j;
|};

public function main() {
    C c = { i: 0, j: () };
    string m = "i";
    c[m] = (); // @panic bad mapping store
}
