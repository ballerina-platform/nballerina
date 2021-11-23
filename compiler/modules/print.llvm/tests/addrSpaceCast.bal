import ballerina/test;

function addrSpaceCast() returns Module {
    Context context = new;
    Builder builder = context.createBuilder();
    Module m = context.createModule();
    FunctionDecl genFn = m.addFunctionDecl("genFn", {returnType: pointerType("i64", 3), paramTypes:[]});
    PointerType pty0 = pointerType("i64", 0);
    PointerType _ = pointerType("i64", 1);
    FunctionDefn mainFunction = m.addFunctionDefn("main", {returnType: pty0, paramTypes: []});
    BasicBlock initBlock = mainFunction.appendBasicBlock();
    builder.positionAtEnd(initBlock);
    Value? val = builder.call(genFn, []);
    if val is Value {
	    Value retVal = builder.addrSpaceCast(<PointerValue>val, pty0);
        builder.ret(retVal);
    }
    return m;
}

@test:Config {}
function testAddrSpaceCast() returns error? {
    return runTest(addrSpaceCast, "addr_space_cast.ll");
}
