import ballerina/test;

function testLLVMOverflowArithmeticFunctionType(FunctionType fType){
        StructType overflowArithmeticReturnType = structType(["i64", "i1"]);
        FunctionType overflowArithmeticFunctionType = {returnType: overflowArithmeticReturnType, paramTypes: ["i64", "i64"]};
	test:assertEquals(fType, overflowArithmeticFunctionType);
}

@test:Config{}
function testAddIntrinsic() {
	Module m = new();
	FunctionDecl f = m.getIntrinsicDeclaration("sadd.with.overflow.i64");
	testLLVMOverflowArithmeticFunctionType(f.functionType);
	test:assertEquals(f.functionName, "llvm.sadd.with.overflow.i64");
}

@test:Config{}
function testSubIntrinsic() {
	Module m = new();
	FunctionDecl f = m.getIntrinsicDeclaration("ssub.with.overflow.i64");
	testLLVMOverflowArithmeticFunctionType(f.functionType);
	test:assertEquals(f.functionName, "llvm.ssub.with.overflow.i64");
}

@test:Config{}
function testMulIntrinsic() {
	Module m = new();
	FunctionDecl f = m.getIntrinsicDeclaration("smul.with.overflow.i64");
	testLLVMOverflowArithmeticFunctionType(f.functionType);
	test:assertEquals(f.functionName, "llvm.smul.with.overflow.i64");
}
