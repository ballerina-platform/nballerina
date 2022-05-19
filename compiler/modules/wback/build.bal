import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

const int TYPE_INT     = 0;
const int TYPE_BOOLEAN = 1;
const int TYPE_NIL     = 2;
const int TYPE_LIST    = 3;
const int TYPE_STRING  = 5;
const int TYPE_MAP     = 6;
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

public type ExceptionTag string;
const ExceptionTag OVERFLOW_TAG = "overflow";
const ExceptionTag INDEX_OUT_0F_BOUND_TAG = "index-outof-bound";
const ExceptionTag INDEX_TOO_LARGE_TAG = "index-too-large";
const ExceptionTag BAD_CONVERSION_TAG = "bad-conversion";

type RuntimeFunction record {|
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
    name: "str_comp",
    returnType: "i32"
};

final RuntimeFunction stringConcatFunction = {
    name: "w_str_concat",
    returnType: { base: STRING_TYPE }
};

final RuntimeModule stringMod = "string";
final RuntimeModule taggingMod = "tagging";

function buildTaggedBoolean(wasm:Module module, wasm:Expression value) returns wasm:Expression {
    return module.i31New(value);
}

function buildTaggedInt(wasm:Module module, Scaffold scaffold, wasm:Expression value) returns wasm:Expression {
    return module.structNew(BOXED_INT_TYPE, [module.addConst({ i32: TYPE_INT }), value]);
}

function buildUntagInt(wasm:Module module, Scaffold scaffold, wasm:Expression tagged) returns wasm:Expression {
    var { name, returnType } = taggedToIntFunction;
    return module.call(name, [tagged], returnType);
}

function buildCast(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, string 'type) returns wasm:Expression {
    return module.refCast(tagged, module.rtt('type));
}

function buildString(wasm:Module module, Scaffold scaffold, bir:StringOperand operand) returns wasm:Expression {
    wasm:Expression op;
    if operand is bir:StringConstOperand {
        op = buildConstString(module, scaffold, operand.value);
    }
    else {
        op = module.localGet((<bir:Register>operand).number);
    }
    wasm:Expression asData = module.refAs("ref.as_data", op);
    return module.refCast(asData, module.rtt(STRING_TYPE));
}

function buildStringRef(wasm:Module module, wasm:Expression operand) returns wasm:Expression {
    wasm:Expression asData = module.refAs("ref.as_data", operand);
    wasm:Expression cast = module.refCast(asData, module.rtt(STRING_TYPE));
    return module.structGet(STRING_TYPE, "val", cast);
}

function buildConstString(wasm:Module module, Scaffold scaffold, string value) returns wasm:Expression {
    scaffold.addRuntimeModule(stringMod);
    int[] surrogate = buildSurrogateArray(value);
    string label = scaffold.setSection(value, surrogate);
    return module.globalGet(label);
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

function buildUntagged(wasm:Module module, Scaffold scaffold, wasm:Expression value, Repr targetRepr) returns wasm:Expression {
    match targetRepr.base {
        BASE_REPR_INT => {
            return buildUntagInt(module, scaffold, value);
        }
        BASE_REPR_BOOLEAN => {
            return buildUntagBoolean(module, value);
        }
        BASE_REPR_TAGGED => {
            return value;
        }
    }
    panic error("unreached in buildUntagged");
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
