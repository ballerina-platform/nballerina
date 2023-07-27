type O object {
    public int a;
    public function f(int b);
};

type E O & !O; // @error
