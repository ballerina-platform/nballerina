type A record {|
    B b;
|};

type B record {|
    C c;
|};

type C record {|
    int i;
|};

const m = "j";

public function main() {
    A a = { b: { c: { i: 0 } } };
    a.b.c[m] = 8; // @error
}
