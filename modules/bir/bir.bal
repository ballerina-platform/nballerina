//import wso2/nballerina.types as t;

//public type SemType t:SemType;
public type SemType int;

//public type FunctionAtomicType t:FunctionAtomicType;
public type FunctionAtomicType readonly & record {};


public type Module record {|
    readonly ModuleId id;
    table<ModuleDefn> key(name) defns = table[];
|};

public type ModuleId readonly & record {|
    string? organization = ();
    [string, string...] names;
    // Do we need structure here?
    string versionString;
|};

public type ModuleDefn record {
    readonly string name;
};

# A label within a function is represented as an int
# indexing into the function's `labelMap`.
public type Label int;

// XXX Should we make this an object to encapsulate labelMap and registerCount?
public type FunctionDefn record {
    *ModuleDefn;
    # Name within the module
    readonly string name;
    FunctionAtomicType functionType;
    // Function execution starts off with value of param i
    // in register i
    // (Not thinking about varargs yet.)
    Register[] params;
    # The function's code
    Insn[] insns;
    # Map a label to an index in the insns array
    # If insns is mutated other than by appending,
    # then the labels needs updating.
    int[] labels;
    // uid of all registers is less than this
    int registerCount;
};

public type Register readonly & record {|
    # Unique identifier within a function
    # Always >= 0
    int uid;
    SemType semType;
|};

public type ArithmeticBinaryOp "+" | "-" | "*" | "/" | "%";
public type OrderOp "<=" | ">=" | "<" | ">";

public enum InsnName {
    INSN_INT_ARITHMETIC_BINARY,
    INSN_INT_UNCHECKED_ARITHMETIC_BINARY,
    INSN_INT_NEGATE,
    INSN_INT_UNCHECKED_NEGATE,
    INSN_INT_COMPARE,
    INSN_EQUAL,
    INSN_IDENTICAL,
    INSN_BOOLEAN_NOT,
    INSN_RET,
    INSN_ABNORMAL_RET,
    INSN_CALL,
    INSN_INVOKE,
    INSN_LOAD,
    INSN_NARROW,
    INSN_TYPE_CAST,
    INSN_TYPE_TEST,
    INSN_JUMP,
    INSN_CONDITIONAL_BRANCH,
    INSN_CATCH,
    INSN_CONSTRUCT_PANIC
}


public type InsnBase record {
    InsnName name;
};

public type Insn 
    IntArithmeticBinaryInsn|IntUncheckedArithmeticBinaryInsn
    |IntCompareInsn|IntNegateInsn|IntUncheckedNegateInsn
    |IntCompareInsn|EqualInsn|IdenticalInsn|BooleanNotInsn
    |RetInsn|AbnormalRetInsn|CallInsn|InvokeInsn
    |LoadInsn|NarrowInsn|TypeCastInsn|TypeTestInsn
    |JumpInsn|ConditionalBranchInsn
    |CatchInsn|ConstructPanicInsn;

public type Operand ConstOperand|Register;
public type ConstOperand ()|int|boolean|string|FunctionRef;
public type IntOperand int|Register;
public type BooleanOperand boolean|Register;
public type FunctionOperand FunctionRef|Register;

public type IntArithmeticBinaryInsn readonly & record {|
    *InsnBase;
    INSN_INT_ARITHMETIC_BINARY name = INSN_INT_ARITHMETIC_BINARY;
    ArithmeticBinaryOp op;
    Register result;
    IntOperand[2] operands;
    # The label must refer to a ConstructPanicInsn
    Label onPanic;
|};

# These instruction is an optimization of IntArithmeticBinaryInsn
# to be used only when the compiler can prove that a panic is impossible.
# Furthermore, % must not be used if first operand is int:MIN_VALUE and second operand is -1.
public type IntUncheckedArithmeticBinaryInsn readonly & record {|
    *InsnBase;
    INSN_INT_UNCHECKED_ARITHMETIC_BINARY name = INSN_INT_UNCHECKED_ARITHMETIC_BINARY;
    ArithmeticBinaryOp op;
    Register result;
    IntOperand[2] operands;
|};

public type IntNegateInsn readonly & record {|
    *InsnBase;
    INSN_INT_NEGATE name = INSN_INT_NEGATE;
    Register result;
    Register operand;
    # The label must refer to a ConstructPanicInsn
    Label onPanic;
|};

public type BooleanNotInsn readonly & record {|
    *InsnBase;
    INSN_BOOLEAN_NOT name = INSN_BOOLEAN_NOT;
    Register result;
    Register operand;
|};

public type IntUncheckedNegateInsn readonly & record {|
    *InsnBase;
    INSN_INT_UNCHECKED_NEGATE name = INSN_INT_UNCHECKED_NEGATE;
    Register result;
    Register operand;
|};

# This does ordered comparision
# Equal and inequality are done by equal
public type IntCompareInsn readonly & record {|
    *InsnBase;
    INSN_INT_COMPARE name = INSN_INT_COMPARE;
    OrderOp op;
    Register result;
    IntOperand[2] operands;
|};

# This does == and !=
# If `negate` is true, the operation is !=
# Otherwise it is ==.
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

public type FunctionRef readonly & record {|
    Identifier functionIdentifier;
    FunctionAtomicType functionType;
|};

# This is used for calls everywhere except within a trap expression.
# If the called function returns abnormally, then the caller
# also returns abnormally with the same error value.
public type CallInsn readonly & record {|
    *InsnBase;
    INSN_CALL name = INSN_CALL;
    Register result;
    FunctionOperand func;
    Operand[] args;
|};

# This is used for a call within a trap.
# If the called function returns abnormally
# then we branch to onPanic.
# The label must refer to a CatchInsn.
public type InvokeInsn readonly & record {|
    *InsnBase;
    INSN_INVOKE name = INSN_INVOKE;
    Register result;
    FunctionOperand func;
    Label onPanic;
|};


# A CatchInsn is allowed only in conjunction with an InvokeInsn.
# Executing the catch instruction causes the error value associated
# with the abnormal return to be stored in the result register.
# This is a very simplified form of a LLVM landingpad.
public type CatchInsn readonly & record {|
    *InsnBase;
    INSN_CATCH name = INSN_CATCH;
    Register result;
|};

// The string case represents a symbol in the same module
public type Identifier string|GlobalIdentifier;

public type GlobalIdentifier readonly & record {|
    ModuleId module;
    string name;
|};

# Load a value into a register.
# The type of the operand must be a subtype
# of the type of the result register.
public type LoadInsn readonly & record {|
    *InsnBase;
    INSN_LOAD name = INSN_LOAD;
    Register result;
    Operand operand;
|};

# A type cast that may fail.
# Don't need to allow for operand to be a const
# Since we can do that at compile-time
public type TypeCastInsn readonly & record {|
    *InsnBase;
    INSN_TYPE_CAST name = INSN_TYPE_CAST;
    Register result;
    Register operand;
    # If the operand is not a subtype of the result at runtime,
    # then branch to this label
    # The label must refer to a ConstructPanicInsn
    Label onPanic;
|};


# Tests whether a value belongs to a type
# Used for `is` expressions
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

public type RetInsn readonly & record {|
    INSN_RET name = INSN_RET;
    Operand operand;
|};

# Return abnormally from the function
# The type of the operand need not belong to the functions return type.
# The associated error value is in the operand register.
public type AbnormalRetInsn readonly & record {|
    INSN_ABNORMAL_RET name = INSN_ABNORMAL_RET;
    # Operand is error value
    Register operand;
|};

# When an instruction other than an function call panics,
# (e.g. integer overflow) it branches to the onPanic label,
# at which there must be a ConstructPanicInsn. This
# instruction is not allowed elsewhere.
# This instruction is responsible for creating an error object
# representing the panic that just happened.
# Typically this is followed by an AbnormalRet instruction.
# But if it happens within a trap expression, it can be followed
# by arbitrary other code.
public type ConstructPanicInsn readonly & record {|
    INSN_CONSTRUCT_PANIC name = INSN_CONSTRUCT_PANIC; 
    # The register that gets the error value
    Register result;
|};


# Branch when the value of an operand has a specified boolean value
# This branches to `Label` if the `operand` has the value `branchWhen`.
# If the operand is const, then use a Jump instead
public type ConditionalBranchInsn readonly & record {|
    INSN_CONDITIONAL_BRANCH name = INSN_CONDITIONAL_BRANCH;
    # Operand must have exactly type boolean
    Register operand;
    boolean branchIf;
    Label dest;
|};

# Unconditional jump to a label
public type JumpInsn readonly & record {|
    INSN_JUMP name = INSN_JUMP;
    Label dest;
|};
