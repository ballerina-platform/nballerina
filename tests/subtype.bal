import ballerina/test;

@test:Config{}
function test1() {
    Env env = {};
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
    test:assertTrue(isSubtype(typeCheckContext({}), INT, TOP));
}

@test:Config{}
function test3() {
    Env env = {};
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
    Env env = {};
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
    Env env = {};
    SemType s = tuple(env, INT, union(NIL, union(INT, STRING)));
    SemType t = union(tuple(env, INT, INT), union(tuple(env, INT, NIL), tuple(env, INT, STRING)));
    equiv(env, s, t);
}


@test:Config{}
function recTest() {
    Env env = {};
    SemType t1 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    SemType t2 = recursiveTuple(env, (e, t) => [union(INT, STRING), union(t, NIL)]);
    test:assertTrue(isSubtype(typeCheckContext(env), t1, t2));
    test:assertFalse(isSubtype(typeCheckContext(env), t2, t1));
}

@test:Config{}
function recTest2() {
    Env env = {};
    SemType t1 = union(NIL, recursiveTuple(env, (e, t) => [INT, union(t, NIL)]));
    SemType t2 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    test:assertTrue(isSubtype(typeCheckContext(env), t2, t1));
}

@test:Config{}
function recTest3() {
    Env env = {};
    SemType t1 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    // This is equivalent to:
    // type Inner [int, Outer|()];
    // type Outer [int, Inner|()];
    SemType t2 = recursiveTuple(env, (e, t) => [INT, union(NIL, tuple(e, INT, union(NIL, t)))]);
    equiv(env, t1, t2);
}

@test:Config{}
function tupleTest1() {
    Env env = {};
    SemType s = tuple(env, INT, STRING, NIL);
    SemType t = tuple(env, TOP, TOP, TOP);
    test:assertTrue(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function tupleTest2() {
    Env env = {};
    SemType s = tuple(env, INT, STRING, NIL);
    SemType t = tuple(env, TOP, TOP);
    test:assertFalse(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}

@test:Config{}
function funcTest1() {
    Env env = {};
    SemType s = func(env, INT, INT);
    SemType t = func(env, INT, union(NIL, INT));
    test:assertTrue(isSubtype(typeCheckContext(env), s, t));
    test:assertFalse(isSubtype(typeCheckContext(env), t, s));
}