import ballerina/test;
@test:Config {}

public function whileIf() returns string[] {
    Module module = new;
    Type[] params = ["i32"];
    Type[] localTypes = ["i32", "i32"];
    module.addFunctionImport("println", "console", "log", ["i32"], "None");
    Expression x = module.localGet(0, "i32");
    Expression i = module.localGet(1, "i32");
    Expression sum = module.localGet(2, "i32");
    Expression cond = module.binary("GtSInt32", x, i);
    Expression setI = module.localSet(1, module.addConst({ i32: 0 }));
    Expression setSum = module.localSet(2, module.addConst({ i32: 0 }));
    Expression bb0Body = module.block((), [setI, setSum], 2, "None");
    Expression cond2 = module.binary("RemSInt32", i, module.addConst({ i32: 2 }));
    Expression block4 = module.localSet(2, module.binary("AddInt32", sum, module.binary("MulInt32", i, module.addConst({ i32: 2 }))));
    Expression block5 = module.localSet(2, module.binary("AddInt32", sum, i));
    Expression block6 = module.localSet(1, module.binary("AddInt32", i, module.addConst({ i32: 1 })));
    Expression call = module.call("println", [sum], 1, "None");
    Expression bb3Body = module.block((), [call, module.addReturn()], 2, "None");
    Relooper relooper = new(module);
    Block bb0 = relooper.addBlock(bb0Body);
    Block bb1 = relooper.addBlock(module.nop());
    Block bb2 = relooper.addBlock(module.nop());
    Block bb3 = relooper.addBlock(bb3Body);
    Block bb4 = relooper.addBlock(block4);
    Block bb5 = relooper.addBlock(block5);
    Block bb6 = relooper.addBlock(block6);
    relooper.addBranch(bb0, bb1);
    relooper.addBranch(bb1, bb2, cond);
    relooper.addBranch(bb1, bb3);
    relooper.addBranch(bb2, bb4, cond2);
    relooper.addBranch(bb2, bb5);
    relooper.addBranch(bb4, bb6);
    relooper.addBranch(bb5, bb6);
    relooper.addBranch(bb6, bb1);
    Expression body = relooper.render(bb0, 0);
    module.addFunction("sum", params, "None", localTypes, 2, body);
    module.addFunctionExport("sum", "sum");
    return module.finish();
}

