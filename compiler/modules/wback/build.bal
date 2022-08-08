import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

final int TYPE_INT     = t:INT;
final int TYPE_BOOLEAN = t:BOOLEAN;
final int TYPE_NIL     = t:NIL;
final int TYPE_LIST    = t:LIST_RW;
final int TYPE_STRING  = t:STRING;
final int TYPE_MAP     = t:MAPPING_RW;
final int TYPE_FLOAT   = t:FLOAT;
final int TYPE_ERROR   = t:ERROR;
final int TYPE_DECIMAL  = t:DECIMAL;
const int SELF_REFERENCE = 4;
const int INITIAL_CAPACITY = 4;
const int MAX_CAPACITY = 4294967295;

public type RuntimeType string;
const RuntimeType BOXED_INT_TYPE = "BoxedInt";
const RuntimeType LIST_TYPE = "List";
const RuntimeType MAP_TYPE = "Map";
const RuntimeType ANY_ARR_TYPE = "AnyList";
const RuntimeType STRING_TYPE = "String";
const RuntimeType ANY_TYPE = "Any";
const RuntimeType FLOAT_TYPE = "Float";
const RuntimeType ERROR_TYPE = "Error";
const RuntimeType DECIMAL_TYPE = "Decimal";
const RuntimeType MAP_TYPE_ARR = "AnyList";
const RuntimeType MAPPING_DESC = "MappingDesc";
const RuntimeType LIST_DESC = "ListDesc";
const RuntimeType INT_SUBTYPE = "IntSubtype";
const RuntimeType INT_SUBTYPE_RANGES = "IntSubtypeRanges";
const RuntimeType INT_RANGE = "IntRange";
const RuntimeType STRING_SUBTYPE = "StringSubtype";
const RuntimeType FLOAT_VALUES = "FloatValues";
const RuntimeType FLOAT_SUBTYPE = "FloatSubtype";
const RuntimeType DECIMAL_SUBTYPE = "DecimalSubtype";
const RuntimeType DECIMAL_VALUES = "DecimalValues";
const RuntimeType BOOLEAN_SUBTYPE = "BooleanSubtype";
const RuntimeType BASE_SUBTYPE = "Subtype";
const RuntimeType PRECOMPUTED_SUBTYPE = "PrecomputedSubtype";
const RuntimeType PRECOMPUTED_TIDS = "PrecomputedTids";
const RuntimeType ARRMAP_SUBTYPE = "ArrMapSubtype";
const RuntimeType RECORD_SUBTYPE = "RecordSubtype";
const RuntimeType RECORD_SUBTYPE_FIELDS = "RecordSubtypeFields";
const RuntimeType RECORD_SUBTYPE_FIELD = "RecordSubtypeField";
const RuntimeType COMPLEX_TYPE = "ComplexType";
const RuntimeType SUBTYPE_DATA_LIST = "SubTypeList";
const RuntimeType EQSTACK = "EqStack";

public type ExceptionTag string;
const ExceptionTag BAD_CONVERSION_TAG = "bad-conversion";
const ExceptionTag CUSTOM_EXCEPTION_TAG = "custom-exception";

type RuntimeModule readonly & record {|
    string file;
    int priority;
|};

final RuntimeModule commonMod = {
    file: "common.wat",
    priority: 0
};

final RuntimeModule stringMod = {
    file: "string.wat",
    priority: 6
};

type RuntimeFunction readonly & record {|
    string name;
    wasm:Type returnType;
    RuntimeModule rtModule;
|};

final RuntimeFunction taggedToIntFunction = {
    name: "_bal_tagged_to_int",
    returnType: "i64",
    rtModule: commonMod
};

final RuntimeFunction taggedToBooleanFunction = {
    name: "_bal_tagged_to_boolean",
    returnType: "i32",
    rtModule: commonMod
};

final RuntimeFunction taggedToFloatFunction = {
    name: "_bal_tagged_to_float",
    returnType: "f64",
    rtModule: commonMod
};

final RuntimeFunction getTypeFunction = {
    name: "_bal_get_type",
    returnType: "i32",
    rtModule: commonMod
};

final RuntimeFunction stringConcatFunction = {
    name: "_bal_string_concat",
    returnType: { base: STRING_TYPE },
    rtModule: stringMod
};

final RuntimeFunction createStringFunction = {
    name: "_js_string_create",
    returnType: "eqref",
    rtModule: stringMod
};

final RuntimeFunction createDecimalFunction = {
    name: "_js_decimal_create",
    returnType: "eqref",
    rtModule: numberMod
};

function buildTaggedBoolean(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.i31New(value);
}

function buildTaggedInt(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.structNew(BOXED_INT_TYPE, [module.addConst({ i32: TYPE_INT }), value]);
}

function buildTaggedFloat(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.structNew(FLOAT_TYPE, [module.addConst({ i32: TYPE_FLOAT }), value]);
}

function buildUntagInt(wasm:Module module, Scaffold scaffold, wasm:Expression tagged) returns wasm:Expression {
    return buildRuntimeFunctionCall(module, scaffold.getComponent(), taggedToIntFunction, [tagged]);
}

function buildUntagBoolean(wasm:Module module, Scaffold scaffold, wasm:Expression tagged) returns wasm:Expression {
    return buildRuntimeFunctionCall(module, scaffold.getComponent(), taggedToBooleanFunction, [tagged]);
}

function buildUntagFloat(wasm:Module module, Scaffold scaffold, wasm:Expression tagged) returns wasm:Expression {
    return buildRuntimeFunctionCall(module, scaffold.getComponent(), taggedToFloatFunction, [tagged]);
}

function buildCast(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, RuntimeType rtt) returns wasm:Expression {
    return module.refCast(module.refAs("ref.as_data", tagged), module.globalGet("rtt" + rtt));
}

function maybeCast(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, TaggedRepr repr) returns wasm:Expression {
    wasm:Type wasmType = repr.wasm;
    if wasmType is wasm:ComplexRefType {
        return buildCast(module, scaffold, tagged, wasmType.base);
    }
    return tagged;
}

function buildString(wasm:Module module, Scaffold scaffold, bir:StringOperand operand) returns wasm:Expression {
    wasm:Expression op;
    if operand is bir:StringConstOperand {
        op = buildConstString(module, scaffold.getComponent(), operand.value);
    }
    else {
        op = buildLoad(module, operand);
    }
    wasm:Expression asData = module.refAs("ref.as_data", op);
    return module.refCast(asData, module.globalGet("rttString"));
}

function buildConstString(wasm:Module module, Component component, string value) returns wasm:Expression {
    int[] surrogate = buildSurrogateArray(value);
    string label = component.maybeAddStringRecord(value, surrogate);
    return module.refAs("ref.as_non_null", module.globalGet(label));
}

function buildDecimal(wasm:Module module, Scaffold scaffold, bir:DecimalOperand operand) returns wasm:Expression {
    wasm:Expression op;
    if operand is bir:DecimalConstOperand {
        op = buildConstDecimal(module, scaffold.getComponent(), operand.value);
    }
    else {
        op = buildLoad(module, operand);
    }
    wasm:Expression asData = module.refAs("ref.as_data", op);
    return module.refCast(asData, module.globalGet("rttDecimal"));
}

function buildConstDecimal(wasm:Module module, Component component, decimal value) returns wasm:Expression {
    string label = component.maybeAddDecimalRecord(value);
    return module.refAs("ref.as_non_null", module.globalGet(label));
}

function buildRuntimeFunctionCall(wasm:Module module, Component component, RuntimeFunction rf, wasm:Expression[] args) returns wasm:Expression {
    var { name, returnType, rtModule } = rf;
    component.maybeAddRtFunction("$" + name);
    component.addRtModule(rtModule);
    return module.call(name, args, returnType);
}

function buildRefFunc(wasm:Module module, Component component, RuntimeFunction rf) returns wasm:Expression {
    var { name, rtModule } = rf;
    component.maybeAddRtFunction("$" + name);
    component.addRtModule(rtModule);
    return module.refFunc(name);
}

function maybeAddRtFunction(string[] rtFunctions, string name) {
    if rtFunctions.indexOf(name) == () {
        rtFunctions.push(name);
    }
}

function buildSurrogateArray(string val) returns int[] {
    int[] surrogate = [];
    foreach int i in 0..<val.length() {
        int codepoint = val.getCodePoint(i);
        if codepoint > 65535 {
            surrogate.push(i);
        }
    }
    return surrogate;
}

function buildFloat(wasm:Module module, bir:FloatOperand operand) returns wasm:Expression {
    if operand is bir:FloatConstOperand {
        return module.addConst({ f64: operand.value });
    }
    else {
        return buildLoad(module, operand);
    }
}

function buildMaybeUntag(wasm:Module module, Scaffold scaffold, wasm:Expression value, Repr sourceRepr, Repr targetRepr) returns wasm:Expression {
    if targetRepr == sourceRepr {
        return value;
    }
    return buildUntagged(module, scaffold, value, targetRepr);
}

function buildUntagged(wasm:Module module, Scaffold scaffold, wasm:Expression value, Repr targetRepr) returns wasm:Expression {
    if targetRepr is TaggedRepr {
        return maybeCast(module, scaffold, value, targetRepr);
    }
    else if targetRepr is IntRepr {
        return buildUntagInt(module, scaffold, value);
    }
    else if targetRepr is FloatRepr {
        return buildUntagFloat(module, scaffold, value);
    }
    else {
        return buildUntagBoolean(module, scaffold, value);
    }
}

function buildIsExactType(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, int ty) returns wasm:Expression {
    wasm:Expression taggedType = buildRuntimeFunctionCall(module, scaffold.getComponent(), getTypeFunction, [tagged]);
    wasm:Expression expectedType = module.addConst({ i32: ty });
    return  module.binary("i32.eq", taggedType, expectedType);
}

function buildReprValue(wasm:Module module, Scaffold scaffold, bir:Operand operand) returns [Repr, wasm:Expression] {
    if operand is bir:Register {
        Repr repr = scaffold.getRepr(operand);
        wasm:Expression val = buildLoad(module, operand);
        if repr.wasm is wasm:ComplexRefType {
            return [repr, module.refAs("ref.as_non_null", val)];
        }
        return [repr, val];
    }
    else {
        t:SingleValue value = operand.value;
        if value is string {
            return [REPR_STRING, buildConstString(module, scaffold.getComponent(), value)];
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
        else if value is float {
            return [REPR_FLOAT, module.addConst({ f64: value })];
        }
        else {
            decimal _ = value;
            return [REPR_DECIMAL, buildConstDecimal(module, scaffold.getComponent(), value)];
        }
    }
}

function buildInt(wasm:Module module, bir:IntOperand operand) returns wasm:Expression {
    if operand is bir:IntConstOperand {
        return module.addConst({ i64: operand.value });
    }
    else {
        return buildLoad(module, operand);
    }
}

function buildStore(wasm:Module module, bir:Register reg, wasm:Expression value) returns wasm:Expression {
    return module.localSet(reg.number, value);
} 

function buildLoad(wasm:Module module, bir:Register reg) returns wasm:Expression {
    return module.localGet(reg.number);
}

function buildWideRepr(wasm:Module module, Scaffold scaffold, bir:Operand operand, Repr targetRepr, t:SemType targetType, int? result = ()) returns wasm:Expression {
    wasm:Expression value = buildRepr(module, scaffold, operand, targetRepr);
    return value;
}

function buildRepr(wasm:Module module, Scaffold scaffold, bir:Operand operand, Repr targetRepr) returns wasm:Expression {
    var [sourceRepr, value] = buildReprValue(module, scaffold, operand);
    return buildConvertRepr(module, sourceRepr, value, targetRepr);
}

function buildConvertRepr(wasm:Module module, Repr sourceRepr, wasm:Expression value, Repr targetRepr) returns wasm:Expression {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    if sourceBaseRepr == targetBaseRepr {
        return value;
    }
    if targetBaseRepr == BASE_REPR_TAGGED {
        if sourceBaseRepr == BASE_REPR_INT {
            return buildTaggedInt(module, value);
        }
        else if sourceBaseRepr == BASE_REPR_BOOLEAN {
            return buildTaggedBoolean(module, value);
        }
        else if sourceBaseRepr == BASE_REPR_FLOAT {
            return buildTaggedFloat(module, value);
        }
    }
    panic error("unimplemented conversion required");
}

function buildGlobalString(wasm:Module module, Component component, string val, string global, int[] surrogate, int offset, int length) returns StringRecord {
    wasm:Expression[] body = [];
    string byteStr = buildMemoryData(module, val, global);
    module.addGlobal(global, { base: STRING_TYPE, initial: "null" }, module.refNull(STRING_TYPE));
    wasm:Expression offsetExpr = module.addConst({ i32: offset });
    wasm:Expression jsString = buildRuntimeFunctionCall(module, component, createStringFunction, [
                                                                                                    module.addConst({ i32: offset }), 
                                                                                                    module.addConst({i32: length })
                                                                                                ]);
    wasm:Expression defaultSurrogate = module.arrayNewDef("Surrogate", module.addConst({ i32: surrogate.length() }));
    wasm:Expression defaultHash = module.addConst({ i32: -1 });
    wasm:Expression struct = module.structNew(STRING_TYPE, [
                                                                module.addConst({ i32: TYPE_STRING }), 
                                                                jsString, 
                                                                defaultSurrogate, 
                                                                defaultHash
                                                           ]);
    body.push(module.globalSet(global, struct));
    wasm:Expression surrogateArr = module.structGet(STRING_TYPE, "surrogate", module.globalGet(global));
    foreach int i in 0 ..< surrogate.length() {
        body.push(module.arraySet("Surrogate", 
                                  surrogateArr,      
                                  module.addConst({ i32: i }), 
                                  module.addConst({ i32: surrogate[i] })));
    }
    return { global, body, byteStr, offsetExpr };
}

function buildGlobalDecimal(wasm:Module module, Component component, decimal val, string global, int offset, int length) returns DecimalRecord {
    wasm:Expression[] body = [];
    string value = val.toString();
    string byteStr = buildMemoryData(module, value, global);
    module.addGlobal(global, { base: DECIMAL_TYPE, initial: "null" }, module.refNull(DECIMAL_TYPE));
    wasm:Expression offsetExpr = module.addConst({ i32: offset });
    wasm:Expression jsDecimal = buildRuntimeFunctionCall(module, component, createDecimalFunction, [
                                                                                                    module.addConst({ i32: offset }), 
                                                                                                    module.addConst({i32: length })
                                                                                                ]);
    int scale = getScale(val);
    wasm:Expression struct = module.structNew(DECIMAL_TYPE, [module.addConst({ i32: TYPE_DECIMAL }), jsDecimal, module.addConst({ i32: scale })]);
    body.push(module.globalSet(global, struct));
    return { value, global, body, byteStr, offsetExpr };
}

function buildMemoryData(wasm:Module module, string val, string global) returns string {
    byte[] bytes = val.toBytes();
    string[] hexes = [];
    foreach byte item in bytes {
        string hex = item.toHexString();
        hexes.push(hex.length() == 2 ? hex : "0" + hex);
    }
    string byteStr = "\\".'join(...hexes);
    byteStr = byteStr.length() > 0 ? "\\" + byteStr : byteStr;
    return byteStr;
}
