import ballerina/io;
import wso2/nballerina.types as t;
import wso2/nballerina.comm.err;
import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;


type BuildError err:Semantic|err:Unimplemented|err:Internal;

function buildModule(bir:Module mod) returns string[]|BuildError {
    Scaffold scaffold = new;
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    wasm:Module module = new;
    wasm:Relooper relooper = new(module);
    foreach int i in 0 ..< functionDefns.length() {
        relooper.reset();
        scaffold.reset();
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        wasm:Expression body = buildFunctionBody(scaffold, module, relooper, code);
        string funcName = functionDefns[i].symbol.identifier;
        wasm:Type[] params = [];
        wasm:Type[] locals = [];
        foreach bir:SemType ty in functionDefns[i].signature.paramTypes {
            wasm:Type? wTy = operandType(ty);
            if wTy != () {
                params.push(wTy);
            }
        }
        foreach int j in params.length()..<code.registers.length() {
            wasm:Type? ty = operandType(code.registers[j].semType);
            if ty != () && ty != "None" {
                locals.push(ty);
            }
            else {
                locals.push(<wasm:Type>"i32");
            }
        }
        wasm:Type? retType = operandType(functionDefns[i].signature.returnType);
        if retType != () {
            module.addFunction(funcName, params, retType, locals, locals.length(), body);
            module.addFunctionExport(funcName, funcName);
        }
    }
    module.addFunctionImport("println", "console", "log", ["i64"], "None");
    return module.finish();
}

function buildFunctionBody(Scaffold scaffold, wasm:Module module, wasm:Relooper relooper, bir:FunctionCode code) returns wasm:Expression {
    wasm:Block[] blocks = [];
    foreach int i in 0..<code.blocks.length() {
        bir:BasicBlock b = code.blocks[i];
        blocks.push(buildBasicBlock(scaffold, module, relooper, b, i));
    }
    buildBranching(scaffold, module, relooper, blocks);
    return relooper.render(blocks[0], 0);
}

function buildBasicBlock(Scaffold scaffold, wasm:Module module, wasm:Relooper relooper, bir:BasicBlock block, int currIndex) returns wasm:Block {
    wasm:Expression[] body = [];
    foreach var insn in block.insns {
        if insn is bir:IntArithmeticBinaryInsn {
            body.push(buildArithmeticBinary(module, insn));
        }
        else if insn is bir:CompareInsn {
            body.push(buildCompare(module, insn));
        }
        else if insn is bir:EqualityInsn {
            body.push(buildEquality(module, insn));
        }
        else if insn is bir:CondNarrowInsn {
            body.push(buildCondNarrow(module, insn));
        }
        else if insn is bir:BooleanNotInsn {
            body.push(buildBooleanNotInsn(module, insn));
        }
        else if insn is bir:RetInsn {
            body.push(buildRet(module, insn));
        }
        else if insn is bir:AssignInsn {
            wasm:Expression? expr = buildAssign(module, insn);
            if expr != () {
                body.push(expr);
            }
        }
        else if insn is bir:CallInsn {
            body.push(buildCall(module, insn));
        }
        // else if insn is bir:CatchInsn {
        //     // nothing to do
        //     // scaffold.panicAddress uses this to figure out where to store the panic info
        // }
        // else if insn is bir:AbnormalRetInsn {
        //     check buildAbnormalRet(builder, scaffold, insn);
        // }
        else if insn is bir:BranchInsn {
            scaffold.addBranchInsn(insn, currIndex);
        }
        else if insn is bir:CondBranchInsn {
            scaffold.addCondBranchInsn(insn, currIndex);
        }
        else {
            continue;
        }
    }
    if body.length() == 0 {
        body.push(module.nop());
    }
    if body.length() > 1 {
        wasm:Expression bodyBlock = module.block((), body, body.length(), "None");
        return relooper.addBlock(bodyBlock);
    }
    else {
        return relooper.addBlock(body[0]);
    }
}

function buildBranching(Scaffold scaffold, wasm:Module module, wasm:Relooper relooper, wasm:Block[] blocks) {
    foreach Branch insn in scaffold.getBranchInsns() {
        buildBranch(module, relooper, insn, blocks);
    }
    foreach CondBranch insn in scaffold.getCondBranchInsns() {
        buildCondBranch(module, relooper, insn, blocks);
    }
}

function buildBranch(wasm:Module module, wasm:Relooper relooper, Branch br, wasm:Block[] blocks) {
    int dest = br.insn.dest;
    relooper.addBranch(blocks[br.fromIndex], blocks[dest]);
}

function buildCondBranch(wasm:Module module, wasm:Relooper relooper, CondBranch cBr, wasm:Block[] blocks) {
    int falseLabel = cBr.insn.ifFalse;
    int trueLabel = cBr.insn.ifTrue;
    bir:Register operand = cBr.insn.operand;
    wasm:Type? condType = operandType(operand.semType);
    if condType != () {
        relooper.addBranch(blocks[cBr.fromIndex], blocks[trueLabel], module.localGet(operand.number, condType));
    }
    relooper.addBranch(blocks[cBr.fromIndex], blocks[falseLabel]);
}

function buildRet(wasm:Module module, bir:RetInsn insn) returns wasm:Expression {
    wasm:Expression? retVal = getOperand(module, insn.operand);
    return module.addReturn(retVal);
}

function buildCall(wasm:Module module, bir:CallInsn insn) returns wasm:Expression {
    wasm:Expression[] args = [];
    bir:FunctionOperand ref = insn.func;
    foreach var arg in insn.args {
        wasm:Expression? argExpr = getOperand(module, arg);
        if argExpr != () {
            args.push(argExpr);
        }
    }
    if ref is bir:FunctionRef {
        wasm:Type? resultTy = operandType(insn.result.semType);
        if resultTy != () {
            wasm:Expression call = module.call(ref.symbol.identifier, args, args.length(), resultTy);
            if resultTy != "None" {
                return module.localSet(insn.result.number, call);
            }
            return call;
        }
    }
    panic error("invalid");
}

function buildAssign(wasm:Module module, bir:AssignInsn insn) returns wasm:Expression? {
    wasm:Type? operandTy = operandType(insn.result.semType);
    if operandTy != () {
        wasm:Expression? assign = getOperand(module, insn.operand);
        if assign != () {
            return module.localSet(insn.result.number, assign);
        }
        return ();
    }
    panic error("impossible");
}

function buildCondNarrow(wasm:Module module, bir:CondNarrowInsn insn) returns wasm:Expression {
    bir:Register operand = insn.operand;
    wasm:Type? operandTy = operandType(insn.operand.semType);
    if operandTy != () {
        return module.localSet(insn.result.number, module.localGet(operand.number, <wasm:Type>operandTy));
    }
    panic error("impossible");
}

function buildCompare(wasm:Module module, bir:CompareInsn insn) returns wasm:Expression {
    wasm:Expression? operand1 = getOperand(module, insn.operands[0]);
    wasm:Expression? operand2 = getOperand(module, insn.operands[1]);
    wasm:Type ty = "i32";
    if operandType(insn.operands[0].semType) == "i64" || operandType(insn.operands[1].semType) == "i64" {
        ty = "i64";
    }
    wasm:Op? operation = ();
    if ty == "i64" {
        operation = signedInt64CompareOps[insn.op];
    }
    else if ty == "i32" {
        operation = signedInt32CompareOps[insn.op];
    }
    if operand1 != () && operand2 != () && operation != () {
        return module.localSet(insn.result.number, module.binary(operation, operand1, operand2));
    }
    panic error("unknown operation");
}

function buildArithmeticBinary(wasm:Module module, bir:IntArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Op? operation = signedInt64ArithmeticOps[insn.op];
    if operation != () {
        wasm:Expression? operand1 = getOperand(module, insn.operands[0]);
        wasm:Expression? operand2 = getOperand(module, insn.operands[1]);
        if operand1 != () && operand2 != () {
            return module.localSet(insn.result.number, module.binary(operation, operand1, operand2));
        }
    }
    panic error("unimplemented");
}

function buildEquality(wasm:Module module, bir:EqualityInsn insn) returns wasm:Expression {
        wasm:Expression? operand1 = getOperand(module, insn.operands[0]);
        wasm:Expression? operand2 = getOperand(module, insn.operands[1]);
        wasm:Type ty = "i32";
        if operandType(insn.operands[0].semType) == "i64" || operandType(insn.operands[1].semType) == "i64" {
            ty = "i64";
        }
        if operand1 != ()  && operand2 != () {
            bir:EqualityOp operation = insn.op;
            wasm:Op op = "EqInt32";
            if operation == "==" {
                if ty == "i64" {
                    op = "EqInt64";
                }
            }
            else if operation == "!=" {
                op = "NeInt32";
                if ty == "i64" {
                    op = "NeInt64";
                }
            }
            wasm:Type? retType = operandType(insn.result.semType);
            if retType != () && retType != "None" {
                return module.localSet(insn.result.number, module.binary(op, operand1, operand2));
            }
            return module.binary(op, operand1, operand2);
        }
        panic error("impossible");
}

function buildBooleanNotInsn(wasm:Module module, bir:BooleanNotInsn insn) returns wasm:Expression {
    int op1 = insn.operand.number;
    return module.localSet(insn.result.number, module.binary("XorInt32", module.localGet(op1, "i32"), module.addConst({ i32: 1 })));
}

function operandType(bir:SemType operand) returns wasm:Type? {
    bir:SemType op = t:widenToUniformTypes(operand);
    if op == t:BOOLEAN {
        return "i32";
    }
    else if op == t:INT {
        return "i64";
    }
    else if op == t:NIL {
        return "None";
    }
    return ();
}


function getOperand(wasm:Module module, bir:Operand operand) returns wasm:Expression? {
    wasm:Type? ty = operandType(operand.semType);
    if operand is bir:Register {
        if ty != () && ty != "None" {
            return module.localGet(operand.number, <wasm:Type>ty);
        }
        else if ty == "None" {
            return ();
        }
        panic error("impossible");
    }
    else {
        if ty == "i64" {
            t:SingleValue val = operand.value;
            if val is int {
                return module.addConst({ i64: val });
            }
        }
        else if ty == "i32" {
            t:SingleValue val = operand.value;
            if val is boolean {
                int intVal = 0;
                if val {
                    intVal = 1;
                }
                return module.addConst({ i32: intVal });
            }
        }
        else if ty == "None" {
            return ();
        }
        panic error("impossible");
    }
}

public function compileModule(bir:Module mod, string? outputFilename) returns io:Error? {
    do {
	    string[] module = check buildModule(mod);
        if outputFilename != () {
            return io:fileWriteLines(outputFilename, module);
        }
    }
    on fail var e {
        io:println(e);
    }
}

final readonly & map<wasm:Op> signedInt32ArithmeticOps = {
    "+": "AddInt32",
    "-": "SubInt32",
    "*": "MulInt32",
    "/": "DivSInt32",
    "%": "RemSInt32"
};

final readonly & map<wasm:Op> signedInt64ArithmeticOps = {
    "+": "AddInt64",
    "-": "SubInt64",
    "*": "MulInt64",
    "/": "DivSInt64",
    "%": "RemSInt64"
};

final readonly & map<wasm:Op> signedInt32CompareOps = {
    "<": "LtSInt32",
    "<=": "LeSInt32",
    ">": "GtSInt32",
    ">=": "GeSInt32",
    "==": "EqInt32",
    "!=": "NeInt32"
};

final readonly & map<wasm:Op> signedInt64CompareOps = {
    "<": "LtSInt64",
    "<=": "LeSInt64",
    ">": "GtSInt64",
    ">=": "GeSInt64",
    "==": "EqInt64",
    "!=": "NeInt64"
};