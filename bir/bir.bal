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


// This will eventually refer to something like core:Semtype.
// For now just a bit vector of uniform types
// XXX need to at least do function types
public type SemType int;

# A label within a function is represented as an int
# indexing into the function's `labelMap`.
type Label int;

// XXX Should we make this an object to encapsulate labelMap and registerCount?
public type FunctionDefn record {
    *ModuleDefn;
    # Name within the module
    readonly string name;
    SemType funcType;
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

public enum InsnName {
    INSN_CHECKED_INT_ADD,
    INSN_UNCHECKED_INT_ADD,
    INSN_RET,
    INSN_ABNORMAL_RET,
    INSN_CALL,
    INSN_INVOKE,
    INSN_CONSTRUCT_BUILTIN_PANIC,
    INSN_CONSTRUCT_TYPE_CAST_PANIC,
    INSN_CONST_FUNCTION,
    INSN_CONST_INT,
    INSN_MOVE,
    INSN_NARROW,
    INSN_WIDEN,
    INSN_TYPE_CAST,
    INSN_TYPE_TEST,
    INSN_JUMP,
    INSN_BRANCH_IF_TRUE,
    INSN_BRANCH_IF_FALSE,
    INSN_CATCH
}

public type Insn readonly & record {
    InsnName name;
};

public type CheckedIntAddInsn readonly & record {|
    INSN_CHECKED_INT_ADD name = INSN_CHECKED_INT_ADD;
    Register result;
    Register[2] operands;
    Label onPanic;
|};

# Used when the compiler can prove that the addition
# will not overflow.
public type UncheckedIntAddInsn readonly & record {|
    INSN_UNCHECKED_INT_ADD name = INSN_UNCHECKED_INT_ADD;
    Register result;
    Register[2] operands;
|};

# This is used for calls everywhere except within a trap expression.
# If the called function returns abnormally, then the caller
# also returns abnormally with the same error value.
public type CallInsn readonly & record {|
    INSN_CALL name = INSN_CALL;
    Register result;
    Register func;
    Register[] args;
|};


# This is used for a call within a trap.
# If the called function returns abnormally
# then we branch to onPanic.
# The label must refer to a CatchInsn.
public type InvokeInsn readonly & record {|
    INSN_INVOKE name = INSN_INVOKE;
    Register result;
    Register func;
    Label onPanic;
|};

# A CatchInsn is allowed only in conjunction with an InvokeInsn.
# Executing the catch instruction causes the error value associated
# with the abnormal return to be stored in the result register.
# This is a very simplified form of a LLVM landingpad.
public type CatchInsn readonly & record {|
    INSN_CATCH name = INSN_CATCH;
    Register result;
|};

# Load an integer into a register.
public type ConstIntInsn readonly & record {|
    INSN_CONST_INT name = INSN_CONST_INT;
    Register result;
    int value;
|};

# Load a module level function into a register.
public type ConstFunctionInsn readonly & record {|
    INSN_CONST_FUNCTION name = INSN_CONST_FUNCTION;
    FunctionDecl decl;
    Register result;
|};

public type GlobalSymbol readonly & record {|
    ModuleId module;
    string name;
|};

public type FunctionDecl readonly & record {|
    readonly GlobalSymbol name;
    SemType semType;
|};


# Move a value from one register to another.
# The type of the operand register must
# be equal to the type of the result register.
public type MoveInsn readonly & record {|
    INSN_MOVE name = INSN_MOVE;
    Register result;
    Register operand;
|};

# The type of the operand register must
# be a subtype of the type of the result register.
# If they are exactly equal then move should be used instead.
public type WidenInsn readonly & record {|
    INSN_WIDEN name = INSN_WIDEN;
    Register result;
    Register operand;
|};

# A type cast that may fail.
public type TypeCastInsn readonly & record {|
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
    INSN_NARROW name = INSN_NARROW;
    Register result;
    Register operand;
|};


# Return abnormally from the function
# The type of the operand
# and need not belong to the functions return type.
# The associated error value is in the operand register.
public type AbnormalRetInsn readonly & record {|
    readonly INSN_ABNORMAL_RET name = INSN_ABNORMAL_RET;
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
public type BranchIfTrueInsn readonly & record {|
    INSN_BRANCH_IF_TRUE name = INSN_BRANCH_IF_TRUE;
    # Operand must have exactly type boolean
    Register operand;
    Label dest;
|};

# Branch if a value is false.
public type BranchIfFalseInsn readonly & record {|
    INSN_BRANCH_IF_FALSE name = INSN_BRANCH_IF_FALSE;
    # Operand must have exactly type boolean
    Register operand;
    Label dest;
|};
