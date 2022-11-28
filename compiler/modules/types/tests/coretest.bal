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
    SemType t1 = tupleTypeWrapped(env, INT, INT);
    disjoint(typeContext(env), t1, INT);
    SemType t2 = tupleTypeWrapped(env, STRING, STRING);
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
function test3MutableList() {
    Env env = new;
    SemType s = tupleTypeWrapped(env, INT, union(INT, STRING));
    SemType t = union(tupleTypeWrapped(env, INT, INT), tupleTypeWrapped(env, INT, STRING));
    test:assertTrue(isSubtype(typeContext(env), t, s));
    test:assertFalse(isSubtype(typeContext(env), s, t));
}

function equiv(Env env, SemType s, SemType t) {
    test:assertTrue(isSubtype(typeContext(env), s, t)); 
    test:assertTrue(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function test4() {
    Env env = new;
    SemType isT = tupleTypeWrapped(env, INT, STRING);
    SemType itT = tupleTypeWrapped(env, INT, TOP);
    SemType tsT = tupleTypeWrapped(env, TOP, STRING);
    SemType iiT = tupleTypeWrapped(env, INT, INT);
    SemType ttT = tupleTypeWrapped(env, TOP, TOP);
    var cx = typeContext(env);
    test:assertTrue(isSubtype(cx, isT, itT));
    test:assertTrue(isSubtype(cx, isT, tsT));
    test:assertTrue(isSubtype(cx, iiT, ttT));
}

@test:Config{}
function test5MutableList() {
    Env env = new;
    SemType s = tupleTypeWrapped(env, INT, union(NIL, union(INT, STRING)));
    SemType t = union(tupleTypeWrapped(env, INT, INT), union(tupleTypeWrapped(env, INT, NIL), tupleTypeWrapped(env, INT, STRING)));
    test:assertTrue(isSubtype(typeContext(env), t, s));
    test:assertFalse(isSubtype(typeContext(env), s, t));
}

function recursiveTuple(Env env, function(Env, SemType) returns SemType[] f) returns SemType {
    ListDefinition def = new; 
    SemType t = def.getSemType(env);
    SemType[] members = f(env, t);
    return defineListTypeWrapped(def, env, members);
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
    SemType t2 = recursiveTuple(env, (e, t) => [INT, union(NIL, tupleTypeWrapped(e, INT, union(NIL, t)))]);
    equiv(env, t1, t2);
}

@test:Config{}
function tupleTest1() {
    Env env = new;
    SemType s = tupleTypeWrapped(env, INT, STRING, NIL);
    SemType t = tupleTypeWrapped(env, TOP, TOP, TOP);
    test:assertTrue(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function tupleTest2() {
    Env env = new;
    SemType s = tupleTypeWrapped(env, INT, STRING, NIL);
    SemType t = tupleTypeWrapped(env, TOP, TOP);
    test:assertFalse(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function tupleTest3() {
    Env env = new;
    SemType z1 = tupleTypeWrapped(env);
    SemType z2 = tupleTypeWrapped(env);
    test:assertTrue(!isEmpty(typeContext(env), z1));
    test:assertTrue(isSubtype(typeContext(env), z1, z2));
    test:assertTrue(isEmpty(typeContext(env), diff(z1, z2)));
    test:assertFalse(isEmpty(typeContext(env), diff(z1, INT)));
    test:assertFalse(isEmpty(typeContext(env), diff(INT, z1)));
}


@test:Config{}
function tupleTest4() {
    Env env = new;
    SemType s = tupleTypeWrapped(env, INT, INT);
    SemType t = tupleTypeWrapped(env, INT, INT, INT);
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
    SemType s = func(env, tupleTypeWrapped(env, union(NIL, INT)), INT);
    SemType t = func(env, tupleTypeWrapped(env, INT), INT);
    test:assertTrue(isSubtype(typeContext(env), s, t));
    test:assertFalse(isSubtype(typeContext(env), t, s));
}

@test:Config{}
function funcTest4() {
    Env env = new;
    SemType s = func(env, tupleTypeWrapped(env, union(NIL, INT)), INT);
    SemType t = func(env, tupleTypeWrapped(env, INT), union(NIL, INT));
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
function listTopTest() {
    SemType t1 = basicType(BT_LIST);
    Env env = new;
    ListDefinition ld = new;
    SemType t2 = defineListTypeWrapped(ld, env, rest = TOP);
    SemType d1 = diff(t1, t2);
    SemType d2 = diff(t2, t1);
    Context cx = typeContext(env);
    boolean b1 = isEmpty(cx, d1);
    boolean b2 = isEmpty(cx, d2);
    test:assertTrue(b1);
    test:assertTrue(b2);
}

@test:Config{}
function mappingTopTest() {
    SemType t1 = basicType(BT_MAPPING);
    Env env = new;
    MappingDefinition md = new;
    SemType t2 = defineMappingTypeWrapped(md, env, [], rest = TOP);
    SemType d1 = diff(t1, t2);
    SemType d2 = diff(t2, t1);
    Context cx = typeContext(env);
    boolean b1 = isEmpty(cx, d1);
    boolean b2 = isEmpty(cx, d2);
    test:assertTrue(b1);
    test:assertTrue(b2);
}

@test:Config{}
function roListTest() {
    Env env = new;
    Context cx = typeContext(env);
    SemType t1 = intersect(basicType(BT_LIST), READONLY);
    ListDefinition ld = new;
    SemType t2 = defineListTypeWrapped(ld, env, rest = TOP);
    SemType t = diff(t1, t2);
    boolean b = isEmpty(cx, t);
    test:assertTrue(b);
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

@test:Config{}
function testIntSubtypeConstraints() {
    IntSubtype i1 = [{ min: -1, max: 10 }];
    SemType t1 = basicSubtype(BT_INT, i1);

    IntSubtype i2 = [{ min: 11, max: 12 }];
    SemType t2 = basicSubtype(BT_INT, i2);

    SemType t12 = union(t1, t2);
    var c12 = <IntSubtypeConstraints>intSubtypeConstraints(t12);
    test:assertEquals(c12.min, -1);
    test:assertEquals(c12.max, 12);
    test:assertEquals(c12.all, true);

    IntSubtype i3 = [{ min: 14, max: 15 }];
    SemType t3 = basicSubtype(BT_INT, i3);

    SemType t13 = union(t1, t3);
    var c13 = <IntSubtypeConstraints>intSubtypeConstraints(t13);
    test:assertEquals(c13.min, -1);
    test:assertEquals(c13.max, 15);
    test:assertEquals(c13.all, false);
}

@test:Config{}
function testMappingTopBasicTypeBitSet() {
    Env env = new;
    MappingDefinition md = new;
    SemType t = defineMappingTypeWrapped(md, env, [], TOP);
    test:assertTrue(t is BasicTypeBitSet);
    test:assertTrue(t == MAPPING);
}

@test:Config{}
function testListTopBasicTypeBitSet() {
    Env env = new;
    ListDefinition ld = new;
    SemType t = defineListTypeWrapped(ld, env, rest = TOP);
    test:assertTrue(t is BasicTypeBitSet);
    test:assertTrue(t == LIST);
}

@test:Config{}
function testTableTopBasicTypeBitSet() {
    Env env = new;
    MappingDefinition md = new;
    SemType mappingTop = defineMappingTypeWrapped(md, env, [], TOP);
    SemType t = tableContaining(env, mappingTop);
    test:assertTrue(t is BasicTypeBitSet);
    test:assertTrue(t == TABLE);
}
