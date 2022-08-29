type ROIntArray readonly & IntArray;

// @type ROInt5 < Int5
// @type ROInt5 < ROIntArray
type ROInt5 readonly & int[5];

// @type ROArrayFiveOfIntFive < ArrayFiveOfIntFive
// @type ROArrayFiveOfIntFive < Array5OfInt5
type ROArrayFiveOfIntFive ArrayFiveOfIntFive & readonly;
