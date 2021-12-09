type A record {|
    B b;
|};

type B record {|
    C c;
|};

type C record {|
    int i;
|};

public function main() {
    A a = { b: { c: { i: 0 } } };
    string m = "j";
    a.b.c[m] = 8; // @panic bad mapping store
}
