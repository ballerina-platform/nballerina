// The concept here is to have an API that can both
// be implemented simply on top of the LLVM C API
// and can be used to generate .ll format directly.
// In the C API version, distinct classes would have
// private members that are handles referring to the
// C void* values.
import ballerina/io;

// import ballerina/stringutils;

public type IntType "i8"|"i1"|"i32"|"i64";

public type IntPredicate "eq"|"ne"|"ugt"|"uge"|"ult"|"ule"|"sgt"|"sge"|"slt"|"sle";

//FIXME: make it possible to add structure types
public type StructureType "{i64,i1}";

public type PreEmptionSpecifier "dso_preemptable"|"dso_local";

public type LinkageType "internal"|"external";

public type FunctionAttribute "noinline"|"nounwind"|"optnone"|"uwtable"|"readnone"|"speculatable"|"willreturn"|"noreturn";

public type PointerType readonly & record {|
                                       IntType pointsTo;
                                       int align;
                                   |};

public type Type IntType|PointerType|StructureType|"void";

# Corresponds to LLVMValueRef 
public readonly distinct class Value {
    string operand;
    Type ty;
    function init(Type ty, string operand) {
        self.ty = ty;
        self.operand = operand;
    }

    public function serializeType() returns string {
        if self.ty is PointerType {
            return serializePointerType(<PointerType>self.ty);
        }
        return <string>self.ty;
    }

    public function getOperand() returns string {
        return self.operand;
    }

    public function getType() returns Type {
        return self.ty;
    }
}

public function constInt(IntType ty, int val) returns Value {
    return new Value(ty, val.toString());
}

public function constBool(boolean val) returns Value {
    return new Value("i1", val.toString());
}

public type BinaryInsn "add"|"mul"|"sub"|"sdiv"|"srem"|"xor";

public distinct class Output {
    private final string path;

    final string[] lines = [];

    public function init(string path) returns io:Error? {
        self.path = path;
    }

    function push(string line) {
        self.lines.push(line);
    }

    public function finish() returns io:Error? {
        return io:fileWriteLines(self.path, self.lines);
    }
}

# Corresponds to LLVMBasicBlockRef
public distinct class BasicBlock {
    final Function func;
    private final string label;
    private final string[] lines;

    function init(string label, Function func) {
        self.label = label;
        self.func = func;
        // skip the label for init block
        if label != "%L0" {
            self.lines = [label + ":"];
        } else {
            self.lines = [];
        }
    }
    function ref() returns string {
        return "%" + self.label;
    }

    public function getLabel() returns string {
        return self.label;
    }

    function addInsn(string... words) {
        // the space argument is for indentation
        self.lines.push(" ".'join(" ", ...words));
    }

    function output(Output out) {
        foreach var line in self.lines {
            out.push(line);
        }
    }
}

public class Function {
    private BasicBlock[] basicBlocks = [];
    private int varCount = 0;
    private int labelCount = 0;
    private string name;
    private PreEmptionSpecifier preEmptionSpecifier;
    private FunctionAttribute[] functionAttributes;
    private boolean isExternal;
    private Type returnType;
    private LinkageType linkageType;
    private Value[] functionArgs = [];
    public function init(string name, Type returnType, PreEmptionSpecifier preEmptionSpecifier = "dso_preemptable", 
                         FunctionAttribute[] functionAttributes = [], boolean isExternal = false, 
                         LinkageType linkageType = "external", Type[] functionArgTypes = []) {
        self.name = name;
        self.preEmptionSpecifier = preEmptionSpecifier;
        self.isExternal = isExternal;
        self.functionAttributes = functionAttributes;
        self.returnType = returnType;
        self.linkageType = linkageType;
        foreach var argType in functionArgTypes {
            string register = self.genReg();
            Value arg = new (argType, register);
            self.functionArgs.push(arg);
        }
    }

    public function returnsValue() returns boolean {
        return self.returnType != "void";
    }

    public function getName() returns string {
        return self.name;
    }

    public function output(Output out) {
        string preEmptionSpecifierTag = (self.preEmptionSpecifier == "dso_preemptable") ? "" : (<string>self.
        preEmptionSpecifier);
        string[] headerContent = [];
        if self.isExternal {
            headerContent.push("declare");
        } else {
            headerContent.push("define");
        }
        if self.linkageType != "external" {
            headerContent.push(self.linkageType);
        }
        if self.preEmptionSpecifier == "dso_preemptable" {
            headerContent.push(self.preEmptionSpecifier);
        }
        headerContent.push(self.serializeReturnType());
        headerContent.push(string `${self.name}(${self.serializeFunctionArguments()})`);
        headerContent.push(self.serializeFunctionAttributes());
        string header = " ".'join(...headerContent);
        if !self.isExternal {
            header += "{";
        }
        out.push(header);
        if !self.isExternal {
            self.outputBody(out);
            out.push("}");
        }
    }

    public function getFunctionArgs() returns Value[] {
        return self.functionArgs;
    }

    public function serializeReturnType() returns string {
        string returnTypeTag = (self.returnType is IntType || self.returnType == "void" || self.returnType is 
        StructureType) ? (<string>self.returnType) : serializePointerType(<PointerType>self.returnType);
        return returnTypeTag;
    }

    public function getReturnType() returns Type {
        return self.returnType;
    }

    function outputBody(Output out) {
        foreach var bb in self.basicBlocks {
            bb.output(out);
        }
    }

    public function appendBasicBlock() returns BasicBlock {
        if self.isExternal {
            panic error("Appending basic block to external function");
        }
        BasicBlock tem = new BasicBlock(self.genLabel(), self);
        self.basicBlocks.push(tem);
        return tem;
    }

    function genLabel() returns string {
        string label = "%" + "L" + self.labelCount.toString();
        self.labelCount += 1;
        return label;
    }

    function genReg() returns string {
        string reg = "%" + "R" + self.varCount.toString();
        self.varCount += 1;
        return reg;
    }

    function serializeFunctionAttributes() returns string {
        string code = "";
        foreach var attribute in self.functionAttributes {
            code += string `${<string>attribute} `;
        }
        return code.trim();
    }

    function serializeFunctionArguments() returns string {
        string[] code = [];
        foreach var arg in self.functionArgs {
            string typeTag = (arg.ty is IntType || arg.ty == "void") ? (<string>arg.ty) : serializePointerType(<
            PointerType>arg.ty);
            if self.isExternal {
                code.push(string `${typeTag},`);
            } else {
                code.push(string `${typeTag} ${arg.operand},`);
            }
        }
        string code_string = " ".'join(...code);
        code_string = code_string.trim();
        if code_string.length() > 0 && code_string[code_string.length() - 1] == "," {
            code_string = code_string.substring(0, code_string.length() - 1);
        }
        return code_string;
    }
}

public class Module {
    private string targetTriple;
    private Function[] functions = [];
    public function init(string targetTriple = "x86_64-pc-linux-gnu") {
        self.targetTriple = targetTriple;
    }

    function appendFunction(string name, Type returnType, PreEmptionSpecifier preEmptionSpecifier = "dso_preemptable", 
                            FunctionAttribute[] functionAttributes = [], boolean isExternal = false, 
                            LinkageType linkageType = "external", Type[] functionArgTypes = []) returns Function {
        Function f = new (name, returnType, preEmptionSpecifier, functionAttributes, isExternal, linkageType, 
        functionArgTypes);
        self.functions.push(f);
        return f;
    }

    function output(Output out) {
        out.push(string `target triple = "${self.targetTriple}"`);
        foreach var f in self.functions {
            f.output(out);
        }
    }
}

# Corresponds to LLVMBuilderRef  
public class Builder {
    private BasicBlock? currentBlock = ();

    public function positionAtEnd(BasicBlock block) {
        self.currentBlock = block;
    }

    public function alloca(IntType ty, int align = 8) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        PointerType ptrTy = {pointsTo: ty, align};
        bb.addInsn(reg, "=", "alloca", string`${<string>ty},`, "align", align.toString());
        return new Value(ptrTy, reg);
    }

    public function load(Value ptr) returns Value {
        BasicBlock bb = self.bb();
        PointerType ptrTy = requirePointerType(ptr);
        IntType ty = ptrTy.pointsTo;
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "load", string `${ptr.serializeType()},`, pointerTo(ty), string `${ptr.operand},`, "align", 
        ptrTy.align.toString());
        return new Value(ty, reg);
    }

    public function store(Value val, Value ptr) {
        PointerType ptrTy = requirePointerType(ptr);
        IntType ty = ptrTy.pointsTo;
        if ty != val.ty {
            panic error("store type mismatch");
        }
        self.bb().addInsn("store", ty, string `${val.operand},`, pointerTo(ty), string `${ptr.operand},`, "align", ptrTy.
        align.toString());
    }

    // binary operation with int operands and (same) int result
    public function binaryInt(BinaryInsn insn, Value lhs, Value rhs, string name = "") returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        IntType ty = sameIntType(lhs, rhs);
        bb.addInsn(reg, "=", insn, ty, string `${lhs.operand},`, rhs.operand);
        return new Value(ty, reg);
    }

    public function returnValue(Value value) {
        BasicBlock bb = self.bb();
        if value.ty is PointerType {
            bb.addInsn("ret", serializePointerType(<PointerType>value.ty), value.operand);
        } else {
            bb.addInsn("ret", <string>value.ty, value.operand);
        }
    }

    public function returnVoid() {
        BasicBlock bb = self.bb();
        bb.addInsn("ret void");
    }

    public function call(Function f, Value[] args) returns Value {
        if !(f.returnsValue()) {
            panic error(string `Function ${f.getName()} does not return a value try callVoid instead`);
        }
        if f.getFunctionArgs().length() != args.length() {
            panic error(string `Number of arguments is invalid for function ${f.getName()}`);
        }
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        string argString = "";
        foreach var arg in args {
            string typeTag = (arg.ty is IntType || arg.ty == "void") ? (<string>arg.ty) : serializePointerType(<
            PointerType>arg.ty);
            argString += string `${typeTag} ${arg.operand}, `;
        }
        argString = argString.trim();
        if (argString.length() > 0) {
            argString = argString.substring(0, argString.length() - 1);
        }
        bb.addInsn(reg, "=", "call", f.serializeReturnType(), string `${f.getName()}(${argString})`);
        return new Value(f.getReturnType(), reg);
    }

    public function callVoid(Function f, Value[] args) {
        if (f.returnsValue()) {
            panic error("This function returns a value try call instead");
        }
        if f.getFunctionArgs().length() != args.length() {
            panic error("Number of arguments is invalid");
        }
        BasicBlock bb = self.bb();
        string argString = "";
        foreach var arg in args {
            string typeTag = (arg.ty is IntType || arg.ty == "void") ? (<string>arg.ty) : serializePointerType(<
            PointerType>arg.ty);
            argString += string `${typeTag} ${arg.operand}, `;
        }
        argString = argString.trim();
        if (argString.length() > 0) {
            argString = argString.substring(0, argString.length() - 1);
        }
        bb.addInsn("call", f.serializeReturnType(), string `${f.getName()}(${argString})`);
    }

    public function extractValue(Value value, Value index) returns Value {
        if !(value.ty is StructureType) {
            panic error("Extract value support only structure values");
        }
        if !(index.ty is IntType) {
            panic error("Index must be integer type");
        }
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "extractvalue", value.serializeType(), string `${value.getOperand()},`, index.getOperand());
        int|error i = int:fromString(index.getOperand());
        if i is int {
            Type resultType = getTypeByIndex(<StructureType>value.getType(), i);
            return new Value(resultType, reg);
        } else {
            panic error("Extract value from variables not implemented");
        }
    }

    public function condBranch(Value val, BasicBlock ifTrue, BasicBlock ifFalse) {
        if !(val.ty is "i1") {
            panic error("Conditional branch support only i1 values");
        }
        self.bb().addInsn("br", "i1", string `${val.getOperand()},`, "label", string `${ifTrue.getLabel()},`, "label", 
        ifFalse.getLabel());
    }

    public function branch(BasicBlock destination) {
        self.bb().addInsn("br", "label", destination.getLabel());
    }

    public function unreachable() {
        self.bb().addInsn("unreachable");
    }

    public function iCmp(IntPredicate op, Value lhs, Value rhs) returns Value {
        if !(lhs.getType() is IntType && rhs.getType() is IntType) {
            panic error("Integer comparison support only integer type variables");
        }
        if lhs.getType() != rhs.getType() {
            panic error("Comparison between different type values");
        }
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "icmp", op, lhs.serializeType(), string `${lhs.getOperand()},`, rhs.getOperand());
        return new Value("i1", reg);

    }

    private function bb() returns BasicBlock {
        BasicBlock? tem = self.currentBlock;
        if tem is () {
            panic error("no current basic block");
        } else {
            return tem;
        }
    }
}

function sameIntType(Value v1, Value v2) returns IntType {
    Type ty1 = v1.ty;
    Type ty2 = v2.ty;
    if ty1 != ty2 {
        panic error("expected same types");
    } else if ty1 is IntType {
        return ty1;
    }
    panic error("expected an int type");
}

function requirePointerType(Value val) returns PointerType {
    Type ty = val.ty;
    if ty is PointerType {
        return ty;
    }
    panic error("expected pointer type");
}

function pointerTo(IntType ty) returns string {
    return <string>ty + "*";
}

function serializePointerType(PointerType ty) returns string {
    return <string>ty.pointsTo + "*";
}

function getTypeByIndex(StructureType structureType, int index) returns Type {
    match <string>structureType {
        "{i64,i1}" => {
            if index == 0 {
                return "i64";
            } else if index == 1 {
                return "i1";
            } else {
                panic error("Invalid index");
            }
        }
    }
    panic error("Unknown structure type");
}
