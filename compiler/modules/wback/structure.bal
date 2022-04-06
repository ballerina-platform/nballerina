import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

function buildListConstruct(wasm:Module module, Scaffold scaffold, bir:ListConstructInsn insn) returns wasm:Expression {
    final int length = insn.operands.length();
    wasm:Expression[] children = [];
    wasm:Expression list = module.call("arr_create", [module.addConst({ i64: length })], "eqref");
    wasm:Expression setList = module.localSet(insn.result.number, list);
    children.push(setList);
    if length > 0 {
        foreach int i in 0 ..< length {
            wasm:Expression val = buildWideRepr(module, scaffold, insn.operands[i], REPR_ANY, insn.result.semType);
            wasm:Expression arrSet = module.call("arr_set", [module.refAs("ref.as_non_null", module.localGet(insn.result.number)), val, module.addConst({ i64 : i })], "None");
            children.push(arrSet);
        }
    }
    return module.block(children);
}

function buildListGet(wasm:Module module, Scaffold scaffold, bir:ListGetInsn insn) returns wasm:Expression {
    bir:Register listReg = insn.operands[0];
    bir:IntOperand indexOperand = insn.operands[1];
    wasm:Expression call = module.call("arr_get", [module.localGet(listReg.number), module.unary("i32.wrap_i64", buildRepr(module, scaffold, indexOperand, REPR_INT))], "eqref");
    return module.localSet(insn.result.number, call);
}

function buildListSet(wasm:Module module, Scaffold scaffold, bir:ListSetInsn insn) returns wasm:Expression {
    wasm:Expression listOperand = buildRepr(module, scaffold, insn.operands[0], REPR_LIST);
    wasm:Expression indexOperand = buildRepr(module, scaffold, insn.operands[1], REPR_INT);
    wasm:Expression newMemberOperand = buildRepr(module, scaffold, insn.operands[2], REPR_ANY);
    return module.call("arr_set", [listOperand, newMemberOperand, indexOperand], "None");
}
