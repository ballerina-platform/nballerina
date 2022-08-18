type T1 record {|
    // This intersection is empty, which means we should give an error.
    // We cannot yet do this, because at the point when we construct the
    // intersection, the T1 type is not yet ready, so we cannot do isEmpty.
    T2 & T1? next; // @error
|};

type T2 record {|
    int x;
|};
