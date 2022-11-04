type IntArray int[];
type Int5 int[5];
type ROIntArray readonly & IntArray;

// @type ROInt5 < Int5
// @type ROInt5 < ROIntArray
type ROInt5 readonly & int[5];


type Array5OfInt5 int[5][5];
const FIVE = 5;
type ArrayFiveOfIntFive int[FIVE][FIVE];

// @type ROArrayFiveOfIntFive < ArrayFiveOfIntFive
// @type ROArrayFiveOfIntFive < Array5OfInt5
type ROArrayFiveOfIntFive ArrayFiveOfIntFive & readonly;
