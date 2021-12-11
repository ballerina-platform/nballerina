type C record {|
    int i;
|};

public function main() {
    C c = { i: 0 };
    string m = "j";
    c[m] = 8; // @panic bad mapping store
}
