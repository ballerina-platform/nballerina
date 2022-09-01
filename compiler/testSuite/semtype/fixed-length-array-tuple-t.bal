type Int1 int[1];
type Int2 int[2];

// @type IntT = Int1
type IntT [int];

// @type IntIntT = Int2
type IntIntT [int, int];

// @type Int = IntIntT[0]
type Int int;

// @type Int = Int2Intersection[0]
// @type Int = Int2Intersection[1]
type Int2Intersection IntIntT & int[2];

// @type Int2Intersection = Int2AnyArrayIntersection
// @type Int = Int2AnyArrayIntersection[0]
// @type Int = Int2AnyArrayIntersection[1]
type Int2AnyArrayIntersection IntIntT & any[];
