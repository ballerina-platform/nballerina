#include "binaryen-c.h"

// "hello world" type example: create a function that adds two i32s and returns
// the result

BinaryenExpressionRef makeDroppedInt32(BinaryenModuleRef module, int x) {
  return BinaryenDrop(module, BinaryenConst(module, BinaryenLiteralInt32(x)));
}

int main() {
    BinaryenModuleRef module = BinaryenModuleCreate();

    BinaryenType localTypes[] = {BinaryenTypeInt32()};

    BinaryenAddFunctionImport(module, "println", "console", "log", BinaryenTypeInt32(),BinaryenTypeNone());


    // Get the arguement b
    BinaryenExpressionRef b = BinaryenLocalGet(module, 0, BinaryenTypeInt32());

    // Then call (b == true)
    BinaryenExpressionRef thencallOperands[] = {BinaryenConst(module, BinaryenLiteralInt32(1))};
    BinaryenExpressionRef thenCall  = BinaryenCall(module,"println",thencallOperands,1,BinaryenTypeNone());

    // Else call (b == false)
    BinaryenExpressionRef elsecallOperands[] = {BinaryenConst(module, BinaryenLiteralInt32(0))};
    BinaryenExpressionRef elseCall = BinaryenCall(module,"println",elsecallOperands,1,BinaryenTypeNone());

  
    RelooperRef relooper = RelooperCreate(module);
    RelooperBlockRef bb0 = RelooperAddBlock(relooper, BinaryenNop(module));
    RelooperBlockRef bb1 = RelooperAddBlock(relooper, thenCall);
    RelooperBlockRef bb2 = RelooperAddBlock(relooper, elseCall);
    RelooperBlockRef bb3 = RelooperAddBlock(relooper, BinaryenReturn(module,NULL));
    RelooperAddBranch(bb1, bb3, NULL, NULL);
    RelooperAddBranch(bb2, bb3, NULL, NULL);
    RelooperAddBranch(bb0, bb2, b, NULL);
    RelooperAddBranch(bb0, bb1, NULL, NULL);
    BinaryenExpressionRef body = RelooperRenderAndDispose(relooper, bb0, 0);
    
    BinaryenFunctionRef printBoolean = BinaryenAddFunction(module, "printBoolean", BinaryenTypeInt32(), BinaryenTypeNone(), NULL, 0, body);


    BinaryenAddFunctionExport(module, "printBoolean", "printBoolean");

    // Print it out
    BinaryenModulePrint(module);

    // Clean up the module, which owns all the objects we created above
    BinaryenModuleDispose(module);
  

    return 0;
}
