// @type R1 = CYCLE
type R1 record {
    R1 r;
    int a;
};

// @type R2 <> CYCLE
type R2 record {
    R2 r;
    int a;
} | int;
