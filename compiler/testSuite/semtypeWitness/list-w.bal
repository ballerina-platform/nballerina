type IA int[];
// @type IA < SA | [42]
// @type SA < IA | ["non empty string"]
type SA string[];

// @type IA < IA1 | []
type IA1 int[1];

// @type IA < I1T | []
// @type I1T < IA1 | [42, 42]
type I1T [int, int...];

// @type I2T < IA1 | [42, 42, 42]
type I2T [int, int, int...];

type IAIA int[][];
// @type IAIA < I2IA | []
type I2IA int[2][];

// @type S2SA < I2IA | [["non empty string"], ["non empty string"]]
type S2SA string[2][];
