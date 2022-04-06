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
        else if insn is bir:CompareInsn {
            body.push(buildCompare(module, scaffold, insn));
        }
        else if insn is bir:EqualityInsn {
            body.push(buildEquality(module, scaffold, insn));
        }
        else if insn is bir:CondNarrowInsn {
            body.push(buildCondNarrow(module, scaffold, insn));
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
        else if insn is bir:ListConstructInsn {
            body.push(buildListConstruct(module, scaffold, insn));
        }
        else if insn is bir:ListGetInsn {
            body.push(buildListGet(module, scaffold, insn));
        }
        else if insn is bir:ListSetInsn {
            body.push(buildListSet(module, scaffold, insn));
        }
        else if insn is bir:TypeCastInsn {
            body.push(buildTypeCast(module, scaffold, insn));
        }
        else if insn is bir:ConvertToIntInsn {
            body.push(buildConvertToInt(module, scaffold, insn));
        }
        else if insn is bir:CallInsn {
            body.push(buildCall(module, scaffold, insn));
        }
        else if insn is bir:CondBranchInsn {
            body.push(buildCondBranch(module, insn));
        }
        else if insn is bir:BranchInsn {
            wasm:Expression? expr = buildBranch(module, scaffold, insn, block.label);
            if expr != () {
                body.push(expr);
            }
        }
        else if insn is bir:IntBitwiseBinaryInsn {
            body.push(buildBitwiseBinary(module, scaffold, insn));
        }
        else {
            continue;
        }
    }
    scaffold.processedBlocks.push(block.label);
    return body;
}

function buildBranch(wasm:Module module, Scaffold scaffold, bir:BranchInsn insn, bir:Label label) returns wasm:Expression? {
    if insn.backward || scaffold.brBlockLabels.indexOf(label) != () {
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

function buildCondNarrow(wasm:Module module, Scaffold scaffold, bir:CondNarrowInsn insn) returns wasm:Expression {
    return module.localSet(insn.result.number, module.localGet(insn.operand.number));
}

function buildBooleanNotInsn(wasm:Module module, bir:BooleanNotInsn insn) returns wasm:Expression {
    return module.localSet(insn.result.number, module.binary("i32.xor", module.localGet(insn.operand.number), module.addConst({ i32: 1 })));
}
