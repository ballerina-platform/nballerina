type Int1 int[1];
type Int2 int[2];

// @type IntT = Int1
type IntT [int];

// @type IntIntT = Int2
type IntIntT [int, int];

// @Type IntIntRT < IntIntT
// @Type IntIntRT < Int2
type IntIntRT readonly & [int, int];

// @Type Int2R = IntIntRT
type Int2R readonly & int[2];
