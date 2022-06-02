import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

function buildTypeCast(wasm:Module module, Scaffold scaffold, bir:TypeCastInsn insn) returns wasm:Expression {
    var [_, val] = buildReprValue(module, scaffold, insn.operand);
    t:SemType semType = insn.semType;
    Repr repr = semTypeRepr(semType);
    if repr === REPR_BOOLEAN {
        return buildTypeCastValue(module, scaffold, val, module.localSet(insn.result.number, buildUntagBoolean(module, val)), TYPE_BOOLEAN);
    }
    else if repr === REPR_INT {
        return buildTypeCastValue(module, scaffold, val, module.localSet(insn.result.number, buildUntagInt(module, val)), TYPE_INT);
    }
    else if repr === REPR_MAPPING  {
        return buildTypeCastValue(module, scaffold, val, module.localSet(insn.result.number, buildCast(module, scaffold, val, MAP_TYPE)), TYPE_MAP);
    }
    else if repr === REPR_LIST  {
        return buildTypeCastValue(module, scaffold, val, module.localSet(insn.result.number, buildCast(module, scaffold, val, LIST_TYPE)), TYPE_LIST);
    }
    else if repr === REPR_FLOAT  {
        return buildTypeCastValue(module, scaffold, val, module.localSet(insn.result.number, buildUntagFloat(module, val)), TYPE_FLOAT);
    }
    else {
        return module.localSet(insn.result.number, val);
    }
}

function buildTypeCastValue(wasm:Module module, Scaffold scaffold, wasm:Expression tagged, wasm:Expression converted, int ty) returns wasm:Expression {
    return module.addIf(buildIsType(module, tagged, ty), converted, module.throw(BAD_CONVERSION_TAG));
}

function buildTypeBranch(wasm:Module module, Scaffold scaffold, bir:TypeBranchInsn insn) returns wasm:Expression {
    return buildTypeTestedValue(module, scaffold, insn.operand, insn.semType);
}

function buildTypeTestedValue(wasm:Module module, Scaffold scaffold, bir:Register operand, t:SemType semType) returns wasm:Expression {
    var [repr, value] = buildReprValue(module, scaffold, operand);
    wasm:Expression? hasType = ();
    BaseRepr baseRepr = repr.base;
    if baseRepr == BASE_REPR_TAGGED { 
        hasType = singleValues(module, scaffold, semType, value);
    }
    else if baseRepr == BASE_REPR_INT {
        t:IntSubtypeConstraints? intConstraints = t:intSubtypeConstraints(semType);
        if intConstraints != () && intConstraints.all {
            hasType = module.binary("i32.and", module.binary("i64.le_s", module.addConst({ i64 : intConstraints.min }), value),
                module.binary("i64.ge_s", module.addConst({ i64 : intConstraints.max }), value));
        }
        else {
            hasType = module.binary("i64.eq", module.localGet(operand.number), module.addConst( { i64: 0 }));
        }
    }
    else if baseRepr == BASE_REPR_FLOAT {
        t:FloatSubtype sub = <t:FloatSubtype>t:floatSubtype(semType);
        if sub.allowed {
            foreach float val in sub.values {
                if hasType == () {
                    hasType = module.binary("f64.eq", value, module.addConst({ f64: val }));
                }
                else {
                    hasType = module.binary("i32.or", module.binary("f64.eq", module.addConst({ f64: val }), value), hasType);
                }
            }
        }
    }    
    else if baseRepr == BASE_REPR_BOOLEAN {
        BASE_REPR_BOOLEAN _ = baseRepr;
        t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(<t:ComplexSemType>semType);
        hasType = module.binary("i32.eq", value, module.addConst({ i32: sub.value ? 1 : 0 }));
    }
    if hasType != () {
        return hasType;
    }
    panic error("unimplemnted type test in current subset");
}

function singleValues(wasm:Module module, Scaffold scaffold, t:SemType semType, wasm:Expression operand) returns wasm:Expression? {
    wasm:Expression[] values = [];
    t:SplitSemType {all, some} = t:split(semType);
    var { name, returnType } = getTypeFunction;
    if all != 0 {
        t:UniformTypeBitSet bitSet = t:widenToUniformTypes(semType);
        return module.binary("i32.ne", module.binary("i32.and", module.call(name, [operand], returnType), module.addConst({ i32: bitSet })), module.addConst({ i32: 0 })); 
    }
    foreach var [code, subtype] in some {
        if code == t:UT_LIST_RO {
            var atomic = t:listAtomicTypeRw(scaffold.getTypeContext(), semType);
            t:UniformTypeBitSet bitSet = t:widenToUniformTypes(subtype);
            wasm:Expression? condition = ();
            if atomic != () {
                t:SemType? ty = t:listAtomicSimpleArrayMemberType(atomic);
                if ty != () {
                    condition = module.call("check_type_and_list_atomic", [operand, module.addConst({ i32: <int>ty })], "i32");
                }
            }
            if condition == () {
                condition = module.binary("i32.ne", module.binary("i32.and", module.call(name, [operand], returnType), module.addConst({ i32: bitSet })), module.addConst({ i32: 0 }));
            }
            values.push(<wasm:Expression>condition);
            continue;
        }
        else if code == t:UT_MAPPING_RO {
            t:MappingAtomicType? atomic = t:mappingAtomicTypeRw(scaffold.getTypeContext(), semType);
            t:UniformTypeBitSet bitSet = t:widenToUniformTypes(subtype);
            wasm:Expression? cond = ();
            if atomic != () {
                t:SemType ty = atomic.rest;
                cond = module.call("check_type_and_map_atomic", [operand, module.addConst({ i32: <int>ty })], "i32");
            }
            if cond == () {
                cond = module.binary("i32.ne", module.binary("i32.and", module.call(name, [operand], returnType), module.addConst({ i32: bitSet })), module.addConst({ i32: 0 }));
            }
            values.push(<wasm:Expression>cond);
            continue;
        }
        match code {
            t:UT_STRING => {
                t:StringSubtype sub = <t:StringSubtype>t:stringSubtype(subtype);
                if !sub.char.allowed {
                    return ();
                }
                foreach var ch in sub.char.values {
                    values.push(module.call("check_type_and_string_val", [operand, buildConstString(module, scaffold, ch)], "i32"));
                }

                if !sub.nonChar.allowed {
                    return ();
                }
                foreach var str in sub.nonChar.values {
                    values.push(module.call("check_type_and_string_val", [operand, buildConstString(module, scaffold, str)], "i32"));
                }
            }
            t:UT_INT => {
                t:IntSubtype sub = <t:IntSubtype>t:intSubtype(subtype);
                foreach var range in sub {
                    foreach var i in range.min...range.max {
                        values.push(module.call("check_type_and_int_val", [operand, module.addConst({ i64: i })], "i32"));
                    }
                }
            }
            t:UT_FLOAT => {
                t:FloatSubtype sub = <t:FloatSubtype>t:floatSubtype(semType);
                if sub.allowed {
                    foreach float val in sub.values {
                        values.push(module.call("check_type_and_float_val", [operand, module.addConst({ f64: val })], "i32"));
                    }
                }
            }
            t:UT_BOOLEAN => {
                t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(subtype);
                values.push(module.call("check_type_and_boolean_val", [operand, module.addConst({ i32: sub.value ? 1 : 0 })], "i32"));
            }
            t:UT_NIL => {
                values.push(module.call("check_type_and_boolean_val", [operand, module.refNull("data")], "i32"));
            }
        }
    }
    wasm:Expression? condition = ();
    foreach wasm:Expression cond in values {
        if condition == () {
            condition = cond;
        }
        else {
            condition = module.binary("i32.or", cond, condition);
        }
    }
    return condition;
}

function getTypeString(TaggedRepr repr) returns string {
    wasm:Type wasmType = repr.wasm;
    if wasmType is wasm:ComplexRefType {
        return wasmType.base;
    }
    return "eqref";
}

function buildNarrowReg(wasm:Module module, Scaffold scaffold, bir:NarrowRegister register) returns wasm:Expression {
    var sourceReg = register.underlying;
    var sourceRepr = scaffold.getRepr(sourceReg);
    var value = module.localGet(sourceReg.number);
    wasm:Expression narrowed = buildNarrowRepr(module, scaffold, sourceRepr, value, scaffold.getRepr(register));
    return module.localSet(register.number, narrowed);
}

function buildNarrowRepr(wasm:Module module, Scaffold scaffold, Repr sourceRepr, wasm:Expression value, Repr targetRepr) returns wasm:Expression {
    BaseRepr sourceBaseRepr = sourceRepr.base;
    BaseRepr targetBaseRepr = targetRepr.base;
    if sourceBaseRepr == targetBaseRepr && targetBaseRepr != BASE_REPR_TAGGED {
        return value;
    }
    if sourceBaseRepr == BASE_REPR_TAGGED {
        return buildUntagged(module, scaffold, value, targetRepr);
    }
    panic error("unimplemented narrowing conversion required");
}

function buildTypeTest(wasm:Module module, Scaffold scaffold, bir:TypeTestInsn insn) returns wasm:Expression {
    wasm:Expression hasType = buildTypeTestedValue(module, scaffold, insn.operand, insn.semType);
    if insn.negated {
        hasType = module.binary("i32.xor", module.addConst({ i32: 1 }), hasType);
    }
    return module.localSet(insn.result.number, hasType);
}
