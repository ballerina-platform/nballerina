type O1 object {
    public int|string foo;
    public function bar(1|2 a) returns int;
};

type O2 object {
    public int|float foo;
    public function bar(2|3 a) returns string;
};

// @type T < ObjectTop
// @type T < O12
type T O1 | O2;

type O12 object {
    public int|float|string foo;
    public function bar(2 a) returns string|int;
};

type ObjectTop object { };

type O3 object {
    public O1 o;
};

type O4 object {
    public O2 o;
};

// @type T1 < ObjectTop
// @type T1 < O34
type T1 O3 | O4;

type O34 object {
    public O12 o;
};
