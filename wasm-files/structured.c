// #include "../binaryen/src/binaryen-c.h"
#include <binaryen-c.h>


// "hello world" type example: create a function that adds two i32s and returns
// the result

int main() {
  BinaryenModuleRef module = BinaryenModuleCreate();

   BinaryenAddFunctionImport(
    module, "println", "console", "log", BinaryenTypeInt32(),BinaryenTypeNone());

  BinaryenExpressionRef callOperands1[] = {BinaryenConst(module, BinaryenLiteralInt32(0))};
  BinaryenExpressionRef callOperands2[] = {BinaryenConst(module, BinaryenLiteralInt32(1))};


  // Get the 0 and 1 arguments, and add them
  BinaryenExpressionRef b = BinaryenLocalGet(module, 0, BinaryenTypeInt32());

  BinaryenExpressionRef temp1 = BinaryenCall(module,"println",callOperands1,1,BinaryenTypeNone());

  BinaryenExpressionRef temp2  = BinaryenCall(module,"println",callOperands2,1,BinaryenTypeNone());


  BinaryenExpressionRef condition = BinaryenIf(module, b, temp1, temp2);

  // BinaryenExpressionRef bodyList[] = {condition};
  // BinaryenExpressionRef body =
  //   BinaryenBlock(module, "the-body", bodyList, 1, BinaryenTypeAuto());


  BinaryenFunctionRef printBoolean = BinaryenAddFunction(
    module, "printBoolean", BinaryenTypeInt32(), BinaryenTypeNone(), NULL, 0, condition);


  BinaryenAddFunctionExport(module, "printBoolean", "printBoolean");

// BinaryenIf
  // Create the add function
  // Note: no additional local variables
  // Note: no basic blocks here, we are an AST. The function body is just an
  // expression node.

  // Print it out
  BinaryenModulePrint(module);

  // Clean up the module, which owns all the objects we created above
  BinaryenModuleDispose(module);

  return 0;
}
