import ballerina/test;

@test:Config {}
function testIntrinsicNamedGlobalVar() {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    error|PointerValue e = trap m.addGlobal("i64", "sadd.with.overflow.i64");
    if !(e is error) {
        test:assertFail("Global variables named as reserved intrinsic allowed");
    }
}

@test:Config {}
function testIntrinsicNamedFunctionDecln() {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    error|FunctionDecl fn = trap m.addFunctionDecl("sadd.with.overflow.i64",{returnType:"i64", paramTypes:["i64"]});
    if !(fn is error) {
        test:assertFail("Function declarations named as reserved intrinsic allowed");
    }
}

@test:Config {}
function testIntrinsicNamedFunctionDefn() {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    error|FunctionDefn fn = trap m.addFunctionDefn("sadd.with.overflow.i64",{returnType:"i64", paramTypes:["i64"]});
    if !(fn is error) {
        test:assertFail("Function declarations named as reserved intrinsic allowed");
    }
}
