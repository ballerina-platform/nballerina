import ballerina/io;
import wso2/nballerina.types as t;
import wso2/nballerina.comm.err;
import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

type BuildError err:Semantic|err:Unimplemented|err:Internal;

function buildModule(bir:Module mod) returns string[]|BuildError {
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    wasm:Module module = new;
    boolean tagAdded = false;
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        check bir:verifyFunctionCode(mod, functionDefns[i], code);
        bir:Region[] sorted = from var e in code.regions
                        order by e.entry descending select e;
        code.regions = sorted;
        Scaffold scaffold = new(code);
        wasm:Expression body = buildFunctionBody(scaffold, module);
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

function checkForEntry(bir:Region[] regions, bir:Label label, bir:BasicBlock[] blocks, bir:Label? exit = ()) returns int? {
    int? index = ();
    foreach int i in 0..<regions.length() {
        bir:Region region = regions[i];
        if region.entry == label {
            index = i;
            break;
        }
    }
    if exit != () && index == () {
        bir:Insn lastInsn = blocks[label].insns[blocks[label].insns.length() - 1];
        if lastInsn is bir:BranchInsn {
            if lastInsn.dest != exit {
                index = checkForEntry(regions, lastInsn.dest, blocks, exit);
                if index != () && regions[index].ty != "Loop" {
                    index = ();
                }
            }
        }
    }
    return index;
}

function checkForBreak(bir:BasicBlock[] blocks, bir:Label entry, bir:Label exit) returns boolean {
    bir:Label[] queue = [entry + 1];
    while queue.length() > 0 {
        bir:BasicBlock curr = blocks[queue.remove(0)];
        bir:Insn lastInsn = curr.insns[curr.insns.length() - 1];
        if lastInsn is bir:CondBranchInsn {
            if lastInsn.ifTrue == exit || lastInsn.ifFalse == exit {
                return true;
            }
            queue.push(lastInsn.ifTrue, lastInsn.ifFalse);
        }
        else if lastInsn is bir:BranchInsn {
            bir:Label dest = lastInsn.dest;
            if dest == exit {
                return true;
            }
        }
    }
    return false;
}

function renderBlock(Scaffold scaffold, wasm:Module module, bir:Region curr, bir:Label label, bir:Label? exit = ()) returns wasm:Expression[] {
    wasm:Expression[] children = [];
    int? index = checkForEntry(scaffold.regions, label, scaffold.blocks, exit);
    if scaffold.processedBlocks.indexOf(label) == () {
        scaffold.processedBlocks.push(label);
        children.push(...buildBasicBlock(scaffold, module, scaffold.blocks[label]));
    }
    if index != () {
        if (curr.parent == () && scaffold.regions[index].parent == 0) || (curr.parent + 1 == scaffold.regions[index].parent) {
            wasm:Expression[]? rendered = scaffold.renderedRegion[index.toString()];
            if rendered != () {
                children.push(...rendered);
            }
        }
    }
    return children;
}

function buildFunctionBody(Scaffold scaffold, wasm:Module module) returns wasm:Expression {
    foreach int index in 0..<scaffold.regions.length() {
        bir:Region region = scaffold.regions[index];
        wasm:Expression[] curr = [];
        bir:BasicBlock entry = scaffold.blocks[region.entry];
        bir:Label? exit = region.exit;
        if region.ty == "Multiple" {
            bir:Insn lastInsn = entry.insns[entry.insns.length() - 1];
            if lastInsn is bir:CondBranchInsn {
                wasm:Expression[] header =  buildBasicBlock(scaffold, module, entry);
                wasm:Expression condition = header.remove(header.length() - 1);
                wasm:Expression ifBody = module.block((), renderBlock(scaffold, module, region, lastInsn.ifTrue, exit), 2);
                wasm:Expression elseBody = module.block((), renderBlock(scaffold, module, region, lastInsn.ifFalse, exit), 2);
                curr.push(...header);
                if lastInsn.ifFalse == region.exit {
                    curr.push(module.addIf(condition, ifBody), elseBody);
                }
                else {
                    curr.push(module.addIf(condition, ifBody, elseBody));
                    if exit != () {
                        curr.push(...renderBlock(scaffold, module, region, exit));
                    }
                }
                scaffold.processedBlocks.push(entry.label, lastInsn.ifFalse, lastInsn.ifTrue);
            }
            else {
                panic error("impossible");
            }
        }
        else if region.ty == "Loop" && exit != () {
            wasm:Expression? loopExit = ();
            string loopLabel = "$block$" + region.entry.toString() + "$break";
            wasm:Expression[] loopHeader = buildBasicBlock(scaffold, module, entry);
            scaffold.processedBlocks.push(entry.label);
            wasm:Expression[] exitCode = renderBlock(scaffold, module, region, exit);
            if exitCode.length() > 0 {
                loopExit = module.block((), exitCode, 2);
            }
            wasm:Expression loopBody = module.block((), renderBlock(scaffold, module, region, entry.label + 1, exit), 2);
            wasm:Expression loop;
            if loopHeader.length() > 0 {
                wasm:Expression condition = loopHeader.remove(loopHeader.length() - 1);
                loopHeader.push(module.addIf(condition, loopBody));
                loop = module.loop(loopLabel, module.block((), loopHeader, 2));
            }
            else {
                loop = module.loop(loopLabel, loopBody);
            }
            if checkForBreak(scaffold.blocks, region.entry, exit) {
                loop = module.block("$block$" + exit.toString() + "$break", [loop], 1);
            }
            curr.push(loop);
            if loopExit != () {
                curr.push(loopExit);
            }
        }
        else if region.ty == "Simple" {
            int last = exit != () ? exit: scaffold.regions.length();
            if last == region.entry {
                curr.push(...renderBlock(scaffold, module, region, last));
            }
            else {
                foreach int j in region.entry..<last {
                    curr.push(...renderBlock(scaffold, module, region, j));
                }
            }
        }
        scaffold.renderedRegion[index.toString()] = curr;
    }
    wasm:Expression[]? parent = scaffold.renderedRegion[(scaffold.regions.length() - 1).toString()];
    if parent != () {
        return module.block((), parent, parent.length());
    }
    return module.nop();
}

function buildBasicBlock(Scaffold scaffold, wasm:Module module, bir:BasicBlock block) returns wasm:Expression[] {
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
        else if insn is bir:CondBranchInsn {
            body.push(buildCondBranch(module, insn));
        }
        else if insn is bir:BranchInsn {
            wasm:Expression? expr = buildBranch(module, insn);
            if expr != () {
                body.push(expr);
            }
        }
        else {
            continue;
        }
    }
    return body;
}

function buildBranch(wasm:Module module, bir:BranchInsn insn) returns wasm:Expression? {
    if insn.backward {
        return module.br("$block$" + insn.dest.toString() + "$break");
    }
    return ();
}

function buildCondBranch(wasm:Module module, bir:CondBranchInsn insn) returns wasm:Expression {
    bir:Register operand = insn.operand;
    wasm:Type? condType = operandType(operand.semType);
    if condType != () {
        return module.localGet(operand.number, condType);
    }
    panic error("impossible");

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
            if ["i64.add", "i64.sub", "i64.mul", "i64.div_s"].indexOf(operation) != () {
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
            wasm:Op op = "i32.eq";
            if operation == "==" {
                if ty == "i64" {
                    op = "i64.eq";
                }
            }
            else if operation == "!=" {
                op = "i32.ne";
                if ty == "i64" {
                    op = "i64.ne";
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
    return module.localSet(insn.result.number, module.binary("i32.xor", module.localGet(op1, "i32"), module.addConst({ i32: 1 })));
}

function checkOverflow(wasm:Module module, wasm:Op op, wasm:Expression op1, wasm:Expression op2) returns wasm:Expression? {
    wasm:Expression MAX_INT = module.addConst({ i64: 9223372036854775807 });
    wasm:Expression MIN_INT = module.addConst({ i64: -9223372036854775808 });
    wasm:Expression op1GZ = module.binary("i64.gt_s", op1, module.addConst({ i64: 0 }));
    wasm:Expression op2GZ = module.binary("i64.gt_s", op2, module.addConst({ i64: 0 }));
    wasm:Expression op1LZ = module.binary("i64.lt_s", op1, module.addConst({ i64: 0 }));
    wasm:Expression op2LZ = module.binary("i64.lt_s", op2, module.addConst({ i64: 0 }));
    wasm:Expression throw = module.throw("overflow", [], 0);
    if op == "i64.add" {
        wasm:Expression maxSOp2 = module.binary("i64.sub", MAX_INT, op2);
        wasm:Expression minSOp2 = module.binary("i64.sub", MIN_INT, op2);
        wasm:Expression cond1 = module.binary("i32.and", op1GZ, op2GZ);
        wasm:Expression cond1Inner = module.binary("i64.gt_s", op1, maxSOp2);
        wasm:Expression cond2 = module.binary("i32.and", op1LZ, op2LZ);
        wasm:Expression cond2Inner = module.binary("i64.lt_s", op1, minSOp2);
        wasm:Expression elseIfInner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf = module.addIf(cond2, elseIfInner);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf);
    }
    else if op == "i64.sub" {
        wasm:Expression maxAOp2 = module.binary("i64.add", MAX_INT, op2);
        wasm:Expression minAOp2 = module.binary("i64.add", MIN_INT, op2);
        wasm:Expression cond1 = module.binary("i32.and", op1GZ, op2LZ);
        wasm:Expression cond1Inner = module.binary("i64.gt_s", op1, maxAOp2);
        wasm:Expression cond2 = module.binary("i32.and", op1LZ, op2GZ);
        wasm:Expression cond2Inner = module.binary("i64.lt_s", op1, minAOp2);
        wasm:Expression elseIfInner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf = module.addIf(cond2, elseIfInner);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf);
    }
    else if op == "i64.mul" {
        wasm:Expression maxDOp1 = module.binary("i64.div_s", MAX_INT, op1);
        wasm:Expression minDOp1 = module.binary("i64.div_s", MIN_INT, op1);
        wasm:Expression cond1 = module.binary("i32.and", op1GZ, op2GZ);
        wasm:Expression cond2 = module.binary("i32.and", op1LZ, op2LZ);
        wasm:Expression cond3 = module.binary("i32.and", module.binary("i64.lt_s", op1, module.addConst({ i64: -1 })), op2GZ);
        wasm:Expression cond4 = module.binary("i32.and", op1GZ, op2LZ);
        wasm:Expression cond1Inner = module.binary("i64.gt_s", op2, maxDOp1);
        wasm:Expression cond2Inner = module.binary("i64.lt_s", op2, maxDOp1);
        wasm:Expression cond3Inner = module.binary("i64.gt_s", op2, minDOp1);
        wasm:Expression cond4Inner = module.binary("i64.lt_s", op2, minDOp1);
        wasm:Expression elseIf3Inner = module.addIf(cond4Inner, throw);
        wasm:Expression elseIf3 = module.addIf(cond4, elseIf3Inner);
        wasm:Expression elseIf2Inner = module.addIf(cond3Inner, throw);
        wasm:Expression elseIf2 = module.addIf(cond3, elseIf2Inner, elseIf3);
        wasm:Expression elseIf1Inner = module.addIf(cond2Inner, throw);
        wasm:Expression elseIf1 = module.addIf(cond2, elseIf1Inner, elseIf2);
        wasm:Expression ifInner = module.addIf(cond1Inner, throw);
        return module.addIf(cond1, ifInner, elseIf1);
    }
    else if op == "i64.div_s" {
        wasm:Expression minEOp2 = module.binary("i64.eq", MIN_INT, op1);
        wasm:Expression nEOp2 = module.binary("i64.eq", module.addConst({ i64: -1 }), op2);
        wasm:Expression cond1 = module.binary("i32.and", nEOp2, minEOp2);
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

final readonly & map<wasm:Op> signedInt64ArithmeticOps = {
    "+": "i64.add",
    "-": "i64.sub",
    "*": "i64.mul",
    "/": "i64.div_s",
    "%": "i64.rem_s"
};

final readonly & map<wasm:Op> signedInt32CompareOps = {
    "<": "i32.lt_s",
    "<=": "i32.le_s",
    ">": "i32.gt_s",
    ">=": "i32.ge_s",
    "==": "i32.eq",
    "!=": "i32.ne"
};

final readonly & map<wasm:Op> signedInt64CompareOps = {
    "<": "i64.lt_s",
    "<=": "i64.le_s",
    ">": "i64.gt_s",
    ">=": "i64.ge_s",
    "==": "i64.eq",
    "!=": "i64.ne"
};