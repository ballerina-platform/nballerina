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
    boolean tagAdded = false;
    foreach int i in 0 ..< functionDefns.length() {
        relooper.reset();
        scaffold.reset();
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        wasm:Expression body = buildFunctionBody(scaffold, module, relooper, code);
        if scaffold.getOverflowOps() {
            wasm:Expression tryBody = module.try((), body, [], 0, [], 0);
            body = tryBody;
            if !tagAdded {
                module.addTag("overflow", "None", "None");
                tagAdded = true;
            }
        }
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
            body.push(buildArithmeticBinary(module, scaffold, insn));
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
    return ();
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

function buildArithmeticBinary(wasm:Module module, Scaffold scaffold, bir:IntArithmeticBinaryInsn insn) returns wasm:Expression {
    wasm:Op? operation = signedInt64ArithmeticOps[insn.op];
    if operation != () {
        wasm:Expression? operand1 = getOperand(module, insn.operands[0]);
        wasm:Expression? operand2 = getOperand(module, insn.operands[1]);
        if operand1 != () && operand2 != () {
            wasm:Expression oper = module.localSet(insn.result.number, module.binary(operation, operand1, operand2));
            if ["AddInt64", "SubInt64", "MulInt64", "DivInt64"].indexOf(operation) != () {
                scaffold.setOverflowOps();
                wasm:Expression? overflowCheck = checkOverflow(module, operation, operand1, operand2);
                if overflowCheck != () {
                    return module.block("", [overflowCheck, oper], 2, "None");
                }
                return oper;
            }
            return oper;
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


function checkOverflow(wasm:Module module, wasm:Op op, wasm:Expression op1, wasm:Expression op2) returns wasm:Expression? {
    wasm:Expression MAX_INT = module.addConst({ i64: 9223372036854775807 });
    wasm:Expression MIN_INT = module.addConst({ i64: -9223372036854775808 });
    wasm:Expression op1GZ = module.binary("GtSInt64", op1, module.addConst({ i64: 0 }));
    wasm:Expression op2GZ = module.binary("GtSInt64", op2, module.addConst({ i64: 0 }));
    wasm:Expression op1LZ = module.binary("LtSInt64", op1, module.addConst({ i64: 0 }));
    wasm:Expression op2LZ = module.binary("LtSInt64", op2, module.addConst({ i64: 0 }));
    wasm:Expression throw = module.throw("overflow", [], 0);
    if op == "AddInt64" {
        wasm:Expression maxSOp2 = module.binary("SubInt64", MAX_INT, op2);
        wasm:Expression minSOp2 = module.binary("SubInt64", MIN_INT, op2);
        wasm:Expression cond1 = module.binary("AndInt32", op1GZ, op2GZ);
        wasm:Expression cond1Inner = module.binary("GtSInt64", op1, maxSOp2);
        wasm:Expression cond2 = module.binary("AndInt32", op1LZ, op2LZ);
        wasm:Expression cond2Inner = module.binary("LtSInt64", op1, minSOp2);
        wasm:Expression elseIfInner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf = module.addIf(cond2, elseIfInner);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf);
    }
    else if op == "SubInt64" {
        wasm:Expression maxAOp2 = module.binary("AddInt64", MAX_INT, op2);
        wasm:Expression minAOp2 = module.binary("AddInt64", MIN_INT, op2);
        wasm:Expression cond1 = module.binary("AndInt32", op1GZ, op2LZ);
        wasm:Expression cond1Inner = module.binary("GtSInt64", op1, maxAOp2);
        wasm:Expression cond2 = module.binary("AndInt32", op1LZ, op2GZ);
        wasm:Expression cond2Inner = module.binary("LtSInt64", op1, minAOp2);
        wasm:Expression elseIfInner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf = module.addIf(cond2, elseIfInner);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf);
    }
    else if op == "MulInt64" {
        wasm:Expression maxDOp1 = module.binary("DivSInt64", MAX_INT, op1);
        wasm:Expression minDOp1 = module.binary("DivSInt64", MIN_INT, op1);
        wasm:Expression cond1 = module.binary("AndInt32", op1GZ, op2GZ);
        wasm:Expression cond2 = module.binary("AndInt32", op1LZ, op2LZ);
        wasm:Expression cond3 = module.binary("AndInt32", module.binary("LtSInt64", op1, module.addConst({ i64: -1 })), op2GZ);
        wasm:Expression cond4 = module.binary("AndInt32", op1GZ, op2LZ);
        wasm:Expression cond1Inner = module.binary("GtSInt64", op2, maxDOp1);
        wasm:Expression cond2Inner = module.binary("LtSInt64", op2, maxDOp1);
        wasm:Expression cond3Inner = module.binary("GtSInt64", op2, minDOp1);
        wasm:Expression cond4Inner = module.binary("LtSInt64", op2, minDOp1);
        wasm:Expression elseIf3Inner = module.addIf(cond4Inner, throw);
        wasm:Expression elseIf3 = module.addIf(cond4, elseIf3Inner);
        wasm:Expression elseIf2Inner = module.addIf(cond3Inner, throw);
        wasm:Expression elseIf2 = module.addIf(cond3, elseIf2Inner, elseIf3);
        wasm:Expression elseIf1Inner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf1 = module.addIf(cond2, elseIf1Inner, elseIf2);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf1);
    }
    else if op == "DivInt64" {
        wasm:Expression minEOp2 = module.binary("EqInt64", MIN_INT, op1);
        wasm:Expression nEOp2 = module.binary("EqInt64", module.addConst({ i64: -1 }), op2);
        wasm:Expression cond1 = module.binary("AndInt32", nEOp2, minEOp2);
        return module.addIf(cond1, throw);
    }
    return ();
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

final readonly & map<string> overflowCall = {
    "+": "addOverflow",
    "-": "subOverflow",
    "*": "mulOverflow",
    "/": "divOverflow"
};