import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

const int TYPE_INT     = 0;
const int TYPE_BOOLEAN = 1;
const int TYPE_NIL     = 2;
const int TYPE_LIST    = 3;
const int TYPE_STRING  = 5;
const int SELF_REFERENCE = 4;
const int INITIAL_CAPACITY = 4;
const int MAX_CAPACITY = 4294967295;

public type RuntimeType string;
const RuntimeType BOXED_INT_TYPE = "BoxedInt";
const RuntimeType LIST_TYPE = "List";
const RuntimeType ANY_ARR_TYPE = "AnyList";
const RuntimeType STRING_TYPE = "String";

public type ExceptionTag string;
const ExceptionTag OVERFLOW_TAG = "overflow";
const ExceptionTag INDEX_OUT_0F_BOUND_TAG = "index-outof-bound";
const ExceptionTag INDEX_TOO_LARGE_TAG = "index-too-large";
const ExceptionTag BAD_CONVERSION_TAG = "bad-conversion";

type RuntimeFunction record {|
    string name;
    wasm:Type[] paramTypes;
    wasm:Type returnType;
    wasm:Type[] localTypes = [];
|};

final RuntimeFunction intToTaggedFunction = {
    name: "int_to_tagged",
    paramTypes: ["i64"],
    returnType: "eqref"
};

final RuntimeFunction taggedToIntFunction = {
    name: "tagged_to_int",
    paramTypes: ["eqref"],
    returnType: "i64"
};

final RuntimeFunction taggedToBooleanFunction = {
    name: "tagged_to_boolean",
    paramTypes: ["eqref"],
    returnType: "i32"
};

final RuntimeFunction getTypeFunction = {
    name: "get_type",
    paramTypes: ["eqref"],
    returnType: "i32",
    localTypes: ["i32"]
};

final RuntimeFunction getTypeChildrenFunction = {
    name: "get_type_children",
    paramTypes: ["eqref", "eqref"],
    returnType: "i32"
};

final RuntimeFunction arrCreateFunction = {
    name: "arr_create",
    paramTypes: ["i64"],
    returnType: { base: LIST_TYPE },
    localTypes: ["i64"]
};

final RuntimeFunction arrLengthFunction = {
    name: "length",
    paramTypes: ["eqref"],
    returnType: "i64",
    localTypes: ["i64"]
};

final RuntimeFunction arrGetCastFunction = {
    name: "arr_get_cast",
    paramTypes: [{ base: LIST_TYPE }, "i32"],
    returnType: "eqref"
};

final RuntimeFunction arrGetFunction = {
    name: "arr_get",
    paramTypes: ["eqref", "i32"],
    returnType: "eqref"
};

final RuntimeFunction arrGrowFunction = {
    name: "arr_grow",
    paramTypes: [{ base: LIST_TYPE }, "eqref", "i64"],
    returnType: "None",
    localTypes: [{ base: ANY_ARR_TYPE, initial: "null" }, "i64", "i64", "i64", { base: ANY_ARR_TYPE, initial: "null" }, "i32", "i32"]
};

final RuntimeFunction arrSetFunction = {
    name: "arr_set",
    paramTypes: [{ base: LIST_TYPE }, "eqref", "i64"],
    returnType: "None"
};

final RuntimeFunction arrPushFunction = {
    name: "push",
    paramTypes: [{ base: LIST_TYPE }, "eqref"],
    returnType: "None"
};

final RuntimeFunction strLengthFunction = {
    name: "str_arr_length",
    paramTypes: ["eqref"],
    returnType: "i32"
};

final RuntimeFunction strGetCharAtFunction = {
    name: "get_char_at",
    paramTypes: ["eqref", "i32"],
    returnType: "i32"
};

final RuntimeFunction getStringFunction = {
    name: "get_string",
    paramTypes: ["eqref"],
    returnType: "externref"
};

function buildTaggedBoolean(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.i31New(value);
}

function buildTaggedInt(wasm:Module module, Scaffold scaffold, wasm:Expression value) returns wasm:Expression {
    var { name, returnType } = intToTaggedFunction;
    return module.call(name, [value], returnType);
}

function buildUntagInt(wasm:Module module, Scaffold scaffold, wasm:Expression tagged) returns wasm:Expression {
    var { name, returnType } = taggedToIntFunction;
    return module.call(name, [tagged], returnType);
}


function buildString(wasm:Module module, Scaffold scaffold, bir:StringOperand operand) returns wasm:Expression {
    if operand is bir:StringConstOperand {
        return buildConstString(module, scaffold, operand.value);
    }
    else {
        return module.localGet((<bir:Register>operand).number);
    }
}

function buildStringRef(wasm:Module module, wasm:Expression operand) returns wasm:Expression {
    wasm:Expression asData = module.refAs("ref.as_data", operand);
    wasm:Expression cast = module.refCast(asData, module.rtt(STRING_TYPE));
    return module.structGet(STRING_TYPE, "val", cast);
}

function buildConstString(wasm:Module module, Scaffold scaffold, string value) returns wasm:Expression {
    int offset = scaffold.offsets[scaffold.offsets.length() - 1];
    byte[] bytes = value.toBytes();
    string[] strBytes = [];
    foreach byte item in bytes {
        strBytes.push(item.toString());
    }
    string byteArr = " ".'join(...strBytes);
    scaffold.setSection(byteArr, bytes.length());
    return module.structNew(STRING_TYPE, [module.call("str_create", [module.addConst({ i32: offset }), module.addConst({ i32: bytes.length() })], "externref")]);
}

function buildIsType(wasm:Module module, wasm:Expression tagged, int ty) returns wasm:Expression {
    var { name, returnType } = getTypeFunction;
    wasm:Expression taggedType = module.call(name, [tagged], returnType);
    wasm:Expression expectedType = module.addConst({ i32: ty });
    return  module.binary("i32.eq", taggedType, expectedType);
}

function buildReprValue(wasm:Module module, Scaffold scaffold, bir:Operand operand) returns [Repr, wasm:Expression] {
    if operand is bir:Register {
        Repr repr = scaffold.getRepr(operand);
        wasm:Expression val = module.localGet(operand.number);
        if repr.wasm is wasm:ComplexRefType {
            return [repr, module.refAs("ref.as_non_null", val)];
        }
        return [repr, val];
    }
    else {
        t:SingleValue value = operand.value;
        if value is string {
            return [REPR_STRING, buildConstString(module, scaffold, value)];
        }
        else if value == () {
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

function buildWideRepr(wasm:Module module, Scaffold scaffold, bir:Operand operand, Repr targetRepr, t:SemType targetType, int? result = ()) returns wasm:Expression {
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
    var { name, returnType } = taggedToBooleanFunction;
    return module.call(name, [tagged], returnType);
}

function addFuncIntToTagged(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = intToTaggedFunction;
    wasm:Expression value = module.localGet(0);
    wasm:Expression struct = module.structNew(BOXED_INT_TYPE, [value]);
    module.addFunction(name, paramTypes, returnType, localTypes, module.addReturn(struct));
}

function addFuncTaggedToInt(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = taggedToIntFunction;
    wasm:Expression value = module.localGet(0);
    wasm:Expression convertedData = module.refAs("ref.as_data", value);
    wasm:Expression cast = module.refCast(convertedData, module.rtt(BOXED_INT_TYPE));
    wasm:Expression structGet = module.structGet(BOXED_INT_TYPE, "val", cast);
    module.addFunction(name, paramTypes, returnType, localTypes, module.addReturn(structGet));
    module.addFunctionExport(name, name);
}

function addFuncTaggedToBoolean(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = taggedToBooleanFunction;
    wasm:Expression ref = module.localGet(0);
    wasm:Expression i31Get = module.i31Get(module.refAs("ref.as_i31", ref));
    module.addFunction(name, paramTypes, returnType, localTypes, module.addReturn(i31Get));
    module.addFunctionExport(name, name);
}

function addFuncGetType(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = getTypeFunction;
    wasm:Expression typeInt = module.localSet(1, module.addConst({ i32 : TYPE_INT }));
    wasm:Expression typeNil = module.localSet(1, module.addConst({ i32: TYPE_NIL }));
    wasm:Expression typeBoolean = module.localSet(1, module.addConst({ i32: TYPE_BOOLEAN }));
    wasm:Expression typeList = module.localSet(1, module.addConst({ i32: TYPE_LIST }));
    wasm:Expression typeStr = module.localSet(1, module.addConst({ i32: TYPE_STRING }));
    wasm:Expression isI31 = module.refIs("ref.is_i31", module.localGet(0));
    wasm:Expression isNull = module.refIs("ref.is_null", module.localGet(0));
    wasm:Expression intToCast = module.rtt(BOXED_INT_TYPE);
    wasm:Expression strToCast = module.rtt(STRING_TYPE);
    wasm:Expression convertedToData = module.refAs("ref.as_data", module.localGet(0));
    wasm:Expression tryCastToInt = module.drop(module.brOnCastFail("$blockInt", convertedToData, intToCast));
    wasm:Expression tryCastToStr = module.drop(module.brOnCastFail("$blockStr", convertedToData, strToCast));
    wasm:Expression blockInt = module.block([tryCastToInt, typeInt, module.br("$blockList"), module.refNull("any")], "$blockInt", { base: "any", initial: "null" });
    wasm:Expression blockStr = module.block([tryCastToStr, typeStr, module.br("$blockList"), module.refNull("any")], "$blockStr", { base: "any", initial: "null" });
    wasm:Expression blockList = module.block([module.drop(blockInt), module.drop(blockStr), typeList], "$blockList");
    wasm:Expression notBoolean = module.addIf(isNull, typeNil, blockList);
    wasm:Expression ifExpr = module.addIf(isI31, typeBoolean, notBoolean);
    module.addFunction(name, paramTypes, returnType, localTypes, module.block([ifExpr, module.addReturn(module.localGet(1))]));
    module.addFunctionExport(name, name);
}

function addFuncGetTypeChildren(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = getTypeChildrenFunction;
    var { name: getType,  returnType: getTypeRetTy } = getTypeFunction;
    wasm:Expression list = module.localGet(0);
    wasm:Expression element = module.localGet(1);
    wasm:Expression cond = module.refEq(list, element);
    wasm:Expression selfReference = module.addReturn(module.addConst({ i32: SELF_REFERENCE }));
    wasm:Expression elseBody = module.addReturn(module.call(getType, [element], getTypeRetTy));
    wasm:Expression body = module.addIf(cond, selfReference, elseBody);
    module.addFunction(name, paramTypes, returnType, localTypes, body);
    module.addFunctionExport(name, name);
}

function addFuncCreateArray(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = arrCreateFunction;
    wasm:Expression initLength = module.localGet(0);
    wasm:Expression length = module.localGet(1);
    wasm:Expression minCapacity = module.addConst({ i64: INITIAL_CAPACITY });
    wasm:Expression checkLength = module.binary("i64.ge_s", initLength, minCapacity);
    wasm:Expression setLength = module.addIf(checkLength, module.localSet(1, initLength), module.localSet(1, minCapacity));
    wasm:Expression list = module.arrayNew(ANY_ARR_TYPE, module.unary("i32.wrap_i64", length));
    wasm:Expression struct = module.structNew(LIST_TYPE, [list, initLength]);
    wasm:Expression body = module.block([setLength, module.addReturn(struct)]);
    module.addFunction(name, paramTypes, returnType, localTypes, body);
}

function addFuncGetArrayLength(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = arrLengthFunction;
    wasm:Expression asData = module.refAs("ref.as_data", module.localGet(0));
    wasm:Expression castToStr = module.refCast(asData, module.rtt(STRING_TYPE));
    wasm:Expression tryCastToStr = module.drop(module.brOnCastFail("$blockStr", asData, module.rtt(STRING_TYPE)));
    wasm:Expression lenStr = module.localSet(1, module.call("str_length", [module.structGet(STRING_TYPE, "val", castToStr)], "i64"));
    wasm:Expression blockStr = module.block([tryCastToStr, lenStr, module.br("$blockList"), module.refNull("any")], "$blockStr", { base: "any", initial: "null" });
    wasm:Expression castToList = module.refCast(asData, module.rtt(LIST_TYPE));
    wasm:Expression lenList = module.localSet(1, module.structGet(LIST_TYPE, "len", castToList));
    wasm:Expression blockList = module.block([module.drop(blockStr), lenList], "$blockList");
    module.addFunction(name, paramTypes, returnType, localTypes, module.block([blockList, module.addReturn(module.localGet(1))]));
    module.addFunctionExport(name, "arr_len");
}

function addFuncGetValueOfIndex(wasm:Module module) {
    var { name: getTy, paramTypes: getTyParams, returnType: getTyReturn, localTypes: getTyLocals } = arrGetFunction;
    var { name: getTyCast, paramTypes: getTyCastParams, returnType: getTyCastRetTy, localTypes: getTyCastLocals } = arrGetCastFunction;
    var { name: len, returnType: lenRetTy } = arrLengthFunction;
    wasm:Expression struct = module.localGet(0);
    wasm:Expression index = module.localGet(1);
    wasm:Expression ltz = module.binary("i32.lt_s", index, module.addConst({ i32: 0 }));
    wasm:Expression geL = module.binary("i32.ge_s", index, module.unary("i32.wrap_i64", module.call(len, [struct], lenRetTy)));
    wasm:Expression cond = module.unary("i32.eqz", module.binary("i32.or", ltz, geL));
    wasm:Expression asData = module.refAs("ref.as_data", struct);
    wasm:Expression cast = module.refCast(asData, module.rtt(LIST_TYPE));
    wasm:Expression trueBody = module.addReturn(module.call(getTyCast, [cast, index], getTyCastRetTy));
    wasm:Expression falseBody = module.throw(INDEX_OUT_0F_BOUND_TAG);
    module.addFunction(getTy, getTyParams, getTyReturn, getTyLocals, module.try(module.addIf(cond, trueBody, falseBody)));
    module.addFunctionExport(getTy, getTy);
    wasm:Expression get = module.arrayGet(ANY_ARR_TYPE, module.structGet(LIST_TYPE, "arr", struct), index);
    module.addFunction(getTyCast, getTyCastParams, getTyCastRetTy, getTyCastLocals, get);
}

function addFuncArrayGrow(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = arrGrowFunction;
    var { name: len, returnType: lenRetTy } = arrLengthFunction;
    wasm:Expression struct = module.localGet(0);
    wasm:Expression nextIndex = module.localGet(2);
    wasm:Expression capacity = module.localGet(5);
    wasm:Expression length = module.localGet(4);
    wasm:Expression arr = module.localSet(3, module.structGet(LIST_TYPE, "arr", struct));
    wasm:Expression lenMaxCheck = module.binary("i64.gt_s", nextIndex, module.addConst({ i64: MAX_CAPACITY }));
    wasm:Expression lenCheck = module.addIf(lenMaxCheck, module.throw(INDEX_TOO_LARGE_TAG));
    wasm:Expression setArrLength = module.localSet(4, module.call(len, [struct], lenRetTy));
    wasm:Expression setArrCapacity = module.localSet(5, module.unary("i64.extend_i32_u", module.arrayLen(ANY_ARR_TYPE, module.localGet(3))));
    wasm:Expression cond = module.binary("i64.le_s", capacity, nextIndex);
    wasm:Expression updatedCapacity = module.localSet(6, module.binary("i64.add", nextIndex, module.binary("i64.shr_u", nextIndex, module.addConst({ i64: 1 }))));
    wasm:Expression capacityCheck = module.addIf(module.binary("i64.gt_s", module.localGet(6), module.addConst({ i64: MAX_CAPACITY })), module.localSet(6, module.addConst({ i64: MAX_CAPACITY})));
    wasm:Expression setNewArr = module.localSet(7, module.arrayNew(ANY_ARR_TYPE, module.unary("i32.wrap_i64", module.localGet(6))));
    wasm:Expression setI = module.localSet(8, module.addConst({ i32 : 0 }));
    wasm:Expression convertLen = module.localSet(9, module.unary("i32.wrap_i64", length));
    wasm:Expression newArr = module.localGet(7);
    wasm:Expression i = module.localGet(8);
    wasm:Expression loopCond = module.binary("i32.lt_s", i, module.localGet(9));
    wasm:Expression newArrSet = module.arraySet(ANY_ARR_TYPE, newArr, i, module.call(arrGetCastFunction.name, [struct, i], arrGetCastFunction.returnType));
    wasm:Expression incrementI = module.localSet(8, module.binary("i32.add", i, module.addConst({ i32: 1 })));
    wasm:Expression structArrSet = module.structSet(LIST_TYPE, "arr", struct, module.refAs("ref.as_non_null", newArr));
    wasm:Expression newElementPush = module.arraySet(ANY_ARR_TYPE, module.structGet(LIST_TYPE, "arr", struct), module.unary("i32.wrap_i64", nextIndex), module.localGet(1));
    wasm:Expression lenCond = module.binary("i64.le_s", length, nextIndex);
    wasm:Expression structSetLen = module.addIf(lenCond, module.structSet(LIST_TYPE, "len", struct, module.binary("i64.add", nextIndex, module.addConst({ i64: 1 }))));
    wasm:Expression loop = module.loop("$block1$continue", module.addIf(loopCond, module.block([newArrSet, incrementI, module.br("$block1$continue")])));
    wasm:Expression cloneArr = module.addIf(cond, module.block([updatedCapacity, capacityCheck, convertLen, setNewArr, setI, loop, structArrSet]));
    wasm:Expression setNewElement = module.block([newElementPush, structSetLen]);
    wasm:Expression body = module.try(module.block([lenCheck, arr, setArrLength, setArrCapacity, cloneArr, setNewElement]));
    module.addFunction(name, paramTypes, returnType, localTypes, body);
}

function addFuncArraySet(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = arrSetFunction;
    var { name: grow, returnType: growRetTy } = arrGrowFunction;
    wasm:Expression struct = module.localGet(0);
    wasm:Expression value = module.localGet(1);
    wasm:Expression index = module.localGet(2);
    wasm:Expression indexGEZ = module.binary("i64.ge_s", index, module.addConst({ i64: 0 }));
    wasm:Expression body = module.addIf(indexGEZ, module.call(grow, [struct, value, index], growRetTy), module.throw(INDEX_OUT_0F_BOUND_TAG));
    module.addFunction(name, paramTypes, returnType, localTypes, module.try(body));
}

function addFuncArrayPush(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = arrPushFunction;
    var { name: grow, returnType: growRetTy } = arrGrowFunction;
    var { name: len, returnType: lenRetTy } = arrLengthFunction;
    wasm:Expression struct = module.localGet(0);
    wasm:Expression value = module.localGet(1);
    wasm:Expression call = module.call(grow, [struct, value, module.call(len, [struct], lenRetTy)], growRetTy);
    module.addFunction(name, paramTypes, returnType, localTypes, call);
}

function addFuncGetStrLength(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = strLengthFunction;
    wasm:Expression asData = module.refAs("ref.as_data", module.localGet(0));
    wasm:Expression cast = module.refCast(asData, module.rtt("chars"));
    wasm:Expression len = module.arrayLen("chars", cast);
    module.addFunction(name, paramTypes, returnType, localTypes, len);
    module.addFunctionExport(name, name);
}

function addFuncStrGetCharAt(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = strGetCharAtFunction;
    wasm:Expression arr = module.localGet(0);
    wasm:Expression index = module.localGet(1);
    wasm:Expression asData = module.refAs("ref.as_data", arr);
    wasm:Expression cast = module.refCast(asData, module.rtt("chars"));
    wasm:Expression body = module.arrayGet("chars", cast, index);
    module.addFunction(name, paramTypes, returnType, localTypes, body);
    module.addFunctionExport(name, name);
}

function addFuncGetString(wasm:Module module) {
    var { name, paramTypes, returnType, localTypes } = getStringFunction;
    wasm:Expression arr = module.localGet(0);
    wasm:Expression asData = module.refAs("ref.as_data", arr);
    wasm:Expression cast = module.refCast(asData, module.rtt("String"));
    wasm:Expression body = module.structGet("String", "val", cast);
    module.addFunction(name, paramTypes, returnType, localTypes, body);
    module.addFunctionExport(name, name);
}
