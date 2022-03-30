import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

const int TYPE_INT     = 0;
const int TYPE_BOOLEAN = 1;
const int TYPE_NIL     = 2;
const int TYPE_LIST    = 3;

function buildTaggedBoolean(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.i31New(value);
}

function buildTaggedInt(wasm:Module module, Scaffold scaffold, wasm:Expression value) returns wasm:Expression {
    return module.call("int_to_tagged", [value], "i64");
}

function buildUntagInt(wasm:Module module, Scaffold scaffold, wasm:Expression tagged) returns wasm:Expression {
    return module.call("tagged_to_int", [tagged], "i64");
}

function buildIsType(wasm:Module module, wasm:Expression tagged, int ty) returns wasm:Expression {
    return  module.binary("i32.eq", module.call("get_type", [tagged], "i32"), module.addConst({ i32: ty }));
}

function buildReprValue(wasm:Module module, Scaffold scaffold, bir:Operand operand) returns [Repr, wasm:Expression] {
    if operand is bir:Register {
        Repr repr = scaffold.getRepr(operand);
        return [repr, module.localGet(operand.number)];
    }
    else {
        t:SingleValue value = operand.value;
        if value == () {
            return [REPR_NIL, module.refNull()];
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

function buildInt(wasm:Module module, bir:IntOperand operand) returns wasm:Expression {
    if operand is bir:IntConstOperand {
        return module.addConst({ i64: operand.value });
    }
    else {
        return module.localGet(operand.number);
    }
}

function buildWideRepr(wasm:Module module, Scaffold scaffold, bir:Operand operand, Repr targetRepr, t:SemType targetType) returns wasm:Expression {
    wasm:Expression value = buildRepr(module, scaffold, operand, targetRepr);
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
    return module.call("tagged_to_boolean", [tagged], "i32");
}

function addFuncIntToTagged(wasm:Module module) {
    module.addType("BoxedInt", module.struct(["val"], ["i64"]));
    wasm:Expression struct = module.structNew("BoxedInt", module.localGet(0), module.rtt("BoxedInt"));
    module.addFunction("int_to_tagged", ["i64"], "eqref", [], module.addReturn(struct));
}

function addFuncTaggedToInt(wasm:Module module) {
    wasm:Expression asData = module.refAs("ref.as_data", module.localGet(0));
    wasm:Expression cast = module.refCast(asData, module.rtt("BoxedInt"));
    wasm:Expression structGet = module.structGet("BoxedInt", "val", cast);
    module.addFunction("tagged_to_int", ["eqref"], "i64", [], module.addReturn(structGet));
    module.addFunctionExport("tagged_to_int", "tagged_to_int");
}

function addFuncTaggedToBoolean(wasm:Module module) {
    wasm:Expression i31Get = module.i31Get(module.refAs("ref.as_i31", module.localGet(0)));
    module.addFunction("tagged_to_boolean", ["eqref"], "i32", [], module.addReturn(i31Get));
    module.addFunctionExport("tagged_to_boolean", "tagged_to_boolean");
}

function addFuncGetType(wasm:Module module) {
    wasm:Expression isI31 = module.refIs("ref.is_i31", module.localGet(0));
    wasm:Expression isNull = module.refIs("ref.is_null", module.localGet(0));
    wasm:Expression trycastToStruct = module.brOnCastFail("$blockInt", module.refAs("ref.as_data", module.localGet(0)), module.rtt("BoxedInt"));
    wasm:Expression dropCast = module.drop(trycastToStruct);
    wasm:Expression setToInt = module.localSet(1, module.addConst({ i32 : TYPE_INT }));
    wasm:Expression blockInt = module.block([dropCast, setToInt, module.br("$blockList"), module.refNull("any")], "$blockInt", { tokens: ["(", "ref", "null", "any", ")"] });
    wasm:Expression blockList = module.block([module.drop(blockInt), module.localSet(1, module.addConst({ i32 : TYPE_LIST }))], "$blockList");
    wasm:Expression notI31 = module.addIf(isNull, module.localSet(1, module.addConst({ i32: TYPE_NIL })), blockList);
    wasm:Expression ifExpr = module.addIf(isI31, module.localSet(1, module.addConst({ i32: TYPE_BOOLEAN })), notI31);
    module.addFunction("get_type", ["eqref"], "i32", ["i32"], module.block([ifExpr, module.addReturn(module.localGet(1))]));
    module.addFunctionExport("get_type", "get_type");
}

function addFuncGetArrayLength(wasm:Module module) {
    wasm:Expression asData = module.refAs("ref.as_data", module.localGet(0));
    wasm:Expression cast = module.refCast(asData, module.rtt("AnyList"));
    wasm:Expression len = module.arrayLen("AnyList", cast);
    module.addFunction("length", ["eqref"], "i32", [], module.addReturn(len));
    module.addFunctionExport("length", "arr_len");
}

function addFuncGetValueOfIndex(wasm:Module module) {
    wasm:Expression asData = module.refAs("ref.as_data", module.localGet(0));
    wasm:Expression cast = module.refCast(asData, module.rtt("AnyList"));
    wasm:Expression get = module.arrayGet("AnyList", cast, module.localGet(1));
    module.addFunction("arr_get", ["eqref", "i32"], "eqref", [], module.addReturn(get));
    module.addFunctionExport("arr_get", "arr_get");
}

function addFuncArrayPush(wasm:Module module) {
    wasm:Expression list = module.localGet(0);
    wasm:Expression castList = module.refCast(module.refAs("ref.as_data", list), module.rtt("AnyList"));
    wasm:Expression curLength = module.call("length", [list], "i32");
    wasm:Expression setVal = module.arraySet("AnyList", castList, curLength, module.localGet(1));
    module.addFunction("push", ["eqref", "eqref"], "None", [], module.addReturn(setVal));
}
