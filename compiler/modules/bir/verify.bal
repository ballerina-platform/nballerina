// Use the types module to type-check the BIR

import wso2/nballerina.types as t;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

type Range d:Range;

type TmpRegion record {|
    int entry;
    int? exit;
    boolean isLoop = false;
|};

class VerifyContext {
    private final Module mod;
    private final t:Context tc;
    private final FunctionDefn defn;
    final FunctionCode code;
    TmpRegion[] regions = [];
    Label[] loopHeads = [];
    
    function init(Module mod, FunctionDefn defn, FunctionCode code) {
        self.mod = mod;
        t:Context tc  = mod.getTypeContext();
        self.tc = tc;
        self.defn = defn;
        self.code = code;
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

    function semanticErr(d:Message msg, Position|Range pos) returns err:Semantic {
        return err:semantic(msg, loc=self.location(pos), defnName=self.defn.symbol.identifier);
    }

    function invalidErr(d:Message m, Position|Range pos) returns err:Internal {
        return err:internal("invalid BIR: " + d:messageToString(m), loc=self.location(pos), defnName=self.defn.symbol.identifier);
    }

    private function location(Position|Range pos) returns d:Location {
        return d:location(self.mod.getPartFile(self.defn.partIndex), pos);
    }

    function returnType() returns t:SemType => self.defn.signature.returnType;

    function symbolToString(Symbol sym) returns string {
        return self.mod.symbolToString(self.defn.partIndex, sym);
    }
}

public function verifyFunctionCode(Module mod, FunctionDefn defn, FunctionCode code) returns Error? {
    VerifyContext cx = new(mod, defn, code);
    foreach BasicBlock b in code.blocks {
        check verifyBasicBlock(cx, b);
    }
    check verifyRegions(cx, defn.position);
}

function verifyRegions(VerifyContext vc, Position pos) returns Error? {
    boolean[] visited = from int b in 0 ..< vc.code.blocks.length() select false;
    Label?[] paths = from int b in 0 ..< vc.code.blocks.length() select ();
    Label? label = 0;

    while label is Label && label <= vc.code.blocks.length() {
        // TODO verify conditional regions
        if vc.loopHeads.indexOf(label) == () || visited[label] {
            label += 1;
        }
        else {
            label = check traverseRegion(vc, label, label, [label], visited, pos, paths);
        }
    }
    // TODO create missing regions in frontend
    foreach TmpRegion tmpRegion in vc.regions {
        boolean created = false;
        foreach Region region in vc.code.regions {
            if region.entry == tmpRegion.entry && region.kind is REGION_LOOP {
                int? exit = tmpRegion.exit;
                Insn? insn = ();
                while insn is BranchInsn? && exit != () {
                    if region.exit == exit {
                        created = true;
                        break;
                    }
                    insn = vc.code.blocks[exit].insns[vc.code.blocks[exit].insns.length() - 1];
                    if insn is BranchInsn {
                        exit = insn.dest;
                    }
                }
                if region.exit == exit {
                    break;
                }
            }
        }
        if created {
            break;
        } 
        return vc.invalidErr("region not created in front end", pos);
    }
}

function traverseRegion(VerifyContext vc, Label entry, Label label, Label[] loops, boolean[] visited, Position pos, Label?[] paths) returns Error|Label? {
    visited[label] = true;
    Insn[] insns = vc.code.blocks[label].insns;
    var insnsLen = insns.length();
    Label entry2 = entry;
    int? i = loops.indexOf(label);
    // if a entry is reached again no exit in that path
    if i is int && loops.length() > 0 {
        Insn insn = insns[insnsLen - 1];
        if insn is CondBranchInsn {
            return insn.ifFalse;
        }
        return ();
    }
    // change entry for inner loops
    else if vc.loopHeads.indexOf(label) != () && loops.indexOf(label) == () {
        loops.push(label);
        entry2 = label;
    }
    Label? exit = label;

    if insnsLen > 0 {
        Insn insn = insns[insnsLen - 1];
        if insn is BranchInsn {
            if insn.dest == entry2 {
                exit = ();
            }
            else {
                exit = check traverseRegion(vc, entry, insn.dest, loops, visited, pos, paths);
            }
        }
        else if insn is CondBranchInsn {
            // If all paths lead back to entry, exit is nil.
            // Otherwise, exit is the first acyclic block where all the other paths merge.  
            if insn.ifFalse == entry2 && insn.ifTrue == entry2 {
                exit = ();
            }
            else if insn.ifFalse == entry2 {
                exit = insn.ifTrue;
            }
            else if insn.ifTrue == entry2 {
                exit = insn.ifFalse;
            }
            else {
                Label? ifTrue = check traverseRegion(vc, entry2, insn.ifTrue, loops, visited, pos, paths);
                Label? ifFalse = check traverseRegion(vc, entry2, insn.ifFalse, loops, visited, pos, paths);
                if ifFalse is () && ifTrue is () {
                    exit = ();
                }
                else if ifFalse is () {
                    exit = insn.ifTrue;
                    paths[insn.ifTrue] = ifFalse;
                }
                else if ifTrue is () {
                    exit = insn.ifFalse;
                    paths[insn.ifFalse] = ifTrue;
                }
                else if ifTrue == ifFalse {
                    exit = ifTrue;
                }
                else {
                    // check if paths merge
                    Label? pf = paths[ifFalse];
                    Label? pt = paths[ifTrue];
                    if ifFalse == pt {
                        exit = pt;
                    }
                    else if ifTrue == pf || pt == pf {
                        exit = pf;
                    }
                    else {
                       return vc.invalidErr("loop region is invalid", pos); 
                    } 
                }
            }
        }
    }
    if loops[loops.length() - 1] == label {
        vc.regions.push({ entry : entry2, exit, isLoop : true });
        _ = loops.pop();
    }
    return exit;
}

type IntBinaryInsn IntArithmeticBinaryInsn|IntBitwiseBinaryInsn;

type Error err:Semantic|err:Internal;

function verifyBasicBlock(VerifyContext vc, BasicBlock bb) returns Error? {
    foreach Insn insn in bb.insns {
        check verifyInsn(vc, insn);
    }
}

function verifyInsn(VerifyContext vc, Insn insn) returns Error? {
    string name = insn.name;
    if insn is IntBinaryInsn {
        // XXX need to check result also
        // different rules for bitwise
        check validOperandInt(vc, name, insn.operands[0], insn.pos);
        check validOperandInt(vc, name, insn.operands[1], insn.pos);
    }
    if insn is FloatArithmeticBinaryInsn {
        check validOperandFloat(vc, name, insn.operands[0], insn.pos);
        check validOperandFloat(vc, name, insn.operands[1], insn.pos);
    }
    if insn is FloatNegateInsn {
        check validOperandFloat(vc, name, insn.operand, insn.pos);
    }
    else if insn is BooleanNotInsn {
        check validOperandBoolean(vc, name, insn.operand, insn.pos);
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
        check validOperandBoolean(vc, name, insn.operand, insn.pos);
    }
    else if insn is RetInsn {
        check verifyOperandType(vc, insn.operand, vc.returnType(), "value is not a subtype of the return type", insn.pos);
    }
    else if insn is PanicInsn {
        check validOperandError(vc, name, insn.operand, insn.pos);
    }
    else if insn is CallInsn {
        check verifyCall(vc, insn);
    }
    else if insn is TypeCastInsn {
        check verifyTypeCast(vc, insn);
    }
    else if insn is ConvertToIntInsn {
        check verifyConvertToInt(vc, insn);
    }
    else if insn is ConvertToFloatInsn {
        check verifyConvertToFloat(vc, insn);
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
        check validOperandString(vc, name, insn.operand, insn.pos);
    }
    else if insn is BranchInsn && insn.backward {
        int insnsLen = vc.code.blocks[insn.dest].insns.length();
        if insnsLen > 0 && vc.code.blocks[insn.dest].insns[insnsLen - 1] is BranchInsn|CondBranchInsn
                && vc.loopHeads.indexOf(insn.dest) == () {
            vc.loopHeads.push(insn.dest);
        }
    }
}

function verifyCall(VerifyContext vc, CallInsn insn) returns err:Internal? {
    // XXX verify insn.semType
    FunctionRef func = <FunctionRef>insn.func;
    FunctionSignature sig = func.signature;
    int nSuppliedArgs = insn.args.length();
    int nExpectedArgs = sig.paramTypes.length();
    if nSuppliedArgs != nExpectedArgs {
        string name = vc.symbolToString(func.symbol);
        if nSuppliedArgs < nExpectedArgs {
            return vc.invalidErr(`too few arguments for call to function ${name}`, vc.qNameRange(insn.pos));
        }
        else {
            return vc.invalidErr(`too many arguments for call to function ${name}`, vc.qNameRange(insn.pos));
        }
    }
    foreach int i in 0 ..< nSuppliedArgs {
        check validOperandType(vc, insn.args[i], sig.paramTypes[i], `wrong argument type for parameter ${i + 1} in call to function ${vc.symbolToString(func.symbol)}`, vc.qNameRange(insn.pos));
    }
}

function verifyListConstruct(VerifyContext vc, ListConstructInsn insn) returns Error? {
    t:SemType ty = insn.result.semType;
    if !vc.isSubtype(ty, t:LIST_RW) {
        return vc.invalidErr("inherent type of list construct is not a mutable list", insn.pos);
    }
    t:ListAtomicType? lat = t:listAtomicTypeRw(vc.typeContext(), ty);
    if lat is () {
        return vc.invalidErr("inherent type of list is not atomic", insn.pos);
    }
    Operand[] operands = insn.operands;
    foreach int i in 0 ..< operands.length() {
        check validOperandType(vc, operands[i], t:listAtomicTypeMemberAt(lat, i), "type of list constructor member is not allowed by the list type", insn.pos);
    }
    if !t:listAtomicFillableFrom(vc.typeContext(), lat, operands.length()) {
        return vc.semanticErr("not enough members in list constructor", insn.pos);
    }
}

function verifyMappingConstruct(VerifyContext vc, MappingConstructInsn insn) returns Error? {
    t:SemType ty = insn.result.semType;
    if !vc.isSubtype(ty, t:MAPPING_RW) {
        return vc.invalidErr("inherent type of mapping construct is not a mutable mapping", insn.pos);
    }
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(vc.typeContext(), ty);
    if mat == () {
        return vc.invalidErr("inherent type of map is not atomic", insn.pos);
    }
    foreach int i in 0 ..< insn.operands.length() {
        check validOperandType(vc, insn.operands[i], t:mappingAtomicTypeMemberAt(mat, insn.fieldNames[i]), "type of mapping constructor member is not allowed by the mapping type", insn.pos);
    }
    if insn.operands.length() < mat.names.length() {
        return vc.semanticErr("missing record fields in mapping constructor", insn.pos);
    }
}

function verifyListGet(VerifyContext vc, ListGetInsn insn) returns Error? {
    IntOperand indexOperand = insn.operands[1];
    check validOperandInt(vc, insn.name, indexOperand, insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:LIST) {
        return vc.semanticErr("list get applied to non-list", insn.pos);
    }
    t:SemType memberType = t:listMemberType(vc.typeContext(), insn.operands[0].semType, indexOperand.semType);
    if !vc.isSameType(memberType, insn.result.semType) {
        return vc.invalidErr("ListGet result type is not same as member type", pos=insn.pos);
    }
}

function verifyListSet(VerifyContext vc, ListSetInsn insn) returns Error? {
    IntOperand i = insn.operands[1];
    check validOperandInt(vc, insn.name, i, insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:LIST) {
        return vc.semanticErr("list set applied to non-list", insn.pos);
    }
    t:SemType memberType = t:listMemberType(vc.typeContext(), insn.operands[0].semType, insn.operands[1].semType);
    return verifyOperandType(vc, insn.operands[2], memberType, "value assigned to member of list is not a subtype of array member type", insn.pos);
}

function verifyMappingGet(VerifyContext vc, MappingGetInsn insn) returns Error? {
    StringOperand keyOperand = insn.operands[1];
    check validOperandString(vc, insn.name, keyOperand, insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:MAPPING) {
        return vc.semanticErr("mapping get applied to non-mapping", insn.pos);
    }
    t:SemType memberType = t:mappingMemberType(vc.typeContext(), insn.operands[0].semType, keyOperand.semType);
    if insn.name == INSN_MAPPING_GET && !t:mappingMemberRequired(vc.typeContext(), insn.operands[0].semType, keyOperand.semType) {
        memberType = t:union(memberType, t:NIL);
    }
    if !vc.isSameType(memberType, insn.result.semType) {
        return vc.invalidErr("instruction result type is not same as member type", insn.pos);
    }
}

function verifyMappingSet(VerifyContext vc, MappingSetInsn insn) returns Error? {
    StringOperand keyOperand = insn.operands[1];
    check validOperandString(vc, insn.name, keyOperand, insn.pos);
    if !vc.isSubtype(insn.operands[0].semType, t:MAPPING) {
        return vc.semanticErr("mapping set applied to non-mapping", insn.pos);
    }
    t:SemType memberType = t:mappingMemberType(vc.typeContext(), insn.operands[0].semType, keyOperand.semType);
    return verifyOperandType(vc, insn.operands[2], memberType, "value assigned to member of mapping is not a subtype of map member type", insn.pos);
}

function verifyTypeCast(VerifyContext vc, TypeCastInsn insn) returns err:Internal? {
    if vc.isEmpty(insn.result.semType) {
        // This is now caught in the front-end.
        return vc.invalidErr("result of type case is never", insn.pos);
    }
    // These should not happen with the nballerina front-end
    if !vc.isSubtype(insn.result.semType, insn.operand.semType) {
        return vc.invalidErr("result of type cast is not subtype of operand", insn.pos);
    }
    if !vc.isSameType(insn.result.semType, insn.semType) {
        return vc.invalidErr("result of type cast is not same as cast to type", insn.pos);
    }
}

function verifyConvertToInt(VerifyContext vc, ConvertToIntInsn insn) returns err:Internal? {
    if vc.isEmpty(t:intersect(t:diff(insn.operand.semType, t:INT), t:NUMBER)) {
        return vc.invalidErr("operand type of ConvertToInt has no non-integral numeric component", insn.pos);
    }
    if !vc.isSameType(t:union(t:diff(insn.operand.semType, t:NUMBER), t:INT), insn.result.semType) {
        return vc.invalidErr("result type of ConvertToInt is incorrect", insn.pos);
    }
    if !vc.isEmpty(t:intersect(t:diff(insn.result.semType, t:INT), t:NUMBER)) {
        return vc.invalidErr("result type of ConvertToInt contains non-integral numeric type", insn.pos);
    }
}

function verifyConvertToFloat(VerifyContext vc, ConvertToFloatInsn insn) returns err:Internal? {
    if vc.isEmpty(t:intersect(t:diff(insn.operand.semType, t:FLOAT), t:NUMBER)) {
        return vc.invalidErr("operand type of ConvertToFloat has no non-float numeric component", insn.pos);
    }
    if !vc.isSameType(t:union(t:diff(insn.operand.semType, t:NUMBER), t:FLOAT), insn.result.semType) {
        return vc.invalidErr("result type of ConvertToFloat is incorrect", insn.pos);
    }
    if !vc.isEmpty(t:intersect(t:diff(insn.result.semType, t:FLOAT), t:NUMBER)) {
        return vc.invalidErr("result type of ConvertToFloat contains non-float numeric type", insn.pos);
    }
}

function verifyCompare(VerifyContext vc, CompareInsn insn) returns err:Internal? {
    if !t:comparable(vc.typeContext(), operandToSemType(insn.operands[0]), operandToSemType(insn.operands[1])) {
        return vc.invalidErr(`operands of ${insn.op} do not belong to an ordered type`, insn.pos);
    }
}

function operandToSemType(Operand operand) returns t:SemType {
    return operand.semType;
}

function verifyEquality(VerifyContext vc, EqualityInsn insn) returns err:Internal? {
    // non-empty intersection of operand types is enforced in front-end
    // not needed for BIR correctness
    Operand lhs = insn.operands[0];
    Operand rhs = insn.operands[1];
    if lhs is Register && rhs is Register && insn.op.length() == 2 && !vc.isAnydata(lhs.semType) && !vc.isAnydata(rhs.semType) {
        return vc.invalidErr(`at least one operand of an == or !=  at expression must be a subtype of anydata`, insn.pos);
    }
}

function verifyOperandType(VerifyContext vc, Operand operand, t:SemType semType, d:Message msg, Position|Range pos) returns err:Semantic? {
    if !vc.operandHasType(operand, semType) {
        return vc.semanticErr(msg, pos);
    }
}

function validOperandType(VerifyContext vc, Operand operand, t:SemType semType, d:Message msg, Position|Range pos) returns err:Internal? {
    if !vc.operandHasType(operand, semType) {
        return vc.invalidErr(msg, pos);
    }
}

function validOperandString(VerifyContext vc, string insnName, StringOperand operand, Position pos) returns err:Internal? {
    if operand is Register {
        return validRegisterSemType(vc, insnName, operand, t:STRING, "string", pos);
    }
}

function validOperandInt(VerifyContext vc, string insnName, IntOperand operand, Position pos) returns err:Internal? {
    if operand is Register {
        return validRegisterSemType(vc, insnName, operand, t:INT, "int", pos);
    }
}

function validOperandFloat(VerifyContext vc, string insnName, FloatOperand operand, Position pos) returns err:Internal? {
    if operand is Register {
        return validRegisterSemType(vc, insnName, operand, t:FLOAT, "float", pos);
    }
}

function validOperandBoolean(VerifyContext vc, string insnName, BooleanOperand operand, Position pos) returns err:Internal? {
    if operand is Register {
        return validRegisterSemType(vc,insnName, operand, t:BOOLEAN, "boolean", pos);
    }
}

function validOperandError(VerifyContext vc, string insnName, Register operand, Position pos) returns err:Internal? {
    return validRegisterSemType(vc, insnName, operand, t:ERROR, "error", pos);
}

function validRegisterSemType(VerifyContext vc, string insnName, Register operand, t:SemType semType, string typeName, Position pos) returns err:Internal? {
    if !vc.isSubtype(operand.semType, semType) {
        return invalidTypeErr(vc, insnName, typeName, pos);
    }
}

function invalidTypeErr(VerifyContext vc, string insnName, string typeName, Position pos) returns err:Internal {
    return vc.invalidErr(`operands of ${insnName} must be subtype of ${typeName}`, pos);
}
