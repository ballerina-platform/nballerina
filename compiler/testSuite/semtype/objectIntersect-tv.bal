type O1 object {
    public int|string foo;
    public function bar(int a) returns int;
};

type O2 object {
    public int|float foo;
    public function bar(string a) returns int;
    public string baz;
};

// @type T = O12
// @type T < ObjectTop
type T O1 & O2;

type O12 object {
    public int foo;
    public function bar(int|string a) returns int;
    public string baz;
};

type ObjectTop object {};

type O3 object {
    public O1 o;
};

type O4 object {
    public O2 o;
};

// @type T1 = O34
// @type T1 < ObjectTop
type T1 O3 & O4;
type O34 object {
    public O12 o;
};
