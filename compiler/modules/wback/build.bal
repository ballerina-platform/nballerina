import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

final int TYPE_INT     = t:INT;
final int TYPE_BOOLEAN = t:BOOLEAN;
final int TYPE_NIL     = t:NIL;
final int TYPE_LIST    = t:LIST;
final int TYPE_STRING  = t:STRING;
final int TYPE_MAP     = t:MAPPING;
final int TYPE_FLOAT   = t:FLOAT;
final int TYPE_ERROR   = t:ERROR;
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

public type ExceptionTag string;
const ExceptionTag BAD_CONVERSION_TAG = "bad-conversion";
const ExceptionTag CUSTOM_EXCEPTION_TAG = "custom-exception";

type RuntimeFunction readonly & record {|
    string name;
    wasm:Type returnType;
|};

final RuntimeFunction taggedToIntFunction = {
    name: "tagged_to_int",
    returnType: "i64"
};

final RuntimeFunction taggedToBooleanFunction = {
    name: "tagged_to_boolean",
    returnType: "i32"
};

final RuntimeFunction taggedToFloatFunction = {
    name: "tagged_to_float",
    returnType: "f64"
};

final RuntimeFunction getTypeFunction = {
    name: "get_type",
    returnType: "i32"
};

final RuntimeFunction arrCreateFunction = {
    name: "arr_create",
    returnType: { base: LIST_TYPE }
};

final RuntimeFunction arrGetFunction = {
    name: "arr_get",
    returnType: "eqref"
};

final RuntimeFunction arrSetFunction = {
    name: "arr_set",
    returnType: "None"
};

final RuntimeFunction stringCompFunction = {
    name: "string_compare",
    returnType: "i32"
};

final RuntimeFunction stringConcatFunction = {
    name: "w_str_concat",
    returnType: { base: STRING_TYPE }
};

final RuntimeFunction createStringFunction = {
    name: "str_create",
    returnType: "eqref"
};

final RuntimeModule stringMod = "string.wat";
final RuntimeModule taggingMod = "tagging.wat";

function buildTaggedBoolean(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.i31New(value);
}

function buildTaggedInt(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.structNew(BOXED_INT_TYPE, [module.addConst({ i32: TYPE_INT }), value]);
}

function buildTaggedFloat(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.structNew(FLOAT_TYPE, [module.addConst({ i32: TYPE_FLOAT }), value]);
}

function buildUntagInt(wasm:Module module, wasm:Expression tagged) returns wasm:Expression {
    return buildRuntimeFunctionCall(module, taggedToIntFunction, [tagged]);
}

function buildUntagBoolean(wasm:Module module, wasm:Expression tagged) returns wasm:Expression {
    return buildRuntimeFunctionCall(module, taggedToBooleanFunction, [tagged]);
}

function buildUntagFloat(wasm:Module module, wasm:Expression tagged) returns wasm:Expression {
    return buildRuntimeFunctionCall(module, taggedToFloatFunction, [tagged]);
}

function buildCast(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, RuntimeType rtt) returns wasm:Expression {
    return module.refCast(module.refAs("ref.as_data", tagged), module.globalGet("rtt" + rtt));
}

function mayBeCast(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, TaggedRepr repr) returns wasm:Expression {
    wasm:Type wasmType = repr.wasm;
    if wasmType is wasm:ComplexRefType {
        return buildCast(module, scaffold, tagged, wasmType.base);
    }
    return tagged;
}

function buildString(wasm:Module module, Scaffold scaffold, bir:StringOperand operand) returns wasm:Expression {
    wasm:Expression op;
    if operand is bir:StringConstOperand {
        op = buildConstString(module, scaffold, operand.value);
    }
    else {
        op = buildLoad(module, operand);
    }
    wasm:Expression asData = module.refAs("ref.as_data", op);
    return module.refCast(asData, module.globalGet("rttString"));
}

function buildConstString(wasm:Module module, Scaffold scaffold, string value) returns wasm:Expression {
    int[] surrogate = buildSurrogateArray(value);
    string label = scaffold.mayBeAddStringRecord(value, surrogate);
    return module.refAs("ref.as_non_null", module.globalGet(label));
}

function buildRuntimeFunctionCall(wasm:Module module, RuntimeFunction rf, wasm:Expression[] args) returns wasm:Expression {
    var { name, returnType } = rf;
    return module.call(name, args, returnType);
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

function buildUntagged(wasm:Module module, Scaffold scaffold, wasm:Expression value, Repr targetRepr) returns wasm:Expression {
    if targetRepr is TaggedRepr {
        return mayBeCast(module, scaffold, value, targetRepr);
    }
    else if targetRepr is IntRepr {
        return buildUntagInt(module, value);
    }
    else if targetRepr is FloatRepr {
        return buildUntagFloat(module, value);
    }
    else {
        return buildUntagBoolean(module, value);
    }
}

function buildIsExactType(wasm:Module module, wasm:Expression tagged, int ty) returns wasm:Expression {
    wasm:Expression taggedType = buildRuntimeFunctionCall(module, getTypeFunction, [tagged]);
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
        else if value is float {
            return [REPR_FLOAT, module.addConst({ f64: value })];
        }
    }
    panic error("type not handled");
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
