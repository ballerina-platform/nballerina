import ballerina/test;

@test:Config{}
function testBitTwiddling() {
    test:assertEquals(numberOfTrailingZeros(0x10), 4);
    test:assertEquals(numberOfTrailingZeros(0x100), 8);
    test:assertEquals(numberOfTrailingZeros(0x1), 0);
    test:assertEquals(numberOfTrailingZeros(0x0), 64);
    test:assertEquals(bitCount(0x10000), 1);
    test:assertEquals(bitCount(0), 0);
    test:assertEquals(bitCount(1), 1);
    test:assertEquals(bitCount(0x10010010), 3);
    test:assertEquals(bitCount(-1), 64);
}

@test:Config{}
function test1() {
    Env env = new;
    disjoint(typeCheckContext(env), STRING, INT);
    disjoint(typeCheckContext(env), INT, NIL);
    SemType t1 = tuple(env, INT, INT);
    disjoint(typeCheckContext(env), t1, INT);
    SemType t2 = tuple(env, STRING, STRING);
    disjoint(typeCheckContext(env), NIL, t2);
}

function disjoint(TypeCheckContext tc, SemType t1, SemType t2) {
    test:assertFalse(isSubtype(tc, t1, t2));
    test:assertFalse(isSubtype(tc, t2, t1));
    test:assertTrue(isEmpty(tc, intersect(t1, t2)));
}

@test:Config{}
function test2() {
    test:assertTrue(isSubtype(typeCheckContext(new), INT, TOP));
}

@test:Config{}
function test3() {
    Env env = new;
    SemType s = tuple(env, INT, union(INT, STRING));
    SemType t = union(tuple(env, INT, INT), tuple(env, INT, STRING));
    equiv(env, s, t);
}

function equiv(Env env, SemType s, SemType t) {
    test:assertTrue(isSubtype(typeCheckContext(env), s, t)); 
    test:assertTrue(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function test4() {
    Env env = new;
    SemType isT = tuple(env, INT, STRING);
    SemType itT = tuple(env, INT, TOP);
    SemType tsT = tuple(env, TOP, STRING);
    SemType iiT = tuple(env, INT, INT);
    SemType ttT = tuple(env, TOP, TOP);
    var tc = typeCheckContext(env);
    test:assertTrue(isSubtype(tc, isT, itT));
    test:assertTrue(isSubtype(tc, isT, tsT));
    test:assertTrue(isSubtype(tc, iiT, ttT));
}

@test:Config{}
function test5() {
    Env env = new;
    SemType s = tuple(env, INT, union(NIL, union(INT, STRING)));
    SemType t = union(tuple(env, INT, INT), union(tuple(env, INT, NIL), tuple(env, INT, STRING)));
    equiv(env, s, t);
}

function recursiveTuple(Env env, function(Env, SemType) returns SemType[] f) returns SemType {
    ListDefinition def = new; 
    SemType t = def.getSemType(env);
    SemType[] members = f(env, t);
    return def.define(env, members, NEVER);
}

@test:Config{}
function recTest() {
    Env env = new;
    SemType t1 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    SemType t2 = recursiveTuple(env, (e, t) => [union(INT, STRING), union(t, NIL)]);
    test:assertTrue(isSubtype(typeCheckContext(env), t1, t2));
    test:assertFalse(isSubtype(typeCheckContext(env), t2, t1));
}

@test:Config{}
function recTest2() {
    Env env = new;
    SemType t1 = union(NIL, recursiveTuple(env, (e, t) => [INT, union(t, NIL)]));
    SemType t2 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    test:assertTrue(isSubtype(typeCheckContext(env), t2, t1));
}

@test:Config{}
function recTest3() {
    Env env = new;
    SemType t1 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    // This is equivalent to:
    // type Inner [int, Outer|()];
    // type Outer [int, Inner|()];
    SemType t2 = recursiveTuple(env, (e, t) => [INT, union(NIL, tuple(e, INT, union(NIL, t)))]);
    equiv(env, t1, t2);
}

@test:Config{}
function tupleTest1() {
    Env env = new;
    SemType s = tuple(env, INT, STRING, NIL);
    SemType t = tuple(env, TOP, TOP, TOP);
    test:assertTrue(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function tupleTest2() {
    Env env = new;
    SemType s = tuple(env, INT, STRING, NIL);
    SemType t = tuple(env, TOP, TOP);
    test:assertFalse(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function tupleTest3() {
    Env env = new;
    SemType z1 = tuple(env);
    SemType z2 = tuple(env);
    SemType t = tuple(env, INT);
    test:assertTrue(!isEmpty(typeCheckContext(env), z1));
    test:assertTrue(isSubtype(typeCheckContext(env), z1, z2));
    test:assertTrue(isEmpty(typeCheckContext(env), diff(z1, z2)));
    test:assertFalse(isEmpty(typeCheckContext(env), diff(z1, INT)));
    test:assertFalse(isEmpty(typeCheckContext(env), diff(INT, z1)));
}


@test:Config{}
function tupleTest4() {
    Env env = new;
    SemType s = tuple(env, INT, INT);
    SemType t = tuple(env, INT, INT, INT);
    test:assertFalse(isEmpty(typeCheckContext(env), s));
    test:assertFalse(isEmpty(typeCheckContext(env), t));
    test:assertFalse(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
    test:assertTrue(isEmpty(typeCheckContext(env), intersect(s, t)));
}

function func(Env env, SemType args, SemType ret) returns SemType {
    FunctionDefinition def = new(env);
    return def.define(env, args, ret);  
}

@test:Config{}
function funcTest1() {
    Env env = new;
    SemType s = func(env, INT, INT);
    SemType t = func(env, INT, union(NIL, INT));
    test:assertTrue(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}


@test:Config{}
function funcTest2() {
    Env env = new;
    SemType s = func(env, union(NIL, INT), INT);
    SemType t = func(env, INT, INT);
    test:assertTrue(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function funcTest3() {
    Env env = new;
    SemType s = func(env, tuple(env, union(NIL, INT)), INT);
    SemType t = func(env, tuple(env, INT), INT);
    test:assertTrue(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function funcTest4() {
    Env env = new;
    SemType s = func(env, tuple(env, union(NIL, INT)), INT);
    SemType t = func(env, tuple(env, INT), union(NIL, INT));
    test:assertTrue(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function stringTest() {
    test:assertEquals(stringListUnion(["a", "b", "d"], ["c"]), ["a", "b", "c", "d"]);
    test:assertEquals(stringListIntersect(["a", "b", "d"], ["d"]), ["d"]);
    test:assertEquals(stringListDiff(["a", "b", "c", "d"], ["a", "c"]), ["b", "d"]);
}

@test:Config{}
function roTest() {
    SemType t1 = uniformType(UT_LIST_RO);
    Env env = new;
    ListDefinition ld = new;
    SemType t2 = ld.define(env, [], TOP);
    SemType t = diff(t1, t2);
    TypeCheckContext tc = typeCheckContext(env);
    boolean b = isEmpty(tc, t);
    test:assertTrue(b);
}