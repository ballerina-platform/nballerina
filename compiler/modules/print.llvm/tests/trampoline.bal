import ballerina/test;

function trampoline() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    StructType nestedType = structType(["i64"]);
    FunctionType fooTy = { returnType: "i64", paramTypes: [pointerType(nestedType), "i64"] };
    FunctionDefn foo = m.addFunctionDefn("foo1", fooTy);
    foo.addEnumAttribute([0, "nest"]);
    BasicBlock fooBB = foo.appendBasicBlock();
    builder.positionAtEnd(fooBB);
    PointerValue closureVal = <PointerValue>builder.getElementPtr(<PointerValue>foo.getParam(0),
                                                                  [context.constInt("i32", 0),
                                                                   context.constInt("i32", 0)]);
    Value argVal = foo.getParam(1);
    Value retVal = builder.iArithmeticWrap("add", builder.load(closureVal), argVal);
    builder.ret(retVal);

    FunctionDefn main = m.addFunctionDefn("main", {returnType: "i64", paramTypes: []});
    BasicBlock mainBB = main.appendBasicBlock();
    builder.positionAtEnd(mainBB);
    PointerValue nVal = builder.alloca(pointerType(nestedType));
    PointerValue trampoline = builder.alloca(pointerType(arrayType("i8", 10)));
    _ = <()>builder.call(m.getIntrinsicDeclaration("init.trampoline"), [trampoline, foo, nVal]);
    PointerValue fp = <PointerValue>builder.call(m.getIntrinsicDeclaration("adjust.trampoline"), [trampoline]);
    fp = builder.bitCast(fp, pointerType({ returnType: "i64", paramTypes: ["i64"] }));
    builder.ret(builder.call(fp, [context.constInt("i64", 10)]));
    return m;
}

@test:Config {}
function testTrampoline() returns error? {
    return runTest(trampoline, "trampoline.ll");
}
