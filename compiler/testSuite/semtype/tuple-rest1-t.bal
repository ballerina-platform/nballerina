type T11 [int|string, int...];
type T12 [int|string, string...];
type T13 [int|string, (int|string)...];
// @type T14 < T13
type T14 T11|T12;

type T22 [int|string, int|string, string...];
type T21 [int|string, int|string, int...];
type T23 [int|string, (int|string)...];
// @type T24 < T23
type T24 T11|T12;
// @type T24 < T25;
type T25 [(int|string)...];

