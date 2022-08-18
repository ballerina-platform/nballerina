type T1 record {| // @error
    T2 & T1? next;
|};

type T2 record {|
    int x;
|};
