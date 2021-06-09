// The concept here is to have an API that can both
// be implemented simply on top of the LLVM C API
// and can be used to generate .ll format directly.
// In the C API version, distinct classes would have
// private members that are handles referring to the
// C void* values.

import nballerina.err;
import ballerina/io;

// "i64" corresponds to  LLVMInt64Type
// "i1" corresponds to LLVMInt1Type
public type IntType "i64"|"i1";

// Used to constrain parameters that represent an alignment
public type Alignment 1|2|4|8|16;

// Corresponds to LLVMPointerType
// XXX how is alignment dealt with in the C API?
public type PointerType readonly & record {|
    IntType pointsTo;
    Alignment align;
|};

// Corresponds to llvm::StructType
public type StructType readonly & record {
    IntType[] memberTypes;
};

public function structType(IntType[] memberTypes) returns StructType {
    return {memberTypes: memberTypes.cloneReadOnly()};
}

function getTypeAtIndex(StructType ty, int index) returns IntType {
    return ty.memberTypes[index];
}

public type Type IntType|PointerType|StructType;

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

// Corresponds to LLVMConstInst
// XXX Need to think about SignExtend argument
public function constInt(IntType ty, int val) returns Value {
    return new Value(ty, val.toString());
}
public type IntrinsicFunctionName "sadd.with.overflow.i64"|"ssub.with.overflow.i64"|"smul.with.overflow.i64";

# Corresponds to llvm::Module class
public class Module {
    private final FunctionDefn[] functions = [];
    private final map<FunctionDecl> functionDecls = {};

    public function init() {
    }

    // Corresponds to LLVMAddFunction
    public function addFunction(string name, FunctionType fnType) returns FunctionDefn {
        FunctionDefn fn = new FunctionDefn(name, fnType);
        self.functions.push(fn);
        return fn;
    }

    // Corresponds to LLVMGetIntrinsicDeclaration
    public function getIntrinsicDeclaration(IntrinsicFunctionName name) returns FunctionDecl {
        if self.functionDecls.hasKey(name) {
            return self.functionDecls.get(name);
        }
        StructType overflowArithmeticReturnType = structType(["i64", "i1"]);
        FunctionType overflowArithmeticFunctionType = {returnType: overflowArithmeticReturnType, paramTypes: ["i64", "i64"]};
        FunctionDecl? fn = ();
        match name {
            "sadd.with.overflow.i64" => {
                fn = new ("llvm.sadd.with.overflow.i64", overflowArithmeticFunctionType);
            }
            "ssub.with.overflow.i64" => {
                fn = new ("llvm.ssub.with.overflow.i64", overflowArithmeticFunctionType);
            }
            "smul.with.overflow.i64" => {
                fn = new ("llvm.smul.with.overflow.i64", overflowArithmeticFunctionType);
            }
        }
        if fn is FunctionDecl {
            self.functionDecls[name] = fn;
            return fn;
        } else {
            return err:unreached();
        }
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
        foreach var decl in self.functionDecls {
            decl.output(out);
        }
        foreach var f in self.functions {
            f.output(out);
        }
    }

}

// Corresponds to LLVMLinkage enum
public type Linkage "internal"|"external";

# Corresponds to an LLVMValueRef that corresponds to an llvm::Function
public type Function FunctionDecl|FunctionDefn;

public class FunctionDecl {
    final false isDefn = false;
    final FunctionType functionType;
    final string functionName;

    function init(string functionName, FunctionType functionType) {
        self.functionName = functionName;
        self.functionType = functionType;
    }

    function output(Output out) {
        string[] words = [];
        words.push("declare");
        words.push(typeToString(self.functionType.returnType));
        words.push("@" + self.functionName);
        words.push("(");
        foreach int i in 0 ..< self.functionType.paramTypes.length() {
            final Type ty = self.functionType.paramTypes[i];
            if i > 0 {
                words.push(",");
            }
            words.push(typeToString(ty));
        }
        words.push(")");
        out.push(createLine(words));
    }
}

public class FunctionDefn {
    final true isDefn = true;
    final FunctionType functionType;
    final string functionName;

    private BasicBlock[] basicBlocks = [];
    private int varCount = 0;
    private int labelCount = 0;
    private Value[] paramValues;
    private Linkage linkage = "external";

    function init(string functionName, FunctionType functionType) {
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

    function output(Output out) {
        out.push(self.header());
        self.outputBody(out);
        out.push("}");
    }

    function header() returns string {
        string[] words = [];
        words.push("define");
        if self.linkage != "external" {
            words.push(self.linkage);
        }
        words.push(typeToString(self.functionType.returnType));
        words.push("@" + self.functionName);
        words.push("(");
        foreach int i in 0 ..< self.paramValues.length() {
            final Value param = self.paramValues[i];
            if i > 0 {
                words.push(",");
            }
            words.push(typeToString(param.ty));
            words.push(param.operand);
        }
        words.push(")");
        words.push("{");
        return createLine(words);
    }

    function outputBody(Output out) {
        foreach var b in self.basicBlocks {
            b.output(out);
        }
    }

    // Corresponds to LLVMAppendBasicBlock
    public function appendBasicBlock() returns BasicBlock {
        BasicBlock tem = new BasicBlock(self.genLabel(), self);
        self.basicBlocks.push(tem);
        return tem;
    }

    function genLabel() returns string {
        string label = "L" + self.labelCount.toString();
        self.labelCount += 1;
        return label;
    }

    function genReg() returns string {
        string reg = "%" + "R" + self.varCount.toString();
        self.varCount += 1;
        return reg;
    } 
}

// Used with Builder.binaryInt
// XXX not a good name: maybe BinaryIntOp
// Subtype of LLVMOpcode
public type BinaryInsn "add"|"mul"|"sub"|"sdiv"|"srem";

# Corresponds to LLVMBuilderRef  
public class Builder {
    private BasicBlock? currentBlock = ();

    // Corresponds to LLVMCreateBuilder
    public function init() { }

    // Corresponds to LLVMPositionBuilderAtEnd
    public function positionAtEnd(BasicBlock block) {
        self.currentBlock = block;
    }

    // Corresponds to LLVMBuildAlloca
    public function alloca(IntType ty, Alignment align) returns PointerValue {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        PointerType ptrTy = { pointsTo: ty, align };
        bb.addInsn(reg, "=", "alloca", ty, ",", "align", align.toString());
        return new PointerValue(ptrTy, reg);
    }

    // Corresponds to LLVMBuildLoad
    public function load(PointerValue ptr) returns Value {
        BasicBlock bb = self.bb();
        IntType ty = ptr.ty.pointsTo;
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "load", ty, ",", pointerTo(ty), ptr.operand, ",", "align", ptr.ty.align.toString());
        return new Value(ty, reg);
    }

    // Corresponds to LLVMBuildStore
    public function store(Value val, PointerValue ptr) {
        IntType ty = ptr.ty.pointsTo;
        if ty != val.ty {
            panic error("store type mismatch");
        }
        self.bb().addInsn("store", ty, val.operand, ",", pointerTo(ty), ptr.operand, ",", "align", ptr.ty.align.toString());
    }

    // binary operation with int operands and (same) int result
    // Corresponds to LLVMBuild{Add,Mul,Sub,SDiv,SRem}
    public function binaryInt(BinaryInsn insn, Value lhs, Value rhs) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        IntType ty = sameIntType(lhs, rhs);
        bb.addInsn(reg, "=", insn, ty, lhs.operand, ",", rhs.operand);
        return new Value(ty, reg);
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

    // Corresponds to LLVMBuildCall
    // Returns () if there is no result i.e. function return type is void
    public function call(Function fn, Value[] args) returns Value? {
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
    public function extractValue(Value value, int index) returns Value {
        if value.ty is StructType {
            BasicBlock bb = self.bb();
            string reg = bb.func.genReg();
            bb.addInsn(reg, "=", "extractvalue", typeToString(value.ty), value.operand, ",", index.toString());
            Type elementType = getTypeAtIndex(<StructType>value.ty, index);
            return new Value(elementType, reg);
        } else {
            panic error("Extract value from non aggregate data type");
        }
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

const INDENT = "  ";

# Corresponds to LLVMBasicBlockRef
public distinct class BasicBlock {
    final FunctionDefn func;
    private final string label;
    private final string[] lines = [];
    private boolean isReferenced = false;

    function init(string label, FunctionDefn func) {
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

function pointerTo(IntType ty) returns string {
    return ty + "*";
}

function typeToString(RetType ty) returns string {
    string typeTag;
    if ty is PointerType {
        typeTag = ty.pointsTo + "*";
    } else if ty is StructType {
        string[] typeStringBody = [];
        typeStringBody.push("{");
        foreach int i in 0 ..< ty.memberTypes.length() {
            final Type elementType = ty.memberTypes[i];
            if i > 0 {
                typeStringBody.push(",");
            }
            typeStringBody.push(typeToString(elementType));
        }
        typeStringBody.push("}");
        typeTag = createLine(typeStringBody, "");
    } else {
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
    return word == "," || word == ")" || word == "}";
}

function omitSpaceAfter(string word) returns boolean {
    return word == "(" || word == "{";
}
