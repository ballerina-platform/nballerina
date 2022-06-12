import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.print.wasm;

final RuntimeModule numberMod = {
    file: "number.wat",
    priority: 3
};

final RuntimeFunction checkStringTypeAndValFunction = {
    name: "_bal_check_type_and_string_val",
    returnType: "i32",
    rtModule: stringMod
};

final RuntimeFunction checkIntTypeAndValFunction = {
    name: "_bal_check_type_and_int_val",
    returnType: "i32",
    rtModule: numberMod
};

final RuntimeFunction checkFloatTypeAndValFunction = {
    name: "_bal_check_type_and_float_val",
    returnType: "i32",
    rtModule: numberMod
};

final RuntimeFunction checkBooleanTypeAndValFunction = {
    name: "_bal_check_type_and_boolean_val",
    returnType: "i32",
    rtModule: commonMod
};

final RuntimeFunction checkNilTypeAndValFunction = {
    name: "_bal_check_type_and_nil_val",
    returnType: "i32",
    rtModule: commonMod
};

final RuntimeFunction checkListTypeAndAtomicFunction = {
    name: "_bal_check_type_and_list_atomic",
    returnType: "i32",
    rtModule: listMod
};

final RuntimeFunction checkMapTypeAndAtomicFunction = {
    name: "_bal_check_type_and_map_atomic",
    returnType: "i32",
    rtModule: mapMod
};

function buildTypeCast(wasm:Module module, Scaffold scaffold, bir:TypeCastInsn insn) returns wasm:Expression {
    var [_, val] = buildReprValue(module, scaffold, insn.operand);
    t:SemType semType = insn.semType;
    Repr repr = semTypeRepr(semType);
    wasm:Expression sourceTy = buildRuntimeFunctionCall(module, scaffold, getTypeFunction, [val]);
    wasm:Expression targetTy = module.addConst({ i32: t:widenToUniformTypes(semType) });
    return module.addIf(buildIsSubType(module, sourceTy, targetTy), 
                        buildStore(module, insn.result, buildUntagged(module, scaffold, val, repr)), 
                        module.throw(BAD_CONVERSION_TAG));
}

function buildTypeBranch(wasm:Module module, Scaffold scaffold, bir:TypeBranchInsn insn) returns wasm:Expression {
    return buildTypeTestedValue(module, scaffold, insn.operand, insn.semType);
}

function buildTypeTestedValue(wasm:Module module, Scaffold scaffold, bir:Register operand, t:SemType semType) returns wasm:Expression {
    var [repr, value] = buildReprValue(module, scaffold, operand);
    wasm:Expression? hasType = ();
    BaseRepr baseRepr = repr.base;
    if baseRepr == BASE_REPR_TAGGED { 
        t:UniformTypeBitSet? bitSet = testTypeAsUniformBitSet(scaffold.getTypeContext(), operand.semType, semType);
        if bitSet != () {
            hasType = buildHasTagInSet(module, scaffold, semType, value, bitSet);
        }
        else {
            hasType = singleValueConditions(module, scaffold, semType, value);
        }
    }
    else if baseRepr == BASE_REPR_INT {
        t:IntSubtypeConstraints? intConstraints = t:intSubtypeConstraints(semType);
        if intConstraints != () && intConstraints.all {
            wasm:Expression constraintMin = module.addConst({ i64 : intConstraints.min });
            wasm:Expression constraintMax = module.addConst({ i64 : intConstraints.max });
            hasType = module.binary("i32.and", 
                                    module.binary("i64.le_s", constraintMin, value),
                                    module.binary("i64.ge_s", constraintMax, value));
        }
        else {
            hasType = module.binary("i64.eq", 
                                    buildLoad(module, operand), 
                                    module.addConst({ i64 : 0 }));
        }
    }
    else if baseRepr == BASE_REPR_FLOAT {
        t:FloatSubtype sub = <t:FloatSubtype>t:floatSubtype(semType);
        if sub.allowed {
            foreach float val in sub.values {
                wasm:Expression cond = module.binary("f64.eq", value, module.addConst({ f64: val }));
                hasType = hasType != () ? module.binary("i32.or", cond, hasType) : cond;
            }
        }
    }    
    else if baseRepr == BASE_REPR_BOOLEAN {
        t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(<t:ComplexSemType>semType);
        hasType = module.binary("i32.eq", value, module.addConst({ i32: sub.value ? 1 : 0 }));
    }
    if hasType != () {
        return hasType;
    }
    panic error("unimplemnted type test in current subset");
}

function buildHasTagInSet(wasm:Module module, Scaffold scaffold, t:SemType semType, wasm:Expression operand, t:UniformTypeBitSet bitSet) returns wasm:Expression {
    return buildIsSubType(module, buildRuntimeFunctionCall(module, scaffold, getTypeFunction, [operand]), module.addConst({ i32: bitSet }));
}

function singleValueConditions(wasm:Module module, Scaffold scaffold, t:SemType semType, wasm:Expression operand) returns wasm:Expression? {
    wasm:Expression[] subConditions = [];
    t:SplitSemType {all, some} = t:split(semType);
    if all != 0 {
        return ();
    }
    foreach var [code, subtype] in some {
        match code {
            t:UT_STRING => {
                t:StringSubtype sub = <t:StringSubtype>t:stringSubtype(subtype);
                if !sub.char.allowed || !sub.nonChar.allowed{
                    continue;
                }
                string [] strs = [];
                strs.push(...sub.char.values);
                strs.push(...sub.nonChar.values);
                foreach var str in strs {
                    wasm:Expression val = buildConstString(module, scaffold, str);
                    subConditions.push(buildRuntimeFunctionCall(module, scaffold, checkStringTypeAndValFunction, [operand, val]));
                }
            }
            t:UT_INT => {
                t:IntSubtype sub = <t:IntSubtype>t:intSubtype(subtype);
                foreach var range in sub {
                    foreach var i in range.min...range.max {
                        wasm:Expression val = module.addConst({ i64: i });
                        subConditions.push(buildRuntimeFunctionCall(module, scaffold, checkIntTypeAndValFunction, [operand, val]));
                    }
                }
            }
            t:UT_FLOAT => {
                t:FloatSubtype sub = <t:FloatSubtype>t:floatSubtype(semType);
                if sub.allowed {
                    foreach float flt in sub.values {
                        wasm:Expression val = module.addConst({ f64: flt });
                        subConditions.push(buildRuntimeFunctionCall(module, scaffold, checkFloatTypeAndValFunction, [operand, val]));
                    }
                }
            }
            t:UT_BOOLEAN => {
                t:BooleanSubtype sub = <t:BooleanSubtype>t:booleanSubtype(subtype);
                wasm:Expression val = module.addConst({ i32: sub.value ? 1 : 0 });
                subConditions.push(buildRuntimeFunctionCall(module, scaffold, checkBooleanTypeAndValFunction, [operand, val]));
            }
            t:UT_NIL => {
                wasm:Expression val = module.refNull();
                subConditions.push(buildRuntimeFunctionCall(module, scaffold, checkNilTypeAndValFunction, [operand, val]));
            }
            t:UT_LIST_RO => {
                var atomic = t:listAtomicTypeRw(scaffold.getTypeContext(), semType);
                if atomic != () {
                    t:SemType? ty = t:listAtomicSimpleArrayMemberType(atomic);
                    if ty != () {
                        subConditions.push(buildRuntimeFunctionCall(module, scaffold, checkListTypeAndAtomicFunction, [operand, module.addConst({ i32: <int>ty })]));
        }
    }
        }
            t:UT_MAPPING_RO => {
                t:MappingAtomicType? atomic = t:mappingAtomicTypeRw(scaffold.getTypeContext(), semType);
                if atomic != () {
                    t:SemType ty = atomic.rest;
                    subConditions.push(buildRuntimeFunctionCall(module, scaffold, checkMapTypeAndAtomicFunction, [operand, module.addConst({ i32: <int>ty })]));
        }
            }
        }
    }
    wasm:Expression? condition = ();
    foreach wasm:Expression sub in subConditions {
        condition = condition != () ? module.binary("i32.or", sub, condition) : sub;
    }
    return condition;
}


function testTypeAsUniformBitSet(t:Context tc, t:SemType sourceType, t:SemType targetType) returns t:UniformTypeBitSet? {
    t:UniformTypeBitSet bitSet = t:widenToUniformTypes(targetType);
    if t:isEmpty(tc, t:diff(t:intersect(sourceType, bitSet), targetType)) {
        return bitSet;
    }
    return ();
}

function buildNarrowReg(wasm:Module module, Scaffold scaffold, bir:NarrowRegister register) returns wasm:Expression {
    var sourceReg = register.underlying;
    var sourceRepr = scaffold.getRepr(sourceReg);
    var value = buildLoad(module, sourceReg);
    wasm:Expression narrowed = buildNarrowRepr(module, scaffold, sourceRepr, value, scaffold.getRepr(register));
    return buildStore(module, register, narrowed);
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
    return buildStore(module, insn.result, hasType);
}

function buildIsSubType(wasm:Module module, wasm:Expression super, wasm:Expression sub) returns wasm:Expression {
    return module.binary("i32.eq", module.binary("i32.and", super, sub), super); 
}
