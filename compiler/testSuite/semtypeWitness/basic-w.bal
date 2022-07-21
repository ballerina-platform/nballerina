type I int;
type S string;
// @type IS < I | "non empty string"
// @type IS < S | 42
type IS int|string;

type F float;
type D decimal;
// @type FD < F | 3.5d
// @type FD < D | 2.5f
type FD F|D;

type I1 1;
type I2 2;
type I3 3;
// @type I123 < I1 | 2
// @type I123 < I2 | 1
// @type I123 < I3 | 1
type I123 I1|I2|I3;

// @type S8 < I1 | 0
type S8 int:Unsigned8;

// @type S16 < S8 | 256
type S16 int:Unsigned16;

type ONE "O";
type TWO "TO";
type THREE "THREE";
// @type ONE_TWO_THREE < ONE | "THREE"
// @type ONE_TWO_THREE < TWO | "THREE"
type ONE_TWO_THREE ONE|TWO|THREE;

// @type ONE_TWO_THREE < CHAR | "THREE"
// @type CHAR < ONE | "r"
// @type CHAR < TWO | "r"
// @type CHAR < THREE | "r"
type CHAR string:Char;
