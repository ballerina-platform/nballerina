import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;

function buildListConstruct(wasm:Module module, Scaffold scaffold, bir:ListConstructInsn insn) returns wasm:Expression {
    final int length = insn.operands.length();
    wasm:Expression[] children = [];
    wasm:Expression list = module.arrayNew("AnyList", module.addConst({ i32: length }), module.rtt("AnyList"));
    wasm:Expression setList = module.localSet(insn.result.number, list);
    wasm:Expression castList = module.refCast(module.refAs("ref.as_data", module.localGet(insn.result.number)), module.rtt("AnyList"));
    children.push(setList);
    if length > 0 {
        foreach int i in 0 ..< length {
            wasm:Expression val = buildWideRepr(module, scaffold, insn.operands[i], REPR_ANY, insn.result.semType);
            wasm:Expression setVal = module.arraySet("AnyList", castList, module.addConst({ i32: i }), val);
            children.push(setVal);
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
