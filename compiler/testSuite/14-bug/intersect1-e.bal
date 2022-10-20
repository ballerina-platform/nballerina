type T1 record {|
    T2 & T1? next; // @error
|};

type T2 record {|
    int x;
|};
