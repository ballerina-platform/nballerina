// This file defines the Ballerina Low-Level (BLL) intermediate representation.
// Compare to BIR, BIL has
// - types that correspond to LLVM types
// - basic blocks that correspond to LLVM basic blocks (i.e. explicit represent panic control flow)
// - uses instructions much closer to LLVM instructions
// Compared to LLVM's IR, this is not SSA and has an assignment instruction.

import wso2/nballerina.err;

type FunctionDefn record {|
    string identifier;
    FunctionType functionType;
    Local[] locals;
    BasicBlock[] blocks;
|};

# A local variable.
type Local readonly & record {|
    ValueType valueType;
    int number;
    // A local that is assigned to must be addressable.
    // A local created during BIR to NIR lowering
    // does not need to be addressable.
    boolean addressable;
|};

type ValueType IntType|AggregateType;

// i64.overflow is an tuple of an i64 and an i1; the i1 is 1 if the operation overflowed
const I64_WITH_OVERFLOW = "i64.with.overflow";

type AggregateType I64_WITH_OVERFLOW;
type IntType "i64"|"i1";

type FunctionType readonly & record {|
    ValueType retType;
    ValueType[] paramType;
|};

type BasicBlock record {|
    # Label for the BB, unique within the function
    readonly Label label;
    # List of the instructions in this basic block
    Insn[] insns = [];
|};

type Label int;

type Insn BinaryInsn|CallInsn|ExtractElementInsn|AssignInsn|TerminatorInsn;
type TerminatorInsn BrInsn|RetInsn|RaiseInsn;

type Value Local|IntConst;
type IntConst readonly & [IntType, int];

type BinaryInsnName
    // i64.with.overflow = i64, i64
    "sadd.with.overflow"|
    "ssub.with.overflow"|
    "smul.with.overflow"|
    // i64 = i64, i64
    "add"|
    "sub"|
    "mul"|
    "div"|
    "srem";

type BinaryInsn readonly & record {|
    BinaryInsnName name;
    Local result;
    Value lhs;
    Value rhs;
|};

type CallInsn readonly & record {|
    "call" name = "call";
    string identifier;
    FunctionType functionType;
    // `result` must be nil if the return type is void
    Local? result;
    Value[] args;
    err:Position position;
|};

// Used for i64.with.overflow type
type ExtractElementInsn readonly & record {|
    "extractelement" name = "extractelement";
    Local result;
    Local value;
    (1|0) idx;
|};

// This is not an LLVM instruction
const ASSIGN = "=";

// This will get turned into a store
type AssignInsn readonly & record {|
    ASSIGN name = ASSIGN;
    Local result; // must be addressable
    Value value;
|};

// Terminators

type BrInsn CondBrInsn | JmpInsn;

type CondBrInsn readonly & record {|
    "br" name = "br";
    // Value must have type i1
    Local value;
    Label ifTrue;
    Label ifFalse;
|};

type JmpInsn readonly & record {|
    "br" name = "br";
    Label dest;
|};

type RetInsn readonly & record {|
    "ret" name = "ret";
    Value|"void" value;
|};

const ARITHMETIC_PANIC = 1;
type PanicCode ARITHMETIC_PANIC;

const RAISE = "raise";

// Raises an exception.
// This starts unwinding: `value` represents the error value
// For now, we represent errors
// with an i64 identifying a distinct type of language-generated panic.
// This will turn into a call to a function that doesn't return
type RaiseInsn readonly & record {|
    RAISE name = RAISE;
    Local value;
|};