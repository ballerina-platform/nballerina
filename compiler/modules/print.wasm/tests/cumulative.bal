import ballerina/test;
@test:Config {}

public function cumulative() returns string[] {
    Module module = new;
    Type[] params = ["i32"];
    Type[] localTypes = ["i32", "i32"];
    module.addFunctionImport("println", "console", "log", params, "None");
    Expression x = module.localGet(0, "i32");
    Expression i = module.localGet(1, "i32");
    Expression sum = module.localGet(2, "i32");
    Expression cond = module.binary("GtSInt32", x, i);
    Expression setI = module.localSet(1, module.addConst({ i32: 0 }));
    Expression setSum = module.localSet(2, module.addConst({ i32: 0 }));
    Expression bb0Body = module.block((), [setI, setSum], 2, "None");
    Expression addSum = module.localSet(2, module.binary("AddInt32", sum, i));
    Expression addI = module.localSet(1, module.binary("AddInt32", i, module.addConst({ i32: 1 })));
    Expression bb2Body = module.block((), [addSum, addI], 2, "None");
    Expression call = module.call("println", [sum], 1, "None");
    Expression bb3Body = module.block((), [call, module.addReturn()], 2, "None");
    Relooper relooper = new(module);
    Block bb0 = relooper.addBlock(bb0Body);
    Block bb1 = relooper.addBlock(module.nop());
    Block bb2 = relooper.addBlock(bb2Body);
    Block bb3 = relooper.addBlock(bb3Body);
    relooper.addBranch(bb0, bb1);
    relooper.addBranch(bb1, bb2, cond);
    relooper.addBranch(bb1, bb3);
    relooper.addBranch(bb2, bb1);
    Expression body = relooper.render(bb0, 0);
    module.addFunction("sum", params, "None", localTypes, 2, body);
    module.addFunctionExport("sum", "sum");
    return module.finish();
}
