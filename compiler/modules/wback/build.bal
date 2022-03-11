import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

const TAG_SHIFT = 56;
const int TAG_MASK = 15 << TAG_SHIFT;
const int TAG_INT = t:UT_INT << TAG_SHIFT;
const int TAG_BOOLEAN  = t:UT_BOOLEAN << TAG_SHIFT;
const int FLAG_IMMEDIATE = 0x20 << TAG_SHIFT;
const int TAG_NIL      = 0;
const int TRUNCATE = (1 << TAG_SHIFT) - 1;
const int MAX_IMMEDIATE_INT = (1 << (TAG_SHIFT - 1)) - 1;
const int MIN_IMMEDIATE_INT = - (1 << (TAG_SHIFT - 1));


function buildTaggedBoolean(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    wasm:Expression immediate = module.binary("i64.or", module.addConst({ i64: FLAG_IMMEDIATE }), module.unary("i64.extend_i32_u", value));
    return module.binary("i64.or", immediate, module.addConst({ i64: TAG_BOOLEAN }));
}

function buildTaggedInt(wasm:Module module, Scaffold scaffold, wasm:Expression value) returns wasm:Expression {
    return module.call("int_to_tagged", [value], 1, "i64");
}

function buildUntagInt(wasm:Module module, Scaffold scaffold, wasm:Expression tagged) returns wasm:Expression {
    return module.call("tagged_to_int", [tagged], 1, "i64");
}

function buildHasTag(wasm:Module module, wasm:Expression tagged, int tag) returns wasm:Expression {
    return buildTestTag(module, tagged, tag, TAG_MASK);
}

function buildTestTag(wasm:Module module, wasm:Expression tagged, int tag, int mask) returns wasm:Expression {
    return module.binary("i64.eq", module.addConst({ i64: tag }), module.binary("i64.and", tagged, module.addConst({ i64: mask })));
}
function buildReprValue(wasm:Module module, Scaffold scaffold, bir:Operand operand) returns [Repr, wasm:Expression] {
    if operand is bir:Register {
        Repr repr = scaffold.getRepr(operand);
        return [repr, module.localGet(operand.number, repr.wasm)];
    }
    else {
        t:SingleValue value = operand.value;
        if value == () {
            return [REPR_NIL, module.addConst({ i64: FLAG_IMMEDIATE })];
        }
        else if value is boolean {
            return [REPR_BOOLEAN, module.addConst({ i32: value ? 1 : 0 })];
        }
        else if value is int {
            return [REPR_INT, module.addConst({ i64: value })];
        }
    }
    panic error("type not handled");
}

// Build a value as REPR_INT
function buildInt(wasm:Module module, bir:IntOperand operand) returns wasm:Expression {
    if operand is bir:IntConstOperand {
        return module.addConst({ i64: operand.value });
    }
    else {
        return module.localGet(operand.number, "i64");
    }
}

function buildWideRepr(wasm:Module module, Scaffold scaffold, bir:Operand operand, Repr targetRepr, t:SemType targetType) returns wasm:Expression {
    wasm:Expression value = buildRepr(module, scaffold, operand, targetRepr);
    // if operand is bir:Register && operationWidens(scaffold, operand, targetType) {
    //     value = buildClearExact(module, scaffold, value, operand.semType);
    // }
    return value;
}

function buildRepr(wasm:Module module, Scaffold scaffold, bir:Operand operand, Repr targetRepr) returns wasm:Expression {
    var [sourceRepr, value] = buildReprValue(module, scaffold, operand);
    return buildConvertRepr(module, scaffold, sourceRepr, value, targetRepr);
}

function buildConvertRepr(wasm:Module module, Scaffold scaffold, Repr sourceRepr, wasm:Expression value, Repr targetRepr) returns wasm:Expression {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    if sourceBaseRepr == targetBaseRepr {
        return value;
    }
    if targetBaseRepr == BASE_REPR_TAGGED {
        if sourceBaseRepr == BASE_REPR_INT {
            return buildTaggedInt(module, scaffold, value);
        }
        else if sourceBaseRepr == BASE_REPR_BOOLEAN {
            return buildTaggedBoolean(module, value);
        }
    }
    panic error("unimplemented conversion required");
}

function buildUntagBoolean(wasm:Module module, wasm:Expression tagged) returns wasm:Expression {
    return module.binary("i64.and", module.addConst({ i64: 1 }), tagged);
}

function buildTruncateBoolean(wasm:Module module, wasm:Expression val, bir:Register result) returns wasm:Expression {
    return module.addIf(module.unary("i64.eqz", val), module.localSet(result.number, module.addConst({ i32: 0 })), module.localSet(result.number, module.addConst({ i32: 1 })));
}

function taggedInt(wasm:Module module) {
    module.addGlobal("offset", "i32", true, module.addConst({ i32: 0 }));
    wasm:Expression value = module.localGet(0, "i64");
    wasm:Expression offset = module.globalGet("offset", "i32");
    wasm:Expression valLMax = module.binary("i64.lt_s", value, module.addConst({ i64: MAX_IMMEDIATE_INT }));
    wasm:Expression valGMin = module.binary("i64.gt_s", value, module.addConst({ i64: MIN_IMMEDIATE_INT }));
    wasm:Expression condition = module.binary("i32.and", valGMin, valLMax);
    wasm:Expression truncated = module.binary("i64.and", value, module.addConst({ i64: TRUNCATE }));
    wasm:Expression immediated = module.binary("i64.or", truncated, module.addConst({ i64: FLAG_IMMEDIATE }));
    wasm:Expression trueBody = module.addReturn(module.binary("i64.or", immediated, module.addConst({ i64: TAG_INT })));
    wasm:Expression store = module.store(8, 0, 0, offset, value, "i64");
    wasm:Expression location = module.localSet(1, offset);
    wasm:Expression incrementOffset = module.globalSet("offset", module.binary("i32.add", offset, module.addConst({ i32: 8 })));
    wasm:Expression falseReturn = module.addReturn(module.binary("i64.or", module.addConst({ i64: TAG_INT }), module.unary("i64.extend_i32_u", module.localGet(1, "i32"))));
    wasm:Expression elseBody = module.block((), [store, location, incrementOffset, falseReturn], 4);
    wasm:Expression body = module.addIf(condition, trueBody, elseBody);
    module.addFunction("int_to_tagged", ["i64"], "i64", ["i32"], 1, body);
}
