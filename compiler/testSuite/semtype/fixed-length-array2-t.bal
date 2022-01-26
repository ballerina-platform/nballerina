type IntArray int[];
type ISArray (int|string)[];

type Int4 int[4];
type Int1 int[1];
type Int14 Int4|Int1;
type NegInt14 (!Int14 & IntArray);

// @type I4A = IntArray
// @type I4A < ISArray
type I4A Int4|(!Int4 & IntArray);

// @type IA = IntArray
// @type IA < ISArray
type IA Int14|NegInt14;
