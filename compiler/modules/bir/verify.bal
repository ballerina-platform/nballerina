// Use the types module to type-check the BIR

import wso2/nballerina.types as t;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type Range d:Range;

class VerifyContext {
    private final Module mod;
    private final t:Context tc;
    private final FunctionDefn defn;

    function init(Module mod, FunctionDefn defn) {
        self.mod = mod;
        t:Context tc  = mod.getTypeContext();
        self.tc = tc;
        self.defn = defn;
    }

    function isSubtype(t:SemType s, t:SemType t) returns boolean {
        return t:isSubtype(self.tc, s, t);
    }

    function operandHasType(Operand operand, t:SemType t) returns boolean {
        return operandHasType(self.tc, operand, t);
    }

    function isSameType(t:SemType t1, t:SemType t2) returns boolean {
        return t:isSameType(self.tc, t1, t2);
    }

    function isEmpty(t:SemType t) returns boolean {
        return t:isEmpty(self.tc, t);
    }

    function isAnydata(t:SemType t) returns boolean {
        return t:isSubtype(self.tc, t, t:createAnydata(self.tc));
    }

    function typeContext() returns t:Context {
        return self.tc;
    }

    function qNameRange(Position startPos) returns Range {
        return self.mod.getPartFile(self.defn.partIndex).qNameRange(startPos);
    }

    function err(d:Message msg, Position|Range pos) returns err:Semantic {
        return err:semantic(msg, loc=d:location(self.mod.getPartFile(self.defn.partIndex), pos), defnName=self.defn.symbol.identifier);
    }

    function returnType() returns t:SemType => self.defn.signature.returnType;

    function symbolToString(Symbol sym) returns string {
        return self.mod.symbolToString(self.defn.partIndex, sym);
    }
}

public function verifyFunctionCode(Module mod, FunctionDefn defn, FunctionCode code) returns err:Semantic? {
    VerifyContext cx = new(mod, defn);
    foreach BasicBlock b in code.blocks {
        check verifyBasicBlock(cx, b);
    }
}

type IntBinaryInsn IntArithmeticBinaryInsn|IntBitwiseBinaryInsn;

function verifyBasicBlock(VerifyContext vc, BasicBlock bb) returns err:Semantic? {
    foreach Insn insn in bb.insns {
        check verifyInsn(vc, insn);
    }
}

function verifyInsn(VerifyContext vc, Insn insn) returns err:Semantic? {
    string name = insn.name;
    if insn is IntBinaryInsn {
        // XXX need to check result also
        // different rules for bitwise
        check verifyOperandInt(vc, name, insn.operands[0], insn.pos);
        check verifyOperandInt(vc, name, insn.operands[1], insn.pos);
    }
    if insn is FloatArithmeticBinaryInsn {
        check verifyOperandFloat(vc, name, insn.operands[0], insn.pos);
        check verifyOperandFloat(vc, name, insn.operands[1], insn.pos);
    }
    if insn is FloatNegateInsn {
        check verifyOperandFloat(vc, name, insn.operand, insn.pos);
    }
    else if insn is BooleanNotInsn {
        check verifyOperandBoolean(vc, name, insn.operand, insn.pos);
    }
    else if insn is CompareInsn {
        check verifyCompare(vc, insn);
    }
    else if insn is EqualityInsn {
        check verifyEquality(vc, insn);
    }
    else if insn is AssignInsn {
        check verifyOperandType(vc, insn.operand, insn.result.semType, "value is not a subtype of the LHS", insn.pos);
    }
    else if insn is CondBranchInsn {
        check verifyOperandBoolean(vc, name, insn.operand, insn.pos);
    }
    else if insn is RetInsn {
        check verifyOperandType(vc, insn.operand, vc.returnType(), "value is not a subtype of the return type", insn.pos);
    }
    else if insn is PanicInsn {
        check verifyOperandError(vc, name, insn.operand, insn.pos);
    }
    else if insn is CallInsn {
        check verifyCall(vc, insn);
    }
    else if insn is TypeCastInsn {
        check verifyTypeCast(vc, insn);
    }
    else if insn is ConvertToIntInsn {
        check verifyConvertToIntInsn(vc, insn);
    }
    else if insn is ConvertToFloatInsn {
        check verifyConvertToFloatInsn(vc, insn);
    }
    else if insn is ListConstructInsn {
        check verifyListConstruct(vc, insn);
    }
    else if insn is MappingConstructInsn {
        check verifyMappingConstruct(vc, insn);
    }
    else if insn is ListGetInsn {
        check verifyListGet(vc, insn);
    }
    else if insn is ListSetInsn {
        check verifyListSet(vc, insn);
    }
     else if insn is MappingGetInsn {
        check verifyMappingGet(vc, insn);
    }
    else if insn is MappingSetInsn {
        check verifyMappingSet(vc, insn);
    }
    else if insn is ErrorConstructInsn {
        check verifyOperandString(vc, name, insn.operand, insn.pos);
    }
}

function verifyCall(VerifyContext vc, CallInsn insn) returns err:Semantic? {
    // XXX verify insn.semType
    FunctionRef func = <FunctionRef>insn.func;
    FunctionSignature sig = func.signature;
    int nSuppliedArgs = insn.args.length();
    int nExpectedArgs = sig.paramTypes.length();
    if nSuppliedArgs != nExpectedArgs {
        string name = vc.symbolToString(func.symbol);
        if nSuppliedArgs < nExpectedArgs {
            return vc.err(`too few arguments for call to function ${name}`, vc.qNameRange(insn.pos));
        }
        else {
            return vc.err(`too many arguments for call to function ${name}`, vc.qNameRange(insn.pos));
        }
    }
    foreach int i in 0 ..< nSuppliedArgs {
        check verifyOperandType(vc, insn.args[i], sig.paramTypes[i], `wrong argument type for parameter ${i + 1} in call to function ${vc.symbolToString(func.symbol)}`, vc.qNameRange(insn.pos));
    }
}

function verifyListConstruct(VerifyContext vc, ListConstructInsn insn) returns err:Semantic? {
    t:SemType ty = insn.result.semType;
    // XXX verify ty exactly
    if !vc.isSubtype(ty, t:LIST_RW) {
        return vc.err("bad BIR: inherent type of list construct is not a mutable list", insn.pos);
    }
    t:ListAtomicType? lat = t:listAtomicTypeRw(vc.typeContext(), ty);
    if lat == () {
        return vc.err("bad BIR: inherent type of list is not atomic", insn.pos);
    }
    else {
        if lat.members.fixedLength > 0 {
            return vc.err("bad BIR: tuples and fixed length arrays not supported as list inherent type", insn.pos);
        }
        foreach var operand in insn.operands {
            check verifyOperandType(vc, operand, lat.rest, "type of list constructor member is not allowed by the list type", insn.pos);
        }
    }
}

function verifyMappingConstruct(VerifyContext vc, MappingConstructInsn insn) returns err:Semantic? {
    t:SemType ty = insn.result.semType;
    // XXX verify ty exactly
    if !vc.isSubtype(ty, t:MAPPING_RW) {
        return vc.err("bad BIR: inherent type of mapping construct is not a mutable mapping", insn.pos);
    }
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(vc.typeContext(), ty);
    foreach int i in 0 ..< insn.operands.length() {
        t:SemType memberType = t:mappingMemberType(vc.typeContext(), ty, insn.fieldNames[i]);
        if memberType == t:NEVER {
            return vc.err(`field ${insn.fieldNames[i]} is not allowed by the type`, insn.pos);
        }
        check verifyOperandType(vc, insn.operands[i], memberType,
                                "type of mapping constructor member is not allowed by the mapping type", insn.pos);
    }
    if mat == () {
        return vc.err("bad BIR: inherent type of map is not atomic", insn.pos);
    }
    else if insn.operands.length() < mat.names.length() {
        return vc.err("missing record fields in mapping constructor", insn.pos);
    }
}

function verifyListGet(VerifyContext vc, ListGetInsn insn) returns err:Semantic? {
    check verifyOperandInt(vc, insn.name, insn.operands[1], insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:LIST) {
        return vc.err("list get applied to non-list", insn.pos);
    }
    t:SemType memberType = t:listMemberType(vc.typeContext(), insn.operands[0].semType);
    if !vc.isSameType(memberType, insn.result.semType) {
        return vc.err("bad BIR: ListGet result type is not same as member type", pos=insn.pos);
    }
}

function verifyListSet(VerifyContext vc, ListSetInsn insn) returns err:Semantic? {
    IntOperand i = insn.operands[1];
    check verifyOperandInt(vc, insn.name, i, insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:LIST) {
        return vc.err("list set applied to non-list", insn.pos);
    }
    t:SemType memberType = t:listMemberType(vc.typeContext(), insn.operands[0].semType);
    return verifyOperandType(vc, insn.operands[2], memberType, "value assigned to member of list is not a subtype of array member type", insn.pos);
}

function verifyMappingGet(VerifyContext vc, MappingGetInsn insn) returns err:Semantic? {
    StringOperand k = insn.operands[1];
    check verifyOperandString(vc, insn.name, k, insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:MAPPING) {
        return vc.err("mapping get applied to non-mapping", insn.pos);
    }
    t:SemType memberType = t:mappingMemberType(vc.typeContext(), insn.operands[0].semType, k is string ? k : ());
    if k !is string || !t:mappingMemberRequired(vc.typeContext(), insn.operands[0].semType, k) {
        memberType = t:union(memberType, t:NIL);
    }
    if !vc.isSameType(memberType, insn.result.semType) {
        return vc.err("bad BIR: MappingGet result type is not same as member type", insn.pos);
    }
}

function verifyMappingSet(VerifyContext vc, MappingSetInsn insn) returns err:Semantic? {
    StringOperand k = insn.operands[1];
    check verifyOperandString(vc, insn.name, k, insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:MAPPING) {
        return vc.err("mapping set applied to non-mapping", insn.pos);
    }
    t:SemType memberType = t:mappingMemberType(vc.typeContext(), insn.operands[0].semType, k is string ? k : ());
    return verifyOperandType(vc, insn.operands[2], memberType, "value assigned to member of mapping is not a subtype of map member type", insn.pos);
}

function verifyTypeCast(VerifyContext vc, TypeCastInsn insn) returns err:Semantic? {
    if vc.isEmpty(insn.result.semType) {
        // This is now caught in the front-end.
        return vc.err("bad BIR: result of type case is never", insn.pos);
    }
    // These should not happen with the nballerina front-end
    if !vc.isSubtype(insn.result.semType, insn.operand.semType) {
        return vc.err("bad BIR: result of type cast is not subtype of operand", insn.pos);
    }
    if !vc.isSameType(insn.result.semType, insn.semType) {
        return vc.err("bad BIR: result of type cast is not same as cast to type", insn.pos);
    }
}

function verifyConvertToIntInsn(VerifyContext vc, ConvertToIntInsn insn) returns err:Semantic? {
    if vc.isEmpty(t:intersect(t:diff(insn.operand.semType, t:INT), t:NUMBER)) {
        return vc.err("bad BIR: operand type of ConvertToInt has no non-integral numeric component", insn.pos);
    }
    if !vc.isSameType(t:union(t:diff(insn.operand.semType, t:NUMBER), t:INT), insn.result.semType) {
        return vc.err("bad BIR: result type of ConvertToInt is incorrect", insn.pos);
    }
    if !vc.isEmpty(t:intersect(t:diff(insn.result.semType, t:INT), t:NUMBER)) {
        return vc.err("bad BIR: result type of ConvertToInt contains non-integral numeric type", insn.pos);
    }
}

function verifyConvertToFloatInsn(VerifyContext vc, ConvertToFloatInsn insn) returns err:Semantic? {
    if vc.isEmpty(t:intersect(t:diff(insn.operand.semType, t:FLOAT), t:NUMBER)) {
        return vc.err("bad BIR: operand type of ConvertToFloat has no non-float numeric component", insn.pos);
    }
    if !vc.isSameType(t:union(t:diff(insn.operand.semType, t:NUMBER), t:FLOAT), insn.result.semType) {
        return vc.err("bad BIR: result type of ConvertToFloat is incorrect", insn.pos);
    }
    if !vc.isEmpty(t:intersect(t:diff(insn.result.semType, t:FLOAT), t:NUMBER)) {
        return vc.err("bad BIR: result type of ConvertToFloat contains non-float numeric type", insn.pos);
    }
}

function verifyCompare(VerifyContext vc, CompareInsn insn) returns err:Semantic? {
    if !t:comparable(vc.typeContext(), operandToSemType(insn.operands[0]), operandToSemType(insn.operands[1])) {
        return vc.err(`bad BIR: operands of ${insn.op} do not belong to an ordered type`, insn.pos);
    }
}

function operandToSemType(Operand operand) returns t:SemType {
    if operand is Register {
        return operand.semType;
    }
    else {
        return t:constBasicType(operand);
    }
}

function verifyEquality(VerifyContext vc, EqualityInsn insn) returns err:Semantic? {
    // non-empty intersection of operand types is enforced in front-end
    // not needed for BIR correctness
    Operand lhs = insn.operands[0];
    Operand rhs = insn.operands[1];
    if lhs is Register && rhs is Register && insn.op.length() == 2 && !vc.isAnydata(lhs.semType) && !vc.isAnydata(rhs.semType) {
        return vc.err(`bad BIR: at least one operand of an == or !=  at expression must be a subtype of anydata`, insn.pos);
    }
}

function isEqual(ConstOperand c1, ConstOperand c2) returns boolean {
    return c1 == c2;
}

function verifyOperandType(VerifyContext vc, Operand operand, t:SemType semType, d:Message msg, Position|Range pos) returns err:Semantic? {
    if !vc.operandHasType(operand, semType) {
        return vc.err(msg, pos);
    }
}

function verifyOperandString(VerifyContext vc, string insnName, StringOperand operand, Position pos) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc, insnName, operand, t:STRING, "string", pos);
    }
}

function verifyOperandInt(VerifyContext vc, string insnName, IntOperand operand, Position pos) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc, insnName, operand, t:INT, "int", pos);
    }
}

function verifyOperandFloat(VerifyContext vc, string insnName, FloatOperand operand, Position pos) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc, insnName, operand, t:FLOAT, "float", pos);
    }
}

function verifyOperandBoolean(VerifyContext vc, string insnName, BooleanOperand operand, Position pos) returns err:Semantic? {
    if operand is Register {
        return verifyRegisterSemType(vc,insnName, operand, t:BOOLEAN, "boolean", pos);
    }
}

function verifyOperandError(VerifyContext vc, string insnName, Register operand, Position pos) returns err:Semantic? {
    return verifyRegisterSemType(vc, insnName, operand, t:ERROR, "error", pos);
}

function verifyRegisterSemType(VerifyContext vc, string insnName, Register operand, t:SemType semType, string typeName, Position pos) returns err:Semantic? {
    if !vc.isSubtype(operand.semType, semType) {
        return operandTypeErr(vc, insnName, typeName, pos);
    }
}

function operandTypeErr(VerifyContext vc, string insnName, string typeName, Position pos) returns err:Semantic {
    return vc.err(`operands of ${insnName} must be subtype of ${typeName}`, pos);
}
