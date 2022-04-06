import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

const int TYPE_INT     = 0;
const int TYPE_BOOLEAN = 1;
const int TYPE_NIL     = 2;
const int TYPE_LIST    = 3;
const int INITIAL_CAPACITY = 4;
const int MAX_CAPACITY = 4294967295;

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
        if repr.wasm is wasm:ComplexRefType {
            return [repr, module.refAs("ref.as_non_null", module.localGet(operand.number))];
        }
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
    module.addType("BoxedInt", module.struct(["val"], ["i64"], [true]));
    wasm:Expression struct = module.structNew("BoxedInt", [module.localGet(0)]);
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

function addFuncGetTypeChildren(wasm:Module module) {
    wasm:Expression cond = module.refEq(module.localGet(0), module.localGet(1));
    wasm:Expression body = module.addIf(cond, module.addReturn(module.addConst({ i32: 4 })), module.addReturn(module.call("get_type", [module.localGet(1)], "i32")));
    module.addFunction("get_type_children", ["eqref", "eqref"], "i32", [], body);
    module.addFunctionExport("get_type_children", "get_type_children");
}

function addFuncCreateArray(wasm:Module module) {
    wasm:Expression checkLength = module.binary("i64.ge_s", module.localGet(0), module.addConst({ i64: INITIAL_CAPACITY }));
    wasm:Expression length = module.addIf(checkLength, module.localSet(1, module.localGet(0)), module.localSet(1, module.addConst({ i64 : INITIAL_CAPACITY })));
    wasm:Expression list = module.arrayNew("AnyList", module.unary("i32.wrap_i64", module.localGet(1)));
    wasm:Expression struct = module.structNew("List", [list, module.localGet(0)]);
    wasm:Expression body = module.block([length, module.addReturn(struct)]);
    module.addFunction("arr_create", ["i64"], { base: "List" }, ["i64"], body);
}

function addFuncGetArrayLength(wasm:Module module) {
    wasm:Expression asData = module.refAs("ref.as_data", module.localGet(0));
    wasm:Expression cast = module.refCast(asData, module.rtt("List"));
    wasm:Expression len = module.structGet("List", "len", cast);
    module.addFunction("length", ["eqref"], "i64", [], len);
    module.addFunctionExport("length", "arr_len");
}

function addFuncGetValueOfIndex(wasm:Module module) {
    wasm:Expression struct = module.localGet(0);
    wasm:Expression index = module.localGet(1);
    wasm:Expression ltz = module.binary("i32.lt_s", index, module.addConst({ i32: 0 }));
    wasm:Expression geL = module.binary("i32.ge_s", index, module.unary("i32.wrap_i64", module.call("length", [struct], "i64")));
    wasm:Expression cond = module.binary("i32.eq", module.binary("i32.or", ltz, geL), module.addConst({ i32: 0 }));
    wasm:Expression asData = module.refAs("ref.as_data", struct);
    wasm:Expression cast = module.refCast(asData, module.rtt("List"));
    wasm:Expression trueBody = module.addReturn(module.call("arr_get_cast", [cast, index], "eqref"));
    wasm:Expression falseBody = module.throw("index-outof-bound");
    module.addFunction("arr_get", ["eqref", "i32"], "eqref", [], module.try(module.addIf(cond, trueBody, falseBody)));
    module.addFunctionExport("arr_get", "arr_get");
    wasm:Expression get = module.arrayGet("AnyList", module.structGet("List", "arr", module.localGet(0)), module.localGet(1));
    module.addFunction("arr_get_cast", [{ base: "List" }, "i32"], "eqref", [], get);
}

function addFuncArrayGrow(wasm:Module module) {
    wasm:Expression capacity = module.localGet(5);
    wasm:Expression length = module.localGet(4);
    wasm:Expression nextIndex = module.localGet(2);
    wasm:Expression arr = module.localSet(3, module.structGet("List", "arr", module.localGet(0)));
    wasm:Expression lenMaxCheck = module.binary("i64.gt_s", nextIndex, module.addConst({ i64: MAX_CAPACITY }));
    wasm:Expression lenCheck = module.addIf(lenMaxCheck, module.throw("index-too-large"));
    wasm:Expression setArrLength = module.localSet(4, module.call("length", [module.localGet(0)], "i64"));
    wasm:Expression setArrCapacity = module.localSet(5, module.unary("i64.extend_i32_u", module.arrayLen("AnyList", module.localGet(3))));
    wasm:Expression cond = module.binary("i64.le_s", capacity, nextIndex);
    wasm:Expression updatedCapacity = module.localSet(6, module.binary("i64.add", nextIndex, module.binary("i64.shr_u", nextIndex, module.addConst({ i64: 1 }))));
    wasm:Expression capacityCheck = module.addIf(module.binary("i64.gt_s", module.localGet(6), module.addConst({ i64: MAX_CAPACITY })), module.localSet(6, module.addConst({ i64: MAX_CAPACITY})));
    wasm:Expression setNewArr = module.localSet(7, module.arrayNew("AnyList", module.unary("i32.wrap_i64", module.localGet(6))));
    wasm:Expression setI = module.localSet(8, module.addConst({ i32 : 0 }));
    wasm:Expression convertLen = module.localSet(9, module.unary("i32.wrap_i64", length));
    wasm:Expression newArr = module.localGet(7);
    wasm:Expression i = module.localGet(8);
    wasm:Expression loopCond = module.binary("i32.lt_s", i, module.localGet(9));
    wasm:Expression newArrSet = module.arraySet("AnyList", newArr, i, module.call("arr_get_cast", [module.localGet(0), i], "eqref"));
    wasm:Expression incrementI = module.localSet(8, module.binary("i32.add", i, module.addConst({ i32: 1 })));
    wasm:Expression structArrSet = module.structSet("List", "arr", module.localGet(0), module.refAs("ref.as_non_null", newArr));
    wasm:Expression newElementPush = module.arraySet("AnyList", module.structGet("List", "arr", module.localGet(0)), module.unary("i32.wrap_i64", nextIndex), module.localGet(1));
    wasm:Expression lenCond = module.binary("i64.le_s", length, nextIndex);
    wasm:Expression structSetLen = module.addIf(lenCond, module.structSet("List", "len", module.localGet(0), module.binary("i64.add", nextIndex, module.addConst({ i64: 1 }))));
    wasm:Expression loop = module.loop("$block1$continue", module.addIf(loopCond, module.block([newArrSet, incrementI, module.br("$block1$continue")])));
    wasm:Expression body = module.try(module.block([lenCheck, arr, setArrLength, setArrCapacity, module.addIf(cond, module.block([updatedCapacity, capacityCheck, convertLen, setNewArr, setI, loop, structArrSet])), module.block([newElementPush, structSetLen])]));
    module.addFunction("arr_grow", [{ base: "List" }, "eqref", "i64"], "None", [{ base: "AnyList", initial: "null" }, "i64", "i64", "i64", { base: "AnyList", initial: "null" }, "i32", "i32"], body);
}

function addFuncArraySet(wasm:Module module) {
    wasm:Expression struct = module.localGet(0);
    wasm:Expression value = module.localGet(1);
    wasm:Expression index = module.localGet(2);
    wasm:Expression indexGEZ = module.binary("i64.ge_s", index, module.addConst({ i64: 0 }));
    wasm:Expression body = module.addIf(indexGEZ, module.call("arr_grow", [struct, value, index], "None"), module.throw("index-outof-bound"));
    module.addFunction("arr_set", [{ base: "List" }, "eqref", "i64"], "None", [], module.try(body));
}

function addFuncArrayPush(wasm:Module module) {
    wasm:Expression struct = module.localGet(0);
    wasm:Expression value = module.localGet(1);
    wasm:Expression call = module.call("arr_grow", [struct, value, module.call("length", [struct], "i64")], "None");
    module.addFunction("push", [{ base: "List" }, "eqref"], "None", [], call);
}
