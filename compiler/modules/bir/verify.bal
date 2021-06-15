import wso2/nballerina.types as t;
import wso2/nballerina.err;

class VerifyContext {
    private final t:TypeCheckContext tc;
    private final FunctionDefn defn;

    function init(t:TypeCheckContext tc, FunctionDefn defn) {
        self.tc = tc;
        self.defn = defn;
    }

    function isSubtype(t:SemType s, t:SemType t) returns boolean {
        return t:isSubtype(self.tc, s, t);
    }

    function err(err:Message msg) returns err:Semantic {
        return err:semantic(msg, functionName=self.defn.symbol.identifier);
    }

    function returnType() returns t:SemType => self.defn.signature.returnType;
}

public function verifyFunctionCode(t:TypeCheckContext tc, FunctionDefn defn, FunctionCode code) returns err:Semantic? {
    VerifyContext cx = new(tc, defn);
    foreach BasicBlock b in code.blocks {
        check verifyBasicBlock(cx, b);
    }
}

type IntBinaryInsn IntArithmeticBinaryInsn|IntCompareInsn;
type BooleanBinaryInsn BooleanCompareInsn;

function verifyBasicBlock(VerifyContext vc, BasicBlock bb) returns err:Semantic? {
    foreach Insn insn in bb.insns {
        check verifyInsn(vc, insn);
    }
}

function verifyInsn(VerifyContext vc, Insn insn) returns err:Semantic? {
    string name = insn.name;
    if insn is IntBinaryInsn {
        check verifyOperandInt(vc, name, insn.operands[0]);
        check verifyOperandInt(vc, name, insn.operands[1]);
    }
    if insn is BooleanBinaryInsn {
        check verifyOperandBoolean(vc, name, insn.operands[0]);
        check verifyOperandBoolean(vc, name, insn.operands[1]);
    }
    else if insn is AssignInsn {
        check verifyOperandType(vc, insn.operand, insn.result.semType, "value is not a subtype of the LHS");
    }
    else if insn is CondBranchInsn {
        check verifyOperandBoolean(vc, name, insn.operand);
    }
    else if insn is RetInsn {
        check verifyOperandType(vc, insn.operand, vc.returnType(), "value is not a subtype of the return type");
    }
    // XXX function call
}

function verifyOperandType(VerifyContext vc, Operand operand, t:SemType semType, string msg) returns err:Semantic? {
    if operand is Register {
        if !vc.isSubtype(operand.semType, semType) {
            return vc.err(msg);
        }
    }
    // XXX handle constant case
}

function verifyOperandInt(VerifyContext vc, string insnName, IntOperand operand) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc, insnName, operand, t:INT, "int");
    }
}

function verifyOperandBoolean(VerifyContext vc, string insnName, BooleanOperand operand) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc,insnName, operand, t:BOOLEAN, "boolean");
    }
}

function verifyRegisterSemType(VerifyContext vc, string insnName, Register operand, t:SemType semType, string typeName) returns err:Semantic? {
    if !vc.isSubtype(operand.semType, semType) {
        return operandTypeErr(vc, insnName, typeName);
    }
}

function operandTypeErr(VerifyContext vc, string insnName, string typeName) returns err:Semantic {
    return vc.err(`operands of ${insnName} must be subtype of ${typeName}`);
}
