// #include "../binaryen/src/binaryen-c.h"
#include <binaryen-c.h>


// "hello world" type example: create a function that adds two i32s and returns
// the result

int main() {
  BinaryenModuleRef module = BinaryenModuleCreate();

   BinaryenAddFunctionImport(
    module, "println", "console", "log", BinaryenTypeInt32(),BinaryenTypeNone());



  // Get the arguement b
  BinaryenExpressionRef b = BinaryenLocalGet(module, 0, BinaryenTypeInt32());

  // Then call (b == true)
  BinaryenExpressionRef thencallOperands[] = {BinaryenConst(module, BinaryenLiteralInt32(1))};
  BinaryenExpressionRef thenCall  = BinaryenCall(module,"println",thencallOperands,1,BinaryenTypeNone());

  // Else call (b == false)
  BinaryenExpressionRef elsecallOperands[] = {BinaryenConst(module, BinaryenLiteralInt32(0))};
  BinaryenExpressionRef elseCall = BinaryenCall(module,"println",elsecallOperands,1,BinaryenTypeNone());

  
  // second block: else block
  // (br_if)
  // (console.log(0))
  // (br first)
  BinaryenExpressionRef br_if =  BinaryenBreak(module,"second",b,NULL);

  BinaryenExpressionRef br =  BinaryenBreak(module,"first",NULL,NULL);

  BinaryenExpressionRef secondBody[] = {br_if,elseCall,br};

  BinaryenExpressionRef secondBlock = BinaryenBlock(module,"second",secondBody,3, BinaryenTypeAuto());

  //first block: then condition
  // (second block)
  // (console.log(1))
  BinaryenExpressionRef firstBody[] = {secondBlock, thenCall};
  BinaryenExpressionRef firstBlock = BinaryenBlock(module,"first",firstBody,2, BinaryenTypeAuto());


  BinaryenFunctionRef printBoolean = BinaryenAddFunction(
    module, "printBoolean", BinaryenTypeInt32(), BinaryenTypeNone(), NULL, 0, firstBlock);


  BinaryenAddFunctionExport(module, "printBoolean", "printBoolean");

  // Print it out
  BinaryenModulePrint(module);

  // Clean up the module, which owns all the objects we created above
  BinaryenModuleDispose(module);

  return 0;
}
