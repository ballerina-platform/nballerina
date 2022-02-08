import ballerina/test;
@test:Config {}

public function printXOR() returns string[] {
    Module module = new;
    Type[] params = ["i32", "i32"];
    module.addFunctionImport("println", "console", "log", ["i32"], "None");
    Expression x = module.localGet(0, "i32");
    Expression y = module.localGet(1, "i32");
    Expression[] thenCallOperands = [module.addConst({ i32: 1 })];
    Expression thenCall = module.call("println", thenCallOperands, 1, "None");
    Expression[] elseCallOperands = [module.addConst({ i32: 0 })];
    Expression elseCall = module.call("println", elseCallOperands, 1, "None");
    Relooper relooper = new(module);
    Block bb0 = relooper.addBlock(module.nop());
    Block bb1 = relooper.addBlock(module.nop());
    Block bb2 = relooper.addBlock(elseCall);
    Block bb3 = relooper.addBlock(thenCall);
    Block bb4 = relooper.addBlock(module.nop());
    Block bb5 = relooper.addBlock(module.nop());
    Block bb6 = relooper.addBlock(thenCall);
    Block bb7 = relooper.addBlock(elseCall);
    Block bb8 = relooper.addBlock(module.nop());
    Block bb9 = relooper.addBlock(module.addReturn());
    relooper.addBranch(bb0, bb1, x);
    relooper.addBranch(bb0, bb5);
    relooper.addBranch(bb1, bb2, y);
    relooper.addBranch(bb1, bb3);
    relooper.addBranch(bb2, bb4);
    relooper.addBranch(bb3, bb4);
    relooper.addBranch(bb4, bb9);
    relooper.addBranch(bb5, bb6, y);
    relooper.addBranch(bb5, bb7);
    relooper.addBranch(bb6, bb8);
    relooper.addBranch(bb7, bb8);
    relooper.addBranch(bb8, bb9);
    Expression body = relooper.render(bb0, 0);
    module.addFunction("printXOR", params, "None", [], 2, body);
    module.addFunctionExport("printXOR", "printXOR");
    return module.finish();
}
