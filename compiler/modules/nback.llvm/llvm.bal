// The concept here is to have an API that can both
// be implemented simply on top of the LLVM C API
// and can be used to generate .ll format directly.
// In the C API version, distinct classes would have
// private members that are handles referring to the
// C void* values.

import nballerina.err;
import ballerina/io;

// "i64" corresponds to  LLVMInt64Type
// "i8" corresponds to LLVMInt8Type
// "i1" corresponds to LLVMInt1Type
public type IntType "i64"|"i32"|"i8"|"i1";

// Used to constrain parameters that represent an alignment
public type Alignment 1|2|4|8|16;

// Corresponds to LLVMPointerType
public type PointerType readonly & record {|
    Type pointsTo;
|};

public type IntegralType IntType|PointerType;

// Corresponds to LLVMPointerType function
public function pointerType(Type ty, int addressSpace = 0) returns PointerType {
    return { pointsTo: ty };
}

// Corresponds to LLVMArrayType
public type ArrayType readonly & record {|
    Type elementType;
    int elementCount;
|};

public function arrayType(Type ty, int elementCount) returns ArrayType {
    return { elementType: ty, elementCount: elementCount };
}

// Corresponds to llvm::StructType
public type StructType readonly & record {
    Type[] elementTypes;
};

public function structType(Type[] elementTypes) returns StructType {
    return { elementTypes: elementTypes.cloneReadOnly() };
}

function getTypeAtIndex(StructType ty, int index) returns Type {
    return ty.elementTypes[index];
}

public type Type IntType|PointerType|StructType|ArrayType;

// A RetType is valid only as the return type of a function
public type RetType Type|"void";

# Corresponds to llvm::FunctionType class
public type FunctionType readonly & record {|
    RetType returnType;
    Type[] paramTypes;
|};

# Corresponds to LLVMValueRef 
public readonly distinct class Value {
    string operand;
    Type ty;
    function init(Type ty, string operand) {
        self.ty = ty;
        self.operand = operand;
    }
}

# Subtype of Value that refers to a pointer
# Ensures compile-time checking that stores and loads use the right kinds of Value
public readonly class PointerValue {
    *Value;
    string operand;
    PointerType ty;
    function init(PointerType ty, string operand) {
        self.ty = ty;
        self.operand = operand;
    }
}

// Corresponds to LLVMConstInt
// XXX Need to think about SignExtend argument
public function constInt(IntType ty, int val) returns Value {
    return new Value(ty, val.toString());
}

// Corresponds to LLVMConstNull
public function constNull(PointerType ty) returns PointerValue {
    return new PointerValue(ty, "null");
}

// Corresponds to LLVMContextRef
public class Context {
    // Corresponds to LLVMContextCreate
    public function init() {
        
    }

    public function createModule() returns Module {
        return new(self);
    }

    public function  createBuilder() returns Builder {
        return new(self);
    }
}
public type IntegerArithmeticIntrinsicName "sadd.with.overflow.i64"|"ssub.with.overflow.i64"|"smul.with.overflow.i64";
public type GeneralIntrinsicName "ptrmask.p0i8.i64";

public type IntrinsicFunctionName IntegerArithmeticIntrinsicName|GeneralIntrinsicName;

public type TargetTriple string;

# Corresponds to llvm::Module class
public class Module {
    private final map<FunctionDefn|FunctionDecl|PointerValue> globals = {};
    // We have these because we don't rely on order of iteration over map.
    private PointerValue[] globalVariables = [];
    private FunctionDecl[] functionDecls = [];
    private FunctionDefn[] functionDefns = [];

    private final Context context;
    private TargetTriple? target = ();

    function init(Context context) {
        self.context = context;
    }

    // Corresponds to LLVMAddFunction
    public function addFunctionDefn(string name, FunctionType fnType) returns FunctionDefn {
        if name is IntrinsicFunctionName {
            panic error("reserved intrinsic function name");
        }
        if self.globals.hasKey(name) {
            panic error("this module already has a declaration by that name");
        }
        FunctionDefn fn = new (self.context, name, fnType);
        self.globals[name] = fn;
        self.functionDefns.push(fn);
        return fn;
    }

    public function addFunctionDecl(string name, FunctionType fnType) returns FunctionDecl {
        if name is IntrinsicFunctionName {
            panic error("reserved intrinsic function name");
        }
        if self.globals.hasKey(name) {
            panic error("this module already has a declaration by that name");
        }
        FunctionDecl fn = new(self.context, name, fnType);
        self.globals[name] = fn;
        self.functionDecls.push(fn);
        return fn;
    }

    // Corresponds to LLVMSetTarget
    public function setTarget(TargetTriple targetTriple){
        self.target = targetTriple;
    }

    // Corresponds to LLVMGetIntrinsicDeclaration
    public function getIntrinsicDeclaration(IntrinsicFunctionName name) returns FunctionDecl {
        FunctionDecl? fnExisting = <FunctionDecl?>self.globals[name];
        if !(fnExisting is ()) {
            return fnExisting;
        }
        if name is IntegerArithmeticIntrinsicName {
            return self.addIntrinsic(name,
                                     { returnType: structType(["i64", "i1"]), paramTypes: ["i64", "i64"] },
                                     ["nounwind", "readnone", "speculatable", "willreturn"]);

        }
        else if name == "ptrmask.p0i8.i64" {
            return self.addIntrinsic(name,
                                     { returnType: pointerType("i8"), paramTypes: [pointerType("i8"), "i64"] },
                                     ["readnone", "speculatable"]);
        }
        else {
            return err:unreached();
        }
    }

    private function addIntrinsic(IntrinsicFunctionName name, FunctionType fnType, EnumAttribute[] attrs) returns FunctionDecl {
        FunctionDecl fn = new(self.context, "llvm." + name, fnType);
        foreach var attr in attrs {
            fn.addEnumAttribute(attr);
        }
        self.globals[name] = fn;
        self.functionDecls.push(fn);
        return fn;
    }

    // Corresponds to LLVMAddGlobal
    public function addGlobal(Type ty, string name) returns PointerValue {
        if name is IntrinsicFunctionName {
            panic error("reserved intrinsic function name");
        }
        if self.globals.hasKey(name) {
            panic error("this module already has a declaration by that name");
        }
        PointerType ptrType = { pointsTo: ty };
        PointerValue val = new PointerValue(ptrType, "@" + name); 
        self.globals[name] = val;
        self.globalVariables.push(val);
        return val;
    }
 
    // Does not correspond directly any LLVM function
    // XXX can perhaps be turned into a command to compile the module
    public function writeFile(string path) returns io:Error? {
        Output out = new;
        self.output(out);
        return out.writeFile(path);
    }

    public function toString() returns string {
        Output out = new;
        self.output(out);
        return out.toString();
    }

    function output(Output out) {
        if self.target is TargetTriple {
            string[] words = ["target", "triple", "=", "\"", <TargetTriple>self.target, "\""];
            out.push(createLine(words));
        }
        foreach var globalVar in self.globalVariables {
            out.push(createLine([globalVar.operand, "=", "external", "global", typeToString(globalVar.ty.pointsTo)])); 
        }
        foreach var fn in self.functionDecls {
            fn.output(out);
        }
        foreach var fn in self.functionDefns {
            fn.output(out);
        }
    }
}

// Corresponds to LLVMLinkage enum
public type Linkage "internal"|"external";
public type EnumAttribute "noreturn"|"cold"|"nounwind"|"readnone"|"speculatable"|"willreturn"; //FIXME: add others

# Corresponds to an LLVMValueRef that corresponds to an llvm::Function
public type Function FunctionDecl|FunctionDefn;

public class FunctionDecl {
    final false isDefn = false;
    final FunctionType functionType;
    final string functionName;
    final EnumAttribute[] attributes = [];

    function init(Context context, string functionName, FunctionType functionType) {
        self.functionName = functionName;
        self.functionType = functionType;
    }

    function output(Output out) {
        out.push(functionHeader(self));
    }

    public function addEnumAttribute(EnumAttribute attribute) {
        if self.attributes.indexOf(attribute) == () {
           self.attributes.push(attribute); 
        }
    }
}

public class FunctionDefn {
    final true isDefn = true;
    final FunctionType functionType;
    final string functionName;
    final EnumAttribute[] attributes = [];

    private BasicBlock[] basicBlocks = [];
    private map<int> variableNames = {};
    private int unnamedRegisterCount = 0;
    private int labelCount = 0;
    private Value[] paramValues;
    private Linkage linkage = "external";
    private final Context context;

    function init(Context context, string functionName, FunctionType functionType) {
        self.context = context;
        self.functionName = functionName;
        self.functionType = functionType;
        self.paramValues = [];
        foreach var paramType in functionType.paramTypes {
            string register = self.genReg();
            Value arg = new (paramType, register);
            self.paramValues.push(arg);
        }
    }

    // Correspond to LLVMGetParam
    public function getParam(int index) returns Value {
        return self.paramValues[index];
    }

    // Corresponds to LLVMSetLinkage
    // XXX Maybe better done with included record parameter
    public function setLinkage(Linkage linkage) {
        self.linkage = linkage;
    }

    public function getLinkage() returns Linkage {
        return self.linkage;
    }

    function output(Output out) {
        out.push(functionHeader(self));
        self.outputBody(out);
        out.push("}");
    }

    function outputBody(Output out) {
        foreach var b in self.basicBlocks {
            b.output(out);
        }
    }

    // Corresponds to LLVMAppendBasicBlock
    public function appendBasicBlock(string? name=()) returns BasicBlock {
        BasicBlock tem = new (self.context, self.genLabel(), self);
        self.basicBlocks.push(tem);
        return tem;
    }

    function genLabel() returns string {
        string label = "L" + self.labelCount.toString();
        self.labelCount += 1;
        return label;
    }

    function genReg(string? name = ()) returns string {
        string regName = "_" + self.unnamedRegisterCount.toString();
        if name is string {
            regName = name;
        } else {
            self.unnamedRegisterCount += 1;
        }
        if self.variableNames.hasKey(regName) {
            int count = self.variableNames.get(regName);
            self.variableNames[regName] = count + 1; // increment the count of the base name
            string newName = regName + "." + count.toString();
            while self.variableNames.hasKey(newName) {
                count += 1;
                newName = regName + "." + count.toString();
            }
            regName = newName;
            self.variableNames[regName] = 1; // save the augmented name in case user use the same  
        }
        else {
            self.variableNames[regName] = 1;
        }
        string reg = "%" + regName;
        return reg;
    } 

    public function addEnumAttribute(EnumAttribute attribute){
        if self.attributes.indexOf(attribute) == () {
           self.attributes.push(attribute); 
        }
    }
}

// Used with Builder.binaryInt
// Subtype of LLVMOpcode
public type BinaryIntOp BinaryArithmeticOp|BinaryBitwiseOp;
public type BinaryArithmeticOp "add"|"mul"|"sub"|"sdiv"|"srem";
public type BinaryBitwiseOp "xor"|"or"|"and";
// Corresponds to LLVMIntPredicate
public type IntPredicate "eq"|"ne"|"ugt"|"uge"|"ult"|"ule"|"sgt"|"sge"|"slt"|"sle";

# Corresponds to LLVMBuilderRef  
public class Builder {
    private BasicBlock? currentBlock = ();

    // Corresponds to LLVMCreateBuilder
    public function init(Context context) { }

    // Corresponds to LLVMPositionBuilderAtEnd
    public function positionAtEnd(BasicBlock block) {
        self.currentBlock = block;
    }

    // Corresponds to LLVMBuildAlloca
    public function alloca(IntegralType ty, Alignment? align = (), string? name=()) returns PointerValue {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg(name);
        PointerType ptrTy = { pointsTo: ty };
        addInsnWithAlign(bb, [reg, "=", "alloca", typeToString(ty)], align);
        return new PointerValue(ptrTy, reg);
    }

    // Corresponds to LLVMBuildLoad
    public function load(PointerValue ptr, Alignment? align = (), string? name=()) returns Value {
        BasicBlock bb = self.bb();
        Type ty = ptr.ty.pointsTo;
        string reg = bb.func.genReg();
        addInsnWithAlign(bb, [reg, "=", "load", typeToString(ty), ",", typeToString(ptr.ty), ptr.operand], align);
        return new Value(ty, reg);
    }

    // Corresponds to LLVMBuildStore
    public function store(Value val, PointerValue ptr, Alignment? align = ()) {
        Type ty = ptr.ty.pointsTo;
        if ty != val.ty {
            panic error("store type mismatch: " + typeToString(val.ty) + ", " + typeToString(ptr.ty));
        }
        addInsnWithAlign(self.bb(), ["store", typeToString(ty), val.operand, ",", typeToString(ptr.ty), ptr.operand], align);
    }

    // binary operation with int operands and (same) int result
    // Corresponds to LLVMBuild{Add,Mul,Sub,SDiv,SRem}
    public function binaryInt(BinaryIntOp op, Value lhs, Value rhs, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        IntType ty = sameIntType(lhs, rhs);
        bb.addInsn(reg, "=", op, ty, lhs.operand, ",", rhs.operand);
        return new Value(ty, reg);
    }

    // Corresponds to LLVMBuildICmp
    public function iCmp(IntPredicate op, Value lhs, Value rhs, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        IntegralType ty = sameIntegralType(lhs, rhs);
        bb.addInsn(reg, "=", "icmp", op, typeToString(ty), lhs.operand, ",", rhs.operand);
        return new Value("i1", reg);
    }

    // Corresponds to LLVMBuildBitCast
    public function bitCast(PointerValue val, PointerType destTy) returns PointerValue {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "bitcast", typeToString(val.ty), val.operand, "to", typeToString(destTy));
        return new (destTy, reg);
    }
    
    // Corresponds to LLVMBuildRet/LLVMBuildRetVoid
    // value of () represents void return value
    public function ret(Value? value = ()) {
        BasicBlock bb = self.bb();
        if value is () {
            bb.addInsn("ret", "void");
        }
        else {
            bb.addInsn("ret", typeToString(value.ty), value.operand);
        }
    }

    // Corresponds to LLVMBuildPtrToInt
    public function ptrToInt(PointerValue ptr, IntType destTy, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "ptrtoint", typeToString(ptr.ty), ptr.operand, "to", typeToString(destTy));
        return new Value(destTy, reg);
    }

    // Corresponds to LLVMBuildZExt
    public function zExt(Value val, IntType destTy, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "zext", typeToString(val.ty), val.operand, "to", typeToString(destTy));
        return new Value(destTy, reg);
    }

    // Corresponds to LLVMBuildSExt
    public function sExt(Value val, IntType destTy, string? name=()) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "sext", typeToString(val.ty), val.operand, "to", typeToString(destTy));
        return  new Value(destTy, reg);
    }

    // Corresponds to LLVMBuildTrunc
    public function trunc(Value val, IntType destinationType, string? name = ()) returns Value {
        if val.ty is IntType {
            if val.ty == destinationType {
                panic error("Equal sized types are not allowed");
            }
            BasicBlock bb = self.bb();
            string reg = bb.func.genReg();
            bb.addInsn(reg, "=", "trunc", typeToString(val.ty), val.operand, "to", typeToString(destinationType));
            return new Value(destinationType, reg);
        } 
        else {
            panic error("Value must be an integer type");
        }
    }

    public function unreachable() {
        BasicBlock bb = self.bb();
        bb.addInsn("unreachable");
    }
      
    // Corresponds to LLVMBuildCall
    // Returns () if there is no result i.e. function return type is void
    public function call(Function fn, Value[] args, string? name=()) returns Value? {
        if fn.functionType.paramTypes.length() != args.length() {
            panic error(string `Number of arguments is invalid for function ${fn.functionName}`);
        }
        BasicBlock bb = self.bb();
        string reg = "";
        string[] insnWords = [];
        RetType retType = fn.functionType.returnType;
        if retType != "void" {
            reg = bb.func.genReg();
            insnWords.push(reg);
            insnWords.push("=");
        }
        insnWords.push("call");
        insnWords.push(typeToString(retType));
        insnWords.push("@" + fn.functionName);
        insnWords.push("(");
        foreach int i in 0 ..< args.length() {
            final Value arg = args[i];
            if i > 0 {
                insnWords.push(",");
            }
            insnWords.push(typeToString(arg.ty));
            insnWords.push(arg.operand);
        }
        insnWords.push(")");
        bb.addInsn(...insnWords);
        if retType != "void" {
            return new Value(retType, reg);
        }
    }

    // Corresponds to LLVMBuildExtractValue
    public function extractValue(Value value, int index, string? name=()) returns Value {
        if value.ty is StructType {
            BasicBlock bb = self.bb();
            string reg = bb.func.genReg();
            bb.addInsn(reg, "=", "extractvalue", typeToString(value.ty), value.operand, ",", index.toString());
            Type elementType = getTypeAtIndex(<StructType>value.ty, index);
            return new Value(elementType, reg);
        }
        else {
            panic error("Extract value from non aggregate data type");
        }
    }

    // Corresponds to LLVMBuildBr
    public function br(BasicBlock destination) {
        BasicBlock bb = self.bb();
        bb.addInsn("br", "label", destination.ref());
    }

    // Corresponds to LLVMBuildCondBr
    public function condBr(Value condition, BasicBlock ifTrue, BasicBlock ifFalse) {
        if condition.ty is "i1" {
            BasicBlock bb = self.bb();
            bb.addInsn("br", "i1", condition.operand, ",", "label", ifTrue.ref(), ",", "label", ifFalse.ref());
        }
        else {
            panic error("Condition must be a u1");
        }
    }

    // Corresponds to LLVMBuildGEP
    public function getElementPtr(PointerValue ptr, Value[] indices, "inbounds"? inbounds = (), string? name = ()) returns PointerValue {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        string[] insWords = [];
        insWords.push(reg, "=", "getelementptr");
        if inbounds != () {
            insWords.push(inbounds);
        } 
        insWords.push(typeToString(ptr.ty.pointsTo), ",", typeToString(ptr.ty), ptr.operand);
        Type resultType = ptr.ty;
        foreach var index in indices {
            insWords.push(",");
            insWords.push(typeToString(index.ty));
            insWords.push(index.operand);
            if resultType is PointerType {
                resultType = resultType.pointsTo;
            } else {
                if resultType is ArrayType {
                    resultType = resultType.elementType;
                } else if resultType is StructType {
                    int|error i = int:fromString(index.operand);
                    if i is error || index.ty != "i32" {
                        panic error("Structures can be index only using i32 constants"); 
                    } else {
                        resultType = getTypeAtIndex(resultType, i);
                    }
                } else {
                    panic error(string `Type  ${typeToString(resultType)} can't be indexed`);
                }
            }
        }
        bb.addInsn(...insWords);
        PointerType resultPtrType = pointerType(resultType);
        return new PointerValue(resultPtrType, reg);
    }

    private function bb() returns BasicBlock {
        BasicBlock? tem = self.currentBlock;
        if tem is () {
            panic error("no current basic block");
        }
        else {
            return tem;
        }
    }
}

function addInsnWithAlign(BasicBlock bb, string[] words, Alignment? align) {
    if !(align is ()) {
        words.push(",", "align", align.toString());
    }
    bb.addInsn(...words);
}

const INDENT = "  ";

# Corresponds to LLVMBasicBlockRef
public distinct class BasicBlock {
    final FunctionDefn func;
    private final string label;
    private final string[] lines = [];
    private boolean isReferenced = false;

    function init(Context context, string label, FunctionDefn func) {
        self.label = label;
        self.func = func;
    }

    function ref() returns string {
        self.isReferenced = true;
        return "%" + self.label;
    }

    function addInsn(string... words) {
        self.lines.push(createLine(words, INDENT));
    }

    function output(Output out) {
        // This ensures we leave out the label in two cases
        // 1. the first block (provided it is not referenced)
        // 2. basic blocks that were in BIR but are unreferenced (and empty) in LL
        //    (happens at the moment for blocks starting with `catch`)
        if self.isReferenced {
            out.push(self.label + ":");
        }
        foreach var line in self.lines {
            out.push(line);
        }
    }
}

function sameIntegralType(Value v1, Value v2) returns IntegralType {
    Type ty1 = v1.ty;
    Type ty2 = v2.ty;
    if ty1 != ty2 {
        panic error("expected same types");
    }
    else if ty1 is IntegralType {
        return ty1;
    }
    panic error("expected an integral type");
}

function sameIntType(Value v1, Value v2) returns IntType {
    Type ty1 = v1.ty;
    Type ty2 = v2.ty;
    if ty1 != ty2 {
        panic error("expected same types");
    }
    else if ty1 is IntType {
        return ty1;
    }
    panic error("expected an int type");
}

function typeToString(RetType ty) returns string {
    string typeTag;
    if ty is PointerType {
        typeTag = typeToString(ty.pointsTo) + "*";
    }
    else if ty is StructType {
        string[] typeStringBody = [];
        typeStringBody.push("{");
        foreach int i in 0 ..< ty.elementTypes.length() {
            final Type elementType = ty.elementTypes[i];
            if i > 0 {
                typeStringBody.push(",");
            }
            typeStringBody.push(typeToString(elementType));
        }
        typeStringBody.push("}");
        typeTag = createLine(typeStringBody, "");
    }
    else if ty is ArrayType {
        string[] typeStringBody = [];
        typeStringBody.push("[");
        typeStringBody.push(ty.elementCount.toString());
        typeStringBody.push("x");
        typeStringBody.push(typeToString(ty.elementType));
        typeStringBody.push("]");
        typeTag = createLine(typeStringBody, "");
    }
    else {
        typeTag = ty;
    }
    return typeTag;
}

class Output {
    final string[] lines = [];

    function push(string line) {
        self.lines.push(line);
    }

    function writeFile(string path) returns io:Error? {
        return io:fileWriteLines(path, self.lines);
    }

    function toString() returns string {
        return "\n".'join(...self.lines);
    }
}


function functionHeader(Function fn) returns string {
    string[] words = [];
    if fn is FunctionDefn {
        words.push("define");
        if fn.getLinkage() != "external" {
            words.push(fn.getLinkage());
        }
    }
    else {
        words.push("declare");
    }
    words.push(typeToString(fn.functionType.returnType));
    words.push("@" + fn.functionName);
    words.push("(");
    foreach int i in 0 ..< fn.functionType.paramTypes.length() {
        final Type ty = fn.functionType.paramTypes[i];
        if i > 0 {
            words.push(",");
        }
        words.push(typeToString(ty));
        if fn is FunctionDefn {
            words.push(fn.getParam(i).operand);
        }
    }
    words.push(")");
    foreach int i in 0 ..< fn.attributes.length() {
        words.push(fn.attributes[i]);
    }
    if fn is FunctionDefn {
        words.push("{");
    }
    return createLine(words);
}

function createLine(string[] words, string indent = "") returns string {
    string[] parts = [];
    foreach string word in words {
        if !omitSpaceBefore(word) && parts.length() > 0 && !omitSpaceAfter(parts[parts.length() - 1]) {
            parts.push(" ");
        }
        parts.push(word);
    }
    return string:concat(indent, ...parts);
}

function omitSpaceBefore(string word) returns boolean {
    return word == "," || word == ")" || word == "}" || word == "\"" || word == "]";
}

function omitSpaceAfter(string word) returns boolean {
    return word == "(" || word == "{" || word == "\"" || word == "[";
}
