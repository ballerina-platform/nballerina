import ballerina/test
@test:Config {}

public function printBoolean() returns error? {
    Module module = new;
    Type[] localTypes = ["i32"];
    module.addFunctionImport("println", "console", "log", "i32", "None");
    Expression b = module.localGet(0, "i32");
    Expression[] thenCallOperands = [module.addConst({ i32: 1 })];
    Expression thenCall = module.call("println", thenCallOperands, 1, "None");
    Expression[] elseCallOperands = [module.addConst({ i32: 0 })];
    Expression elseCall = module.call("println", elseCallOperands, 1, "None");
    Relooper relooper = new(module);
    Block bb0 = relooper.addBlock(module.nop());
    Block bb1 = relooper.addBlock(thenCall);
    Block bb2 = relooper.addBlock(elseCall);
    Block bb3 = relooper.addBlock(module.addReturn());
    relooper.addBranch(bb1, bb3);
    relooper.addBranch(bb2, bb3);
    relooper.addBranch(bb0, bb2, b);
    relooper.addBranch(bb0, bb1);
    Expression body = relooper.render(bb0, 0);
    module.addFunction("printBoolean", localTypes, "None", [], 0, body);
    module.addFunctionExport("printBoolean", "printBoolean");
    module.finish();
}
