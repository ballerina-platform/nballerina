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
            body.push(buildNoPanicArithmeticBinary(module, insn));
        }
        else if insn is bir:IntBitwiseBinaryInsn {
            body.push(buildBitwiseBinary(module, insn));
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
        else if insn is bir:ConvertToFloatInsn {
            body.push(buildConvertToFloat(module, scaffold, insn));
        }
        else if insn is bir:ErrorConstructInsn {
            body.push(buildErrorConstruct(module, scaffold, insn));
        }
        else if insn is bir:PanicInsn {
            body.push(buildPanic(module, scaffold, insn));
        }
        else if insn is bir:TypeBranchInsn {
            body.push(buildTypeBranch(module, scaffold, insn));
        }
        else if insn is bir:TypeTestInsn {
            body.push(buildTypeTest(module, scaffold, insn));
        }
        else if insn is bir:CallInsn {
            body.push(buildCall(module, scaffold, insn));
        }
        else if insn is bir:FloatArithmeticBinaryInsn {
            body.push(buildFloatArithmeticBinary(module, scaffold, insn));
        }
        else if insn is bir:FloatNegateInsn {
            body.push(buildFloatNegate(module, insn));
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
    }
    scaffold.setProcessedBlock(block.label);
    return body;
}

function buildBranch(wasm:Module module, Scaffold scaffold, bir:BranchInsn insn, bir:Label label) returns wasm:Expression? {
    if insn.backward || scaffold.blockHasBreak(label) || scaffold.isStepBlock(insn.dest) {
        return module.br("block$" + insn.dest.toString() + "$break");
    }
    return ();
}

function buildCondBranch(wasm:Module module, bir:CondBranchInsn insn) returns wasm:Expression {
    return buildLoad(module, insn.operand);
}

function buildRet(wasm:Module module, Scaffold scaffold, bir:RetInsn insn) returns wasm:Expression {
    RetRepr repr = scaffold.getRetRepr();
    wasm:Expression? ret = repr is Repr ? buildWideRepr(module, scaffold, insn.operand, repr, scaffold.returnType) : ();
    return module.addReturn(ret);
}

function buildStringConcat(wasm:Module module, Scaffold scaffold, bir:StringConcatInsn insn) returns wasm:Expression {
    wasm:Expression value = buildRuntimeFunctionCall(module,
                                                     scaffold.getComponent(),
                                                     stringConcatFunction,
                                                     [
                                                        buildString(module, scaffold, insn.operands[0]),
                                                        buildString(module, scaffold, insn.operands[1])
                                                     ]);
    return buildStore(module, insn.result, value);
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
    bir:Symbol funcSymbol = ref.symbol;
    string mangledName;
    if funcSymbol is bir:ExternalSymbol {
        mangledName = mangleExternalSymbol(funcSymbol);
        Component component = scaffold.getComponent();
        component.mayBeAddRtFunction("$" + mangledName);
    }
    else {
        mangledName = mangleInternalSymbol(scaffold.modId, funcSymbol);
    }
    wasm:Expression call = module.call(mangledName, args, retRepr.wasm);
    return retRepr !is VoidRepr ? buildStore(module, insn.result, call) : call;
}

function buildAssign(wasm:Module module, Scaffold scaffold, bir:AssignInsn insn) returns wasm:Expression {
    return buildStore(module,
                      insn.result, 
                      buildWideRepr(module, scaffold, insn.operand, scaffold.getRepr(insn.result), insn.result.semType));
}

function buildErrorConstruct(wasm:Module module, Scaffold scaffold, bir:ErrorConstructInsn insn) returns wasm:Expression {
    return buildStore(module, insn.result, 
                      module.structNew(ERROR_TYPE, 
                                       [
                                            module.addConst({ i32: TYPE_ERROR }), 
                                            buildString(module, scaffold, insn.operand)
                                       ]));
}

function buildPanic(wasm:Module module, Scaffold scaffold, bir:PanicInsn insn) returns wasm:Expression {
    scaffold.setHasPanic();
    wasm:Expression errSet = module.globalSet("bal$err", buildCast(module, scaffold, buildLoad(module, insn.operand), ERROR_TYPE));
    return module.block([errSet, module.br("normal-block")]);
}

function buildBooleanNotInsn(wasm:Module module, bir:BooleanNotInsn insn) returns wasm:Expression {
    return buildStore(module, 
                      insn.result, 
                      module.binary("i32.xor", buildLoad(module, insn.operand), module.addConst({ i32: 1 })));
}
