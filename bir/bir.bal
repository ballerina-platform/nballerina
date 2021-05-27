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
type Label int;

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
    # then the labelMap needs updating.
    int[] labelMap;
    // uid of all registers is less than this
    int registerCount;
};


public type Register readonly & record {|
    # Unique identifier within a function
    # Always >= 0
    int uid;
    SemType semType;
|};

// These are binary operations that can panic
public enum CheckedBinaryIntInsnName {
    INSN_CHECKED_INT_ADD,
    INSN_CHECKED_INT_SUB,
    INSN_CHECKED_INT_MUL,
    # This panics on both division by zero and overflow (int:MIN_VALUE/-1)
    INSN_CHECKED_INT_DIV,
    # This panics if second operand is zero.
    # Result of int:MIN_VALUE/-1 is 0 (as in Java)
    INSN_CHECKED_INT_REM
}

# Binary operations that can panic
public enum UncheckedBinaryIntInsnName {
    # This must only be used when the compiler can prove that the
    # addition will not overflow
    INSN_UNCHECKED_INT_ADD,
    INSN_UNCHECKED_INT_SUB,
    INSN_UNCHECKED_INT_MUL,
    INSN_UNCHECKED_INT_DIV,
    # This must not be used if second operand is 0,
    # or if first operand is int:MIN_VALUE and second operand is -1.
    INSN_UNCHECKED_INT_REM
}

public enum OtherInsnName {
    INSN_RET,
    INSN_ABNORMAL_RET,
    INSN_CALL,
    INSN_INVOKE,
    INSN_LOAD,
    INSN_NARROW,
    INSN_TYPE_CAST,
    INSN_TYPE_TEST,
    INSN_JUMP,
    INSN_BRANCH_IF_TRUE,
    INSN_BRANCH_IF_FALSE,
    INSN_CATCH,
    INSN_CONSTRUCT_BUILTIN_PANIC,
    INSN_CONSTRUCT_TYPE_CAST_PANIC
}

public type InsnName CheckedBinaryIntInsnName|UncheckedBinaryIntInsnName|OtherInsnName;

public type InsnBase record {
    InsnName name;
};

public type Insn CheckedBinaryIntInsn|UncheckedBinaryIntInsn|OtherInsn;
public type OtherInsn RetInsn|AbnormalRetInsn|CallInsn|InvokeInsn
    |LoadInsn|TypeCastInsn|TypeTestInsn
    |BranchIfTrueInsn|BranchIfFalseInsn
    |CatchInsn|ConstructBuiltinPanicInsn|ConstructTypeCastPanicInsn;

type Operand ConstOperand|Register;
type ConstOperand ()|int|boolean|FunctionRef;
type IntOperand int|Register;
type FunctionOperand FunctionRef|Register;

public type CheckedBinaryIntInsn readonly & record {|
    *InsnBase;
    CheckedBinaryIntInsnName name;
    Register result;
    IntOperand[2] operands;
    Label onPanic;
|};

public type UncheckedBinaryIntInsn readonly & record {|
    *InsnBase;
    UncheckedBinaryIntInsnName name;
    Register result;
    IntOperand[2] operands;
|};


type FunctionRef record {|
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
    // If the operand is not a subtype of the result at runtime,
    // then branch to this label
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


# Creates an error object representing a simple language-defined panic
# and loads it into a register
public type ConstructBuiltinPanicInsn readonly & record {|
    INSN_CONSTRUCT_BUILTIN_PANIC name = INSN_CONSTRUCT_BUILTIN_PANIC; 
    # The register that gets the error value
    Register result;
    // Distinct error type for the panic to be constructed
    SemType panicType;
|};

public type ConstructTypeCastPanicInsn readonly & record {|
    INSN_CONSTRUCT_TYPE_CAST_PANIC name = INSN_CONSTRUCT_TYPE_CAST_PANIC;
    # The register that gets the error value
    Register result;
    # The value that could not be converted
    Register operand;
    SemType resultType;
|};

# Branch if a value is true.
# This branches to `Label` if the `operand` is true.
# If the operand is const, then use a Jump instead
public type BranchIfTrueInsn readonly & record {|
    INSN_BRANCH_IF_TRUE name = INSN_BRANCH_IF_TRUE;
    # Operand must have exactly type boolean
    Register operand;
    Label dest;
|};

# Branch if a value is false.
# If the operand is const, then use a Jump instead
public type BranchIfFalseInsn readonly & record {|
    INSN_BRANCH_IF_FALSE name = INSN_BRANCH_IF_FALSE;
    # Operand must have exactly type boolean
    Register operand;
    Label dest;
|};

# Unconditional jump to a label
public type JumpInsn readonly & record {|
    INSN_JUMP name = INSN_JUMP;
    Label dest;
|};
