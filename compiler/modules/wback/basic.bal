import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

function buildBasicBlock(Scaffold scaffold, wasm:Module module, bir:BasicBlock block) returns wasm:Expression[] {
    wasm:Expression[] body = [];
    foreach var insn in block.insns {
        if insn is bir:IntArithmeticBinaryInsn {
            body.push(buildArithmeticBinary(module, scaffold, insn));
        }
        else if insn is bir:IntNoPanicArithmeticBinaryInsn {
            body.push(buildNoPanicArithmeticBinary(module, scaffold, insn));
        }
        else if insn is bir:IntBitwiseBinaryInsn {
            body.push(buildBitwiseBinary(module, scaffold, insn));
        }
        else if insn is bir:CompareInsn {
            body.push(buildCompare(module, scaffold, insn));
        }
        else if insn is bir:EqualityInsn {
            body.push(buildEquality(module, scaffold, insn));
        }
        else if insn is bir:BooleanNotInsn {
            body.push(buildBooleanNotInsn(module, insn));
        }
        else if insn is bir:RetInsn {
            body.push(buildRet(module, scaffold, insn));
        }
        else if insn is bir:AssignInsn {
            body.push(buildAssign(module, scaffold, insn));
        }
        else if insn is bir:TypeCastInsn {
            body.push(buildTypeCast(module, scaffold, insn));
        }
        else if insn is bir:ConvertToIntInsn {
            body.push(buildConvertToInt(module, scaffold, insn));
        }
        else if insn is bir:TypeBranchInsn {
            body.push(buildTypeBranch(module, scaffold, insn));
        }
        else if insn is bir:CallInsn {
            body.push(buildCall(module, scaffold, insn));
        }
        else if insn is bir:ListConstructInsn {
            body.push(buildListConstruct(module, scaffold, insn));
        }
        else if insn is bir:ListGetInsn {
            body.push(buildListGet(module, scaffold, insn));
        }
        else if insn is bir:ListSetInsn {
            body.push(buildListSet(module, scaffold, insn));
        }
        else if insn is bir:BranchInsn {
            wasm:Expression? expr = buildBranch(module, scaffold, insn, block.label);
            if expr != () {
                body.push(expr);
            }
        }
        else if insn is bir:MappingConstructInsn {
            body.push(buildMappingConstruct(module, scaffold, insn));
        }
        else if insn is bir:MappingGetInsn {
            body.push(buildMappingGet(module, scaffold, insn));
        }
        else if insn is bir:MappingSetInsn {
            body.push(buildMappingSet(module, scaffold, insn));
        }
        else if insn is bir:StringConcatInsn {
            body.push(buildStringConcat(module, scaffold, insn));
        }
        else if insn is bir:CondBranchInsn {
            body.push(buildCondBranch(module, insn));
        }
        else {
            continue;
        }
    }
    scaffold.processedBlocks.push(block.label);
    return body;
}

function buildBranch(wasm:Module module, Scaffold scaffold, bir:BranchInsn insn, bir:Label label) returns wasm:Expression? {
    if insn.backward || scaffold.brBlockLabels.indexOf(label) != () || scaffold.contBlockLabels.indexOf(insn.dest) != () {
        return module.br("$block$" + insn.dest.toString() + "$break");
    }
    return ();
}

function buildCondBranch(wasm:Module module, bir:CondBranchInsn insn) returns wasm:Expression {
    return module.localGet(insn.operand.number);
}

function buildRet(wasm:Module module, Scaffold scaffold, bir:RetInsn insn) returns wasm:Expression {
    RetRepr repr = scaffold.getRetRepr();
    wasm:Expression? retValue = repr is Repr ? buildWideRepr(module, scaffold, insn.operand, repr, scaffold.returnType) : ();
    return module.addReturn(retValue);
}

function buildStringConcat(wasm:Module module, Scaffold scaffold, bir:StringConcatInsn insn) returns wasm:Expression {
    wasm:Expression operand1 = buildString(module, scaffold, insn.operands[0]);
    wasm:Expression operand2 = buildString(module, scaffold, insn.operands[1]);
    return module.localSet(insn.result.number, module.call(stringConcatFunction.name, [operand1, operand2], stringConcatFunction.returnType));
}

function buildCall(wasm:Module module, Scaffold scaffold, bir:CallInsn insn) returns wasm:Expression {
    bir:FunctionRef ref = <bir:FunctionRef>insn.func;
    wasm:Expression[] args = [];
    bir:FunctionSignature signature = ref.erasedSignature;
    t:SemType[] paramTypes = signature.paramTypes;
    t:SemType[] instantiatedParamTypes = ref.signature.paramTypes;
    foreach int i in 0 ..< insn.args.length() {
        args.push(buildWideRepr(module, scaffold, insn.args[i], semTypeRepr(paramTypes[i]), instantiatedParamTypes[i]));
    }
    RetRepr retRepr = semTypeRetRepr(signature.returnType);
    wasm:Expression call = module.call(ref.symbol.identifier, args, retRepr.wasm);
    if retRepr !is VoidRepr {
        return module.localSet(insn.result.number, call);
    }
    return call;
}

function buildAssign(wasm:Module module, Scaffold scaffold, bir:AssignInsn insn) returns wasm:Expression {
    return module.localSet(insn.result.number, buildWideRepr(module, scaffold, insn.operand, scaffold.getRepr(insn.result), insn.result.semType));
}

function buildTypeBranch(wasm:Module module, Scaffold scaffold, bir:TypeBranchInsn insn) returns wasm:Expression {
    Repr repr = scaffold.getRepr(insn.operand);
    if repr is UniformRepr {
        if repr.wasm == "i64" {
            t:IntSubtypeConstraints? intConstraints = t:intSubtypeConstraints(insn.semType);
            int val = 0;
            if intConstraints != () {
                val = intConstraints.max;
            }
            return module.binary("i64.eq", module.localGet(insn.operand.number), module.addConst( { i64: val }));
        }
    }
    return module.localGet(insn.operand.number);
}

function buildBooleanNotInsn(wasm:Module module, bir:BooleanNotInsn insn) returns wasm:Expression {
    return module.localSet(insn.result.number, module.binary("i32.xor", module.localGet(insn.operand.number), module.addConst({ i32: 1 })));
}
