import wso2/nballerina.types as t;
import wso2/nballerina.err;

class VerifyContext {
    private final t:TypeCheckContext tc;
    private final string functionName;

    function init(t:TypeCheckContext tc, FunctionDefn defn) {
        self.tc = tc;
        self.functionName = defn.symbol.identifier;
    }

    function isSubtype(t:SemType s, t:SemType t) returns boolean {
        return t:isSubtype(self.tc, s, t);
    }

    function err(err:Message msg) returns err:Semantic {
        return err:semantic(msg, functionName=self.functionName);
    }
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
        check verifyAssignInsn(vc, insn);
    }
    else if insn is CondBranchInsn {
        check verifyOperandBoolean(vc, name, insn.operand);
    } 
    // XXX function call
}

function verifyAssignInsn(VerifyContext vc, AssignInsn insn) returns err:Semantic? {
    Operand operand = insn.operand;
    if operand is Register {
        if !vc.isSubtype(operand.semType, insn.result.semType) {
            return vc.err("assignment with LHS that is not a subtype of RHS");
        }
    }
    // XXX handle constant case
}

function verifyOperandInt(VerifyContext vc, string insnName, Operand operand) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc, insnName, operand, t:INT, "int");
    }
    else if !(operand is int) {
        return operandTypeErr(vc, insnName, "int");
    }
}

function verifyOperandBoolean(VerifyContext vc, string insnName, Operand operand) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc,insnName, operand, t:BOOLEAN, "boolean");
    }
    else if !(operand is boolean) {
        return operandTypeErr(vc, insnName, "boolean");
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
