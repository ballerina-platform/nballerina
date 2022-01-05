int main() {
    BinaryenModule module = new;

    BinaryenType[] localTypes = [makeTypeInt32()];

    module.addFunctionImport("println", "console", "log", makeTypeInt32(), makeTypeNone());


    // Get the arguement b
    BinaryenExpression b = module.localGet(0, makeTypeInt32());

    // Then call (b == true)
    BinaryenExpression[] thencallOperands = [makeConst(makeLiteralInt32(1))];
    BinaryenCall thenCall  = new("println",thencallOperands,1,makeTypeNone());

    // Else call (b == false)
    BinaryenExpression[] elsecallOperands = [makeConst(makeLiteralInt32(0))];
    BinaryenCall elseCall = new("println",elsecallOperands,1,makeTypeNone());

  
    Relooper relooper = new(module);
    RelooperBlock bb0 = relooper.addBlock(makeNop());
    RelooperBlock bb1 = relooper.addBlock(thenCall);
    RelooperBlock bb2 = relooper.addBlock(elseCall);
    RelooperBlock bb3 = relooper.addBlock(makeReturn(NULL));


    relooper.addBranch(bb1, bb3, NULL, NULL);
    relooper.addBranch(bb2, bb3, NULL, NULL);
    relooper.addBranch(bb0, bb2, b, NULL);
    relooper.addBranch(bb0, bb1, NULL, NULL);

    BinaryenExpression body = relooper.renderAndDispose(bb0, 0);
    
    module.addFunction("printBoolean", makeTypeInt32(), makeTypeNone(), NULL, 0, body);
    module.addFunctionExport("printBoolean", "printBoolean");

    // Print it out
    module.print();

    // Clean up the module, which owns all the objects we created above
    module.dispose();
  

    return 0;
}