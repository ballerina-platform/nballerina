import wso2/nballerina.err;
import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.nback.bll;

type LowerError err:Semantic|err:Unimplemented;

function lower(bir:Module mod, bir:FunctionDefn defn, bir:FunctionCode code) returns bll:FunctionDefn|LowerError {
    bll:FunctionDefn llFunc = {
        identifier: mangle(defn.name),
        functionType: check lowerFunctionSignature(defn.signature),
        locals: [],
        blocks: []
    };
    check lowerCode(llFunc, code);
    return llFunc;
}


function lowerCode(bll:FunctionDefn llFunc, bir:FunctionCode code) returns LowerError? {
    foreach var reg in code.registers {
        bll:Local local = {
            valueType: check lowerValueType(reg.semType),
            number: reg.number,
            addressable: true
        };
        llFunc.locals.push(local);
    }
    foreach var bb in code.blocks {
        bll:BasicBlock b = { label: bb.label };
        llFunc.blocks.push(b);
    }
    foreach var bb in code.blocks {
        check lowerBasicBlock(llFunc, bb, llFunc.blocks[bb.label]);
    }
}

function lowerBasicBlock(bll:FunctionDefn llFunc, bir:BasicBlock block, bll:BasicBlock result) returns LowerError? {
    foreach var insn in block.insns {
        if insn is bir:IntArithmeticBinaryInsn {
            check lowerArithmeticInsn(llFunc, insn, result);
        }
        else if insn is bir:RetInsn {
            check lowerRetInsn(llFunc, insn, result);
        }
         else if insn is bir:AssignInsn {
            check lowerAssignInsn(llFunc, insn, result);
        }
    }
}

function lowerRetInsn(bll:FunctionDefn llFunc, bir:RetInsn insn, bll:BasicBlock result) returns LowerError? {
    bir:Operand operand = insn.operand;
    bll:RetInsn llInsn = {
        value:  operand is () ? "void" : check lowerValueOperand(llFunc, operand)
    };
    result.insns.push(llInsn);
}

function lowerAssignInsn(bll:FunctionDefn llFunc, bir:AssignInsn insn, bll:BasicBlock result) returns LowerError? {
    bir:Operand operand = insn.operand;
    bll:AssignInsn llInsn = {
        result: lowerRegister(llFunc, insn.result),
        value:  check lowerValueOperand(llFunc, operand)
    };
    result.insns.push(llInsn);
}

function lowerArithmeticInsn(bll:FunctionDefn llFunc, bir:IntArithmeticBinaryInsn insn, bll:BasicBlock result) returns LowerError? {
    boolean isPpi = insn.name == bir:INSN_INT_ARITHMETIC_BINARY;
    bll:BinaryInsnName name = lowLevelOp(insn.op, isPpi);
    if isPpi {

    }
    else {
        bll:BinaryInsn llInsn = {
            name,
            result: lowerRegister(llFunc, insn.result),
            lhs: lowerIntOperand(llFunc, insn.operands[0]),
            rhs: lowerIntOperand(llFunc, insn.operands[1])
        };
        result.insns.push(llInsn);
    }
}

final readonly & map<string> arithmeticOpNames = {
    "+": "add",
    "-": "sub",
    "*": "mul",
    "/": "div",
    "%": "rem"
};


function lowLevelOp(bir:ArithmeticBinaryOp op, boolean isPpi) returns bll:BinaryInsnName {
    bll:BinaryInsnName name = <bll:BinaryInsnName>arithmeticOpNames[op];
    if isPpi {
        string overflowName = name + ".with.overflow";
        if overflowName is bll:BinaryInsnName {
            return overflowName;
        }
    }
    return name;
}

function lowerIntOperand(bll:FunctionDefn llFunc, bir:IntOperand operand) returns bll:Value {
    if operand is int {
        return ["i64", operand];
    }
    else {
        return lowerRegister(llFunc, operand);
    }
}

function lowerValueOperand(bll:FunctionDefn llFunc, bir:Operand operand) returns bll:Value|LowerError {
    if operand is bir:IntOperand {
        return lowerIntOperand(llFunc, operand);
    }
    else if operand is boolean {
        return ["i1", operand == true ? 1 : 0];
    }
    else {
        return err:unimplemented("unimplemented constant");
    }
}

function lowerRegister(bll:FunctionDefn llFunc, bir:Register reg) returns bll:Local {
    return llFunc.locals[reg.number];
}

function lowerFunctionSignature(bir:FunctionSignature signature) returns bll:FunctionType|LowerError {
    bll:ValueType[] paramTypes = from var ty in signature.paramTypes select check lowerValueType(ty);
    bll:FunctionType ty = {
        retType: check lowerRetType(signature.returnType),
        paramTypes: paramTypes.cloneReadOnly()
    };
    return ty;
}

function lowerRetType(t:SemType ty) returns bll:RetType|LowerError {
    if ty === t:NIL {
        return "void";
    }
    return lowerValueType(ty);
}

function lowerValueType(t:SemType ty) returns bll:ValueType|LowerError {
    if ty === t:INT {
        return "i64";
    }
    else if ty === t:BOOLEAN {
        return "i1";
    }
    return err:unimplemented("unimplemented type");
}

function mangle(bir:Identifier ident) returns string {
    if ident is string {
        return ident;
    }
    else {
        return ident.name;
    }
}