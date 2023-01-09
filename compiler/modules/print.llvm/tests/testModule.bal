import ballerina/test;

@test:Config {}
function testIntrinsicNamedGlobalVar() {
    Context context = new;
    Module m = context.createModule();
    error|PointerValue e = trap m.addGlobal("i64", "sadd.with.overflow.i64.i64");
    if e !is error {
        test:assertFail("Global variables named as reserved intrinsic allowed");
    }
}

@test:Config {}
function testIntrinsicNamedFunctionDecln() {
    Context context = new;
    Module m = context.createModule();
    error|FunctionDecl fn = trap m.addFunctionDecl("sadd.with.overflow.i64.i64",{returnType:"i64", paramTypes:["i64"]});
    if fn !is error {
        test:assertFail("Function declarations named as reserved intrinsic allowed");
    }
}

@test:Config {}
function testIntrinsicNamedFunctionDefn() {
    Context context = new;
    Module m = context.createModule();
    error|FunctionDefn fn = trap m.addFunctionDefn("sadd.with.overflow.i64.i64",{returnType:"i64", paramTypes:["i64"]});
    if fn !is error {
        test:assertFail("Function declarations named as reserved intrinsic allowed");
    }
}

@test:Config {}
function testSameNamedDeclarations1() {
    Context context = new;
    Module m = context.createModule();
    _ =  m.addGlobal("i64", "g1");
    error|FunctionDefn fn = trap m.addFunctionDefn("g1",{returnType:"i64", paramTypes:["i64"]});
    if fn !is error {
        test:assertFail("Repeated use of same name allowed");
    }
}

@test:Config {}
function testSameNamedDeclarations2() {
    Context context = new;
    Module m = context.createModule();
    _ =  m.addGlobal("i64", "g1");
    error|FunctionDecl fn = trap m.addFunctionDecl("g1",{returnType:"i64", paramTypes:["i64"]});
    if fn !is error {
        test:assertFail("Repeated use of same name allowed");
    }
}

@test:Config {}
function testSameNamedDeclarations3() {
    Context context = new;
    Module m = context.createModule();
    _ = m.addFunctionDefn("g1",{returnType:"i64", paramTypes:["i64"]});
    error|FunctionDecl fn = trap m.addFunctionDecl("g1",{returnType:"i64", paramTypes:["i64"]});
    if fn !is error {
        test:assertFail("Repeated use of same name allowed");
    }
}
