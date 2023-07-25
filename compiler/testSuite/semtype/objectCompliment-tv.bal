type ObjectTop object {};

type O1 object {
    public int a;
    public function b(int x, int y);
};

type O2 object {
    public int a;
    public function c(string z);
};

// @type O2_comp <> O2
type O2_comp !O2;

// @type Ox < ObjectTop
// @type Ox < O1
// @type Ox <> O2;
type Ox O1 & !O2;
