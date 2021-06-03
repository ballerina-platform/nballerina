// The concept here is to have an API that can both
// be implemented simply on top of the LLVM C API
// and can be used to generate .ll format directly.
// In the C API version, distinct classes would have
// private members that are handles referring to the
// C void* values.

import ballerina/io;

public type IntType "i8"|"i1";

public type PointerType readonly & record {|
    IntType pointsTo;
    int align;
|};

public type Type IntType|PointerType;

# Corresponds to LLVMValueRef 
public readonly distinct class Value {
    string operand;
    Type ty;
    function init(Type ty, string operand) {
        self.ty = ty;
        self.operand = operand;
    }
}

public function constInt(IntType ty, int val) returns Value {
    return new Value(ty, val.toString());
}

public type BinaryInsn "add"|"mul"|"sub"|"sdiv"|"srem";

public distinct class Output {
    private final  string path;

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
        self.lines = [label + ":"];
    }
    function ref() returns string {
        return "%" + self.label;
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

    // XXX need stuff for the definition
    public function init() {

    }

    public function outputBody(Output out) {
        string[] lines = [];
        foreach var bb in self.basicBlocks {
            bb.output(out);
        }
    }

    public function appendBasicBlock() returns BasicBlock {
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

}

# Corresponds to LLVMBuilderRef  
public class Builder {
    private BasicBlock? currentBlock = ();
    
    public function positionAtEnd(BasicBlock block) {
        self.currentBlock = block;
    }

    public function alloca(IntType ty, int align) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        PointerType ptrTy = { pointsTo: ty, align };
        bb.addInsn(reg, "=", "alloca", ty, ",", align.toString());
        return new Value(ptrTy, reg);
    }

    public function load(Value ptr) returns Value {
        BasicBlock bb = self.bb();
        PointerType ptrTy = requirePointerType(ptr);
        IntType ty = ptrTy.pointsTo;
        string reg = bb.func.genReg();
        bb.addInsn(reg, "=", "load", ty, ",", pointerTo(ty), "align", ptrTy.align.toString());
        return new Value(ty, reg);
    }

    public function store(Value val, Value ptr) {
        PointerType ptrTy = requirePointerType(ptr);
        IntType ty = ptrTy.pointsTo;
        if ty != val.ty {
            panic error("store type mismatch");
        }
        self.bb().addInsn("store", ty, val.operand, ",", pointerTo(ty), ptr.operand, ",", "align", ptrTy.align.toString());
    }

    // binary operation with int operands and (same) int result
    public function binaryInt(BinaryInsn insn, Value lhs, Value rhs, string name) returns Value {
        BasicBlock bb = self.bb();
        string reg = bb.func.genReg();
        IntType ty = sameIntType(lhs, rhs);
        bb.addInsn(reg, "=", insn, ty, lhs.operand, ",", rhs.operand);
        return new Value(ty, reg);
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

function requirePointerType(Value val) returns PointerType {
    Type ty = val.ty;
    if ty is PointerType {
        return ty;
    }
    panic error("expected pointer type");
}

function pointerTo(IntType ty) returns string {
    return ty + "*";
}