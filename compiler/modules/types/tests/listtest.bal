import ballerina/test;

@test:Config{}
function testCombineRanges1() {
    Range[] ranges1 = [{ min: 0, max: 9 }, { min: 10, max: int:MAX_VALUE }];
    Range[] ranges2 = [{ min: 0, max: 4 }, { min: 5, max: 14 }, { min: 15, max: int:MAX_VALUE }];
    [Range, int?, int?][] combined12 = [
        [{ min: 0, max: 4 }, 0, 0],
        [{ min: 5, max: 9 }, 0, 1],
        [{ min: 10, max: 14 }, 1, 1],
        [{ min: 15, max: int:MAX_VALUE }, 1, 2]
    ];
    test:assertEquals(combineRanges(ranges1, ranges2), combined12);
    Range[] ranges3 = [{ min: 0, max: 9 }, { min: 10, max: 14 }, { min: 15, max: int:MAX_VALUE }];

    [Range, SemType, SemType][] combined13 = [
        [{ min: 0, max: 9 }, 0, 0],
        [{ min: 10, max: 14 }, 1, 1],
        [{ min: 15, max: int:MAX_VALUE }, 1, 2]
    ];
 
 
    test:assertEquals(combineRanges(ranges1, ranges3), combined13);
}

@test:Config{}
function testCombineRanges2() {
    test:assertEquals(combineRanges([{min:0,max:1}],[{min:0,max:0},{min:1,max:1}]),
                      [[{min:0,max:0},0,0],[{min:1,max:1},0,1]]);
}


@test:Config{}
function testCombineRanges3() {
    Range[] ranges1 = [
        {min: -5, max: -1},
        {min: 1, max: 5},
        {min: 10, max: 12}
    ];
    Range[] ranges2 = [
        { min: -6, max: -4 },
        { min: -1, max: 7 }
    ];
    test:assertEquals(combineRanges(ranges1, ranges2), [
        [{ min: -6, max: -6 }, (), 0],
        [{ min: -5, max: -4 }, 0, 0],
        [{ min: -3, max: -2 }, 0, ()],
        [{ min: -1, max: -1 }, 0, 1],
        [{ min: 0,  max: 0 }, (), 1],
        [{ min: 1,  max: 5 }, 1, 1],
        [{ min: 6,  max: 7 }, (), 1],
        [{ min: 10,  max: 12 }, 2, ()]
    ]);
}
