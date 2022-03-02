type T11 int[];
type T12 string[];
type T13 (int|string)[];
// @type T14 < T13
type T14 T11|T12;

type TX1 xml:Element[];
type TX2 xml:Comment[];
type TX3 (xml:Comment|xml:Element)[];
// @type TX4 < TX3
type TX4 TX1|TX2;

type TM1 (int|boolean)[];
type TM2 (string|boolean)[];
type TM3 (int|string)[];
// @type TM4 <> TM3
type TM4 TM1|TM2;
// @type TM4 < TM5
type TM5 (int|string|boolean)[];
