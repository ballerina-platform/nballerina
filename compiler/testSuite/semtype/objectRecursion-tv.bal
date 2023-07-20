// @type O1 < O
// @type O3 < O
// @type O2 <> O
type O object {
    public O foo;
    public function bar(O o);
} | int;

type O1 object {
    public int foo;
    public function bar(O o);
};

type O2 object {
    public int foo;
    public function bar(int o);
};

type O3 object {
    public int foo;
    public function bar(O|string o);
};
