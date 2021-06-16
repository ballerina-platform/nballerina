import wso2/nballerina.types as t;
import wso2/nballerina.err;

public type SemType t:SemType;

public type Module object {
    public function getId() returns ModuleId;
    // A SemType of a potentially recursive type uses integers to refer to definitions
    // which are in arrays in this.
    public function getTypeCheckContext() returns t:TypeCheckContext;
    public function getFunctionDefns() returns readonly & FunctionDefn[];
    public function generateFunctionCode(int i) returns FunctionCode|err:Semantic|err:Unimplemented;
    public function getPrefixForModuleId(ModuleId id) returns string?;
};

public type ModuleId readonly & record {|
    string? organization = ();
    [string, string...] names;
    // this omits the version, because programs cannot have two versions of the same module
|};

public type ExternalSymbol readonly & record {|
    ModuleId module;
    string identifier;
|};

public type ModuleDefn record {|
    InternalSymbol symbol;
    readonly...;
|};

# A label is an index of a basic block in the basicBlock.
public type Label int;

# The definition of a function.
public type FunctionDefn readonly & record {|
    *ModuleDefn;
    # Name within the module
    InternalSymbol symbol;
    # The signature of the function
    FunctionSignature signature;
|};

public type InternalSymbol readonly & record {|
    boolean isPublic;
    string identifier;
|};

public type Symbol InternalSymbol|ExternalSymbol;

public function symbolToString(Module mod, Symbol sym) returns string {
    string prefix;
    if sym is InternalSymbol {
        prefix = "";
    }
    else {
        ModuleId modId = sym.module;
        string? importPrefix = mod.getPrefixForModuleId(modId);
        if importPrefix == () {
            string? org = modId.organization;
            string orgString = org == () ? "" : org + "/";
            prefix = "{" + orgString  + ".".'join(...sym.module.names) + "}";
        }
        else {
            prefix = importPrefix + ":";
        }
    }
    return prefix + sym.identifier;
}

public type FunctionRef readonly & record {|
    Symbol symbol;
    FunctionSignature signature;
|};

# A function's code is represented as a factored control flow graph.
# (as described in Choi et al 1999 https://dl.acm.org/doi/abs/10.1145/381788.316171)
# This is like a control flow graph, except that basic blocks
# can contain instructions that can potentially panic.
# Execution starts in basic block 0 with with value of param i
# in register i (0-based). (Not thinking about varargs yet.)
# Control flow between basic blocks is explicit: it does not
# flow implicitly between the members of `blocks`.
public type FunctionCode record {|
    # Basic blocks indexed by label
    BasicBlock[] blocks = [];
    # Registers indexed by number
    Register[] registers = [];
|};

# This represents the signature of a function definition.
# We don't need to convert this to a `SemType` unless
# the definition is converted to a function value,
# by referencing the name of the function as a variable
# reference.
public type FunctionSignature readonly & record {|
    SemType returnType;
    SemType[] paramTypes;
    SemType? restParamType = ();
|};

# A basic block.
# Normal control flow proceeds implicitly through the members of the insns array.
# Basic blocks can contain potentially panicking instructions (PPIs).
# Whether an instruction is a PPI is determined based on the name of the instruction.
# If a basic block does contain a PPI, then onPanic is the label of the
# basic block to which control should flow if any of those instructions panic:
# this basic block must start with a CatchInsn.
public type BasicBlock record {|
    # Label for the BB, unique within the function
    readonly Label label;
    # List of the instructions in this basic block
    Insn[] insns = [];
    # non-nil if this contains any PPI
    Label? onPanic = ();
|};

public function createBasicBlock(FunctionCode code) returns BasicBlock {
    int label = code.blocks.length();
    BasicBlock bb = { label };
    code.blocks.push(bb);
    return bb;
}

public type Register readonly & record {|
    # Unique identifier within a function
    # Always >= 0
    int number;
    SemType semType;
    string? varName;
|};

public function createRegister(FunctionCode code, SemType semType, string? varName = ()) returns Register {
    int number = code.registers.length();
    Register r = { number, semType, varName };
    code.registers.push(r);
    return r;
}

public type ArithmeticBinaryOp "+" | "-" | "*" | "/" | "%";
public type OrderOp "<=" | ">=" | "<" | ">";

public enum InsnName {
    INSN_INT_ARITHMETIC_BINARY,
    INSN_INT_NO_PANIC_ARITHMETIC_BINARY,
    INSN_INT_NEGATE,
    INSN_INT_NO_PANIC_NEGATE,
    INSN_INT_COMPARE,
    INSN_BOOLEAN_COMPARE,
    INSN_EQUAL,
    INSN_IDENTICAL,
    INSN_BOOLEAN_NOT,
    INSN_RET,
    INSN_ABNORMAL_RET,
    INSN_CALL,
    INSN_INVOKE,
    INSN_ASSIGN,
    INSN_NARROW,
    INSN_TYPE_CAST,
    INSN_TYPE_TEST,
    INSN_BRANCH,
    INSN_COND_BRANCH,
    INSN_CATCH,
    INSN_PANIC
}

# All instructions are a subtype of this.
public type InsnBase record {
    # The name of the instruction.
    # The name says what kind of instruction it is.
    # Whether an instruction is a terminator or a PPI is determined
    # just by its name.
    InsnName name;
};

public type Insn 
    IntArithmeticBinaryInsn|IntNegateInsn
    |IntCompareInsn|BooleanCompareInsn|EqualInsn|IdenticalInsn|BooleanNotInsn
    |RetInsn|AbnormalRetInsn|CallInsn
    |AssignInsn|NarrowInsn|TypeCastInsn|TypeTestInsn
    |BranchInsn|CondBranchInsn|CatchInsn|PanicInsn;

public type Operand ConstOperand|Register;
public type ConstOperand ()|int|boolean;
public type IntOperand int|Register;
public type BooleanOperand boolean|Register;
public type FunctionOperand FunctionRef|Register;

# Perform a arithmetic operand on ints with two operands.
# This has a PPI and non-PPI variant.
# INSN_INT_ARITHMETIC_BINARY is a PPI.
# INSN_INT_NO_PANIC_ARITHMETIC_BINARY is not a PPI;
# it is an optimization to be used only when the compiler can prove that a panic is impossible;
# the NO_PANIC version of % must not be used if first operand is int:MIN_VALUE and second operand is -1.
public type IntArithmeticBinaryInsn readonly & record {|
    *InsnBase;
    (INSN_INT_ARITHMETIC_BINARY|INSN_INT_NO_PANIC_ARITHMETIC_BINARY) name = INSN_INT_ARITHMETIC_BINARY;
    ArithmeticBinaryOp op;
    Register result;
    IntOperand[2] operands;
|};

# This has PPI and non-PPI variants.
public type IntNegateInsn readonly & record {|
    *InsnBase;
    (INSN_INT_NEGATE|INSN_INT_NO_PANIC_NEGATE) name = INSN_INT_NEGATE;
    Register result;
    Register operand;
|};

# Perform logical not operation on a boolean.
public type BooleanNotInsn readonly & record {|
    *InsnBase;
    INSN_BOOLEAN_NOT name = INSN_BOOLEAN_NOT;
    Register result;
    Register operand;
|};

# This does ordered comparision
# Equality and inequality are done by equal
public type IntCompareInsn readonly & record {|
    *InsnBase;
    INSN_INT_COMPARE name = INSN_INT_COMPARE;
    OrderOp op;
    Register result;
    IntOperand[2] operands;
|};

# This does ordered comparision
# Equality and inequality are done by equal
public type BooleanCompareInsn readonly & record {|
    *InsnBase;
    INSN_BOOLEAN_COMPARE name = INSN_BOOLEAN_COMPARE;
    OrderOp op;
    Register result;
    BooleanOperand[2] operands;
|};

# This does == and !=
# If `negate` is true, the operation is !=
# Otherwise it is ==.
# XXX cases that allocate memory can potentially panic
public type EqualInsn readonly & record {|
    *InsnBase;
    INSN_EQUAL name = INSN_EQUAL;
    boolean negate;
    Register result;
    Operand[2] operands;
|};

# This does == and !=
# If `negate` is true, the operation is !=
# Otherwise it is ==.
public type IdenticalInsn readonly & record {|
    *InsnBase;
    INSN_IDENTICAL name = INSN_IDENTICAL;
    boolean negate;
    Register result;
    Operand[2] operands;
|};

# Call a function.
# This is a not a terminator.
# This is a PPI. A panic in the called function
# goes to the onPanic label in the basic block.
# Regardless of where the function itself panics,
# any function call could result in a stack overflow panic.
# XXX This does not handle functions that don't return
# (i.e. with return type of never)
public type CallInsn readonly & record {|
    *InsnBase;
    # Position in the source that resulted in the instruction
    err:Position? position;
    INSN_CALL name = INSN_CALL;
    Register result;
    FunctionOperand func;
    Operand[] args;
|};

# Assign a value to a register.
# Typing rule:
# typeof(operand) <: typeof(result)
public type AssignInsn readonly & record {|
    *InsnBase;
    INSN_ASSIGN name = INSN_ASSIGN;
    Register result;
    Operand operand;
|};

# A type cast that may fail.
# Don't need to allow for operand to be a const
# Since we can do that at compile-time.
# This is a PPI.
# Typing rule:
# typeof(operand) & semType <: typeof(result)
public type TypeCastInsn readonly & record {|
    *InsnBase;
    INSN_TYPE_CAST name = INSN_TYPE_CAST;
    Register result;
    Register operand;
    SemType semType;
|};


# Tests whether a value belongs to a type
# Used for `is` expressions
# Typing rule:
# typeof(result) <: boolean
# XXX some type tests are potentially complex
# and can require memory allocation and thus can potentially
# panic. Probably need to distinguish these.
public type TypeTestInsn readonly & record {|
    *InsnBase;
    INSN_TYPE_TEST name = INSN_TYPE_TEST;
    # Gets result of test.
    # Must be exactly type boolean
    Register result;
    # Holds value to be tested.
    Register operand;
    SemType semType;
|};


# A type narrowing that can be verified to succeed because of an TypeTestInsn.
# Usually this would require a TypeCastInsn, but the compiler emits this
# to support Ballerina's type narrowing feature, when it knows the cast
# will succeed.
# This must be verifiable purely from the BIR.
# XXX Is there a better way to do this? e.g. combine test and cast somehow
public type NarrowInsn readonly & record {|
    *InsnBase;
    INSN_NARROW name = INSN_NARROW;
    Register result;
    Register operand;
|};

# Return normally from a function.
# This is a terminator.
# Typing rule:
# typeof(operand) <: typeof(functionReturnType)
public type RetInsn readonly & record {|
    *InsnBase;
    INSN_RET name = INSN_RET;
    Operand operand;
|};

# Return abnormally from the function
# The type of the operand need not belong to the functions return type.
# The associated error value is in the operand register.
# This is a terminator.
public type AbnormalRetInsn readonly & record {|
    *InsnBase;
    INSN_ABNORMAL_RET name = INSN_ABNORMAL_RET;
    # Operand is error value
    Register operand;
|};

# Performs a panic.
# This is a PPI.
# Control flow allows follows the onPanic label of its basic block.
# This is a terminator.
# The operand contains the associated error value.
public type PanicInsn readonly & record {|
    *InsnBase;
    INSN_PANIC name = INSN_PANIC; 
    # Must be of type error
    Register operand;
|};


# A CatchInsn is allowed as the first insn of a block that
# is the target of an onPanic label of a basic block.
# Executing the catch instruction causes the error value associated
# with the panic to be stored in the result register.
# This is a very simplified form of a LLVM landingpad.
public type CatchInsn readonly & record {|
    *InsnBase;
    INSN_CATCH name = INSN_CATCH;
    Register result;
|};

# Conditionally branch to one of two labels based on a boolean operand.
# If the operand is const, then use a Jump instead.
# This is a terminator.
public type CondBranchInsn readonly & record {|
    *InsnBase;
    INSN_COND_BRANCH name = INSN_COND_BRANCH;
    Register operand;
    Label ifTrue;
    Label ifFalse;
|};

# Unconditional branch to a label
# This is a terminator.
public type BranchInsn readonly & record {|
    *InsnBase;
    INSN_BRANCH name = INSN_BRANCH;
    Label dest;
|};


public function isBasicBlockPotentiallyPanicking(BasicBlock block) returns boolean {
    foreach Insn insn in block.insns {
        if isInsnPotentiallyPanicking(insn) {
            return true;
        }
    }
    return false;
}

final readonly & map<true> PPI_INSNS = {
    // When we implement trap, we will need to treat call as potentially
    // panicking but for now we don't
    // If we allow this, we need to be careful about not generating
    // code from the catch block if the only PPIs in the basic block are calls.
    // [INSN_CALL]: true,
    [INSN_PANIC]: true,
    [INSN_INT_ARITHMETIC_BINARY]: true,
    [INSN_TYPE_CAST]: true,
    [INSN_INT_NEGATE]: true
};

public function isInsnPotentiallyPanicking(Insn insn) returns boolean {
    return PPI_INSNS[insn.name] == true;
}