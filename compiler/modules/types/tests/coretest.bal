import ballerina/test;

@test:Config{}
function testSubtypeSimple() {
    test:assertTrue(isSubtypeSimple(NIL, ANY));
    test:assertTrue(isSubtypeSimple(INT, TOP));
    test:assertTrue(isSubtypeSimple(ANY, TOP));
    test:assertFalse(isSubtypeSimple(INT, BOOLEAN));
    test:assertFalse(isSubtypeSimple(ERROR, ANY));
}

@test:Config{}
function testSingleNumericType() {
    test:assertEquals(singleNumericType(INT), INT);
    test:assertEquals(singleNumericType(BOOLEAN), ());
    Env env = new;
    test:assertEquals(singleNumericType(singleton(typeContext(env), 1)), INT);
    test:assertEquals(singleNumericType(union(INT, FLOAT)), ());
}

@test:Config{}
function test1() {
    Env env = new;
    disjoint(typeContext(env), STRING, INT);
    disjoint(typeContext(env), INT, NIL);
    SemType t1 = tuple(env, INT, INT);
    disjoint(typeContext(env), t1, INT);
    SemType t2 = tuple(env, STRING, STRING);
    disjoint(typeContext(env), NIL, t2);
}

function disjoint(Context cx, SemType t1, SemType t2) {
    test:assertFalse(isSubtype(cx, t1, t2));
    test:assertFalse(isSubtype(cx, t2, t1));
    test:assertTrue(isEmpty(cx, intersect(t1, t2)));
}

@test:Config{}
function test2() {
    test:assertTrue(isSubtype(typeContext(new), INT, TOP));
}

@test:Config{}
function test3() {
    Env env = new;
    SemType s = tuple(env, INT, union(INT, STRING));
    SemType t = union(tuple(env, INT, INT), tuple(env, INT, STRING));
    equiv(env, s, t);
}

function equiv(Env env, SemType s, SemType t) {
    test:assertTrue(isSubtype(typeContext(env), s, t)); 
    test:assertTrue(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function test4() {
    Env env = new;
    SemType isT = tuple(env, INT, STRING);
    SemType itT = tuple(env, INT, TOP);
    SemType tsT = tuple(env, TOP, STRING);
    SemType iiT = tuple(env, INT, INT);
    SemType ttT = tuple(env, TOP, TOP);
    var cx = typeContext(env);
    test:assertTrue(isSubtype(cx, isT, itT));
    test:assertTrue(isSubtype(cx, isT, tsT));
    test:assertTrue(isSubtype(cx, iiT, ttT));
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
    return def.define(env, members);
}

@test:Config{}
function recTest() {
    Env env = new;
    SemType t1 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    SemType t2 = recursiveTuple(env, (e, t) => [union(INT, STRING), union(t, NIL)]);
    test:assertTrue(isSubtype(typeContext(env), t1, t2));
    test:assertFalse(isSubtype(typeContext(env), t2, t1));
}

@test:Config{}
function recTest2() {
    Env env = new;
    SemType t1 = union(NIL, recursiveTuple(env, (e, t) => [INT, union(t, NIL)]));
    SemType t2 = recursiveTuple(env, (e, t) => [INT, union(t, NIL)]);
    test:assertTrue(isSubtype(typeContext(env), t2, t1));
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
    test:assertTrue(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function tupleTest2() {
    Env env = new;
    SemType s = tuple(env, INT, STRING, NIL);
    SemType t = tuple(env, TOP, TOP);
    test:assertFalse(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function tupleTest3() {
    Env env = new;
    SemType z1 = tuple(env);
    SemType z2 = tuple(env);
    test:assertTrue(!isEmpty(typeContext(env), z1));
    test:assertTrue(isSubtype(typeContext(env), z1, z2));
    test:assertTrue(isEmpty(typeContext(env), diff(z1, z2)));
    test:assertFalse(isEmpty(typeContext(env), diff(z1, INT)));
    test:assertFalse(isEmpty(typeContext(env), diff(INT, z1)));
}


@test:Config{}
function tupleTest4() {
    Env env = new;
    SemType s = tuple(env, INT, INT);
    SemType t = tuple(env, INT, INT, INT);
    test:assertFalse(isEmpty(typeContext(env), s));
    test:assertFalse(isEmpty(typeContext(env), t));
    test:assertFalse(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
    test:assertTrue(isEmpty(typeContext(env), intersect(s, t)));
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
    test:assertTrue(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}


@test:Config{}
function funcTest2() {
    Env env = new;
    SemType s = func(env, union(NIL, INT), INT);
    SemType t = func(env, INT, INT);
    test:assertTrue(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function funcTest3() {
    Env env = new;
    SemType s = func(env, tuple(env, union(NIL, INT)), INT);
    SemType t = func(env, tuple(env, INT), INT);
    test:assertTrue(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function funcTest4() {
    Env env = new;
    SemType s = func(env, tuple(env, union(NIL, INT)), INT);
    SemType t = func(env, tuple(env, INT), union(NIL, INT));
    test:assertTrue(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function stringTest() {
    string [] result = [];
    enumerableListUnion(["a", "b", "d"], ["c"], result);
    test:assertEquals(result, ["a", "b", "c", "d"]);

    result = [];
    enumerableListIntersect(["a", "b", "d"], ["d"], result);
    test:assertEquals(result, ["d"]);

    result = [];
    enumerableListDiff(["a", "b", "c", "d"], ["a", "c"], result);
    test:assertEquals(result, ["b", "d"]);
}

@test:Config{}
function roTest() {
    SemType t1 = uniformType(UT_LIST_RO);
    Env env = new;
    ListDefinition ld = new;
    SemType t2 = ld.define(env, rest = TOP);
    SemType t = diff(t1, t2);
    Context cx = typeContext(env);
    boolean b = isEmpty(cx, t);
    test:assertTrue(b);
}

@test:Config{}
function simpleArrayMemberTypeTest() {
    Context cx = typeContext(new);
    testArrayMemberTypeOk(cx, ANY);
    testArrayMemberTypeOk(cx, STRING);
    testArrayMemberTypeOk(cx, INT);
    testArrayMemberTypeOk(cx, TOP);
    testArrayMemberTypeOk(cx, BOOLEAN);
    testArrayMemberTypeFail(cx, createJson(cx));
    testArrayMemberTypeFail(cx, intWidthUnsigned(8));
    test:assertEquals(simpleArrayMemberType(typeContext(new Env()), INT), ());
}

function testArrayMemberTypeOk(Context cx, UniformTypeBitSet memberType) {
    ListDefinition def = new;
    SemType t = def.define(cx.env, rest = memberType);
    UniformTypeBitSet? bits = simpleArrayMemberType(cx, t);
    test:assertTrue(bits == memberType);
}

function testArrayMemberTypeFail(Context cx, SemType memberType) {
    ListDefinition def = new;
    SemType t = def.define(cx.env, rest = memberType);
    UniformTypeBitSet? bits = simpleArrayMemberType(cx, t);
    test:assertTrue(bits == ());
}

@test:Config{}
function testIntSubtypeWidenUnsigned() {
    test:assertTrue(<boolean> intSubtypeWidenUnsigned(true));
    test:assertTrue(<boolean> intSubtypeWidenUnsigned([{ min: -1, max: 10 }]));
    IntSubtype intType1 = <IntSubtype> intSubtypeWidenUnsigned([{ min: 0, max: 0 }]);
    test:assertEquals(intType1[0].min, 0);
    test:assertEquals(intType1[0].max, 255);
    IntSubtype intType2 = <IntSubtype> intSubtypeWidenUnsigned([{ min: 0, max: 257 }]);
    test:assertEquals(intType2[0].min, 0);
    test:assertEquals(intType2[0].max, 65535);
}

@test:Config{}
function testStringCharSubtype() {
    ComplexSemType st = <ComplexSemType> stringConst("a");
    test:assertEquals(st.subtypeDataList.length(), 1);
    StringSubtype subType = <StringSubtype> st.subtypeDataList[0];
    test:assertEquals(subType.char.values.length(), 1);
    test:assertEquals(subType.char.values[0], "a");
    test:assertEquals(subType.char.allowed, true);
    test:assertEquals(subType.nonChar.values.length(), 0);
    test:assertEquals(subType.nonChar.allowed, true);
}

@test:Config{}
function testStringNonCharSubtype() {
    ComplexSemType st = <ComplexSemType> stringConst("abc");
    test:assertEquals(st.subtypeDataList.length(), 1);
    StringSubtype subType = <StringSubtype> st.subtypeDataList[0];
    test:assertEquals(subType.char.values.length(), 0);
    test:assertEquals(subType.char.allowed, true);
    test:assertEquals(subType.nonChar.values.length(), 1);
    test:assertEquals(subType.nonChar.values[0], "abc");
    test:assertEquals(subType.nonChar.allowed, true);
}

@test:Config{}
function testStringSubtypeSingleValue() {
    ComplexSemType abc = <ComplexSemType> stringConst("abc");
    StringSubtype abcSD = <StringSubtype>abc.subtypeDataList[0];
    test:assertEquals(stringSubtypeSingleValue(abcSD), "abc");

    ComplexSemType a = <ComplexSemType> stringConst("a");
    StringSubtype aSD = <StringSubtype>a.subtypeDataList[0];
    test:assertEquals(stringSubtypeSingleValue(aSD), "a");

    ComplexSemType aAndAbc = <ComplexSemType>union(a, abc);
    test:assertEquals(stringSubtypeSingleValue(<StringSubtype>aAndAbc.subtypeDataList[0]), ());

    ComplexSemType intersect1 = <ComplexSemType>intersect(aAndAbc, a);
    test:assertEquals(stringSubtypeSingleValue(<StringSubtype>intersect1.subtypeDataList[0]), "a");    
    ComplexSemType intersect2 = <ComplexSemType>intersect(aAndAbc, abc);
    test:assertEquals(stringSubtypeSingleValue(<StringSubtype>intersect2.subtypeDataList[0]), "abc");
    SemType intersect3 = intersect(a, abc);
    test:assertEquals(intersect3, NEVER);  
    SemType intersect4 = intersect(a, STRING);  
    test:assertEquals(intersect4, a);
}
