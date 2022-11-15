import ballerina/test;

type CyclicTypeTest [string[], string, boolean];

@test:Config {}
function testCyclicList() {
    Env env = new();
    ListDefinition defn = new();
    // L [L]
    SemType ty = defn.define(env, [cellContaining(env, defn.getSemType(env))]);
    Context tc = typeContext(env);
    test:assertTrue(isCyclic(tc, ty));
} 

@test:Config {}
function testNonCyclicList() {
    Env env = new();
    ListDefinition defn = new();
    // L [L] | int;
    SemType ty = union(INT, defn.getSemType(env));
    _ = defn.define(env, [cellContaining(env, defn.getSemType(env))]);
    Context tc = typeContext(env);
    test:assertFalse(isCyclic(tc, ty));
} 

@test:Config {}
function testCyclicMapping1() {
    Env env = new();
    MappingDefinition defn = new();
    // M { l1: M }
    SemType ty = defn.define(env, [["l1", cellContaining(env, defn.getSemType(env))]], cellContaining(env, ANY));
    Context tc = typeContext(env);
    test:assertTrue(isCyclic(tc, ty));
}

@test:Config {}
function testCyclicMapping2() {
    Env env = new();
    MappingDefinition defn = new();
    // M {| l1: M |}
    SemType ty = defn.define(env, [["l1", cellContaining(env, defn.getSemType(env))]], cellContaining(env, NEVER));
    Context tc = typeContext(env);
    test:assertTrue(isCyclic(tc, ty));
}

@test:Config {}
function testCyclicMapping3() {
    Env env = new();
    MappingDefinition defn = new();
    // M { l1: M; M...; }
    SemType ty = defn.define(env, [["l1", cellContaining(env, defn.getSemType(env))]], cellContaining(env, defn.getSemType(env)));
    Context tc = typeContext(env);
    test:assertTrue(isCyclic(tc, ty));
}

@test:Config {}
function testNonCyclicMapping1() {
    Env env = new();
    MappingDefinition defn = new();
    // M { l1: M } | int
    SemType ty = union(INT, defn.getSemType(env));
    _ = defn.define(env, [["l1", cellContaining(env, defn.getSemType(env))]], cellContaining(env, ANY));
    Context tc = typeContext(env);
    test:assertFalse(isCyclic(tc, ty));
} 

@test:Config {}
function testNonCyclicMapping2() {
    Env env = new();
    MappingDefinition defn = new();
    // M {| l1: M |} | int
    SemType ty = union(INT, defn.getSemType(env));
    _ = defn.define(env, [["l1", cellContaining(env, defn.getSemType(env))]], cellContaining(env, NEVER));
    Context tc = typeContext(env);
    test:assertFalse(isCyclic(tc, ty));
} 

@test:Config {}
function testNonCyclicMapping3() {
    Env env = new();
    MappingDefinition defn = new();
    // M {| l1: M; M... |} | int
    SemType ty = union(INT, defn.getSemType(env));
    _ = defn.define(env, [["l1", cellContaining(env, defn.getSemType(env))]], cellContaining(env, defn.getSemType(env)));
    Context tc = typeContext(env);
    test:assertFalse(isCyclic(tc, ty));
} 
