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

    function verifyCodeContext(FunctionCode code) returns VerifyCodeContext|Error {
        return new(self, code, self.defn.position);
    }
}

class VerifyCodeContext {
    private final VerifyContext vc;
    private final Position funcPos;
    final BasicBlock[] blocks;
    final int[] fwdInDegrees = [];
    final RegFlow[][] blocksFlows = []; // RegFlow per block, per each incoming forward edge
    // predecessors of the currently visiting block. Unlike other fields, which only accumulates data, this grows and shrinks.
    final BlockSet preds = [];

    function init(VerifyContext vc, FunctionCode code, Position funcPos) returns Error? {
        // JBUG: error if we moved this assignments below error return
        self.vc = vc;
        self.funcPos = funcPos;
        self.blocks = code.blocks;
        int numBlocks = self.blocks.length();
        if numBlocks == 0 {
            return self.invalidErr("no basic blocks in function code", funcPos);
        }
        self.fwdInDegrees.setLength(numBlocks);
        self.blocksFlows.setLength(numBlocks);
        self.preds.setLength(numBlocks);
    }

    function invalidErr(d:Message m, Position|Range? pos = ()) returns err:Internal {
        return self.vc.invalidErr(m, pos ?: self.funcPos);
    }
}

type RegSet boolean[];
type BlockSet boolean[];

// The set of registers that are initialized via a given edge starting at `origin` in to a block
type RegFlow record {|
    Label? origin; // origin == () iff entry
    RegSet regs;
|};

public function verifyFunctionCode(Module mod, FunctionDefn defn, FunctionCode code) returns Error? {
    VerifyContext vc = new(mod, defn);
    Label entry = 0;
    // Checks are done in two DFS rounds. During first round, forward in degree is calculated for each block and stored in cx.
    VerifyCodeContext cx = check vc.verifyCodeContext(code);
    check verifyGraph(cx, entry);
    check verifyReachable(cx);
    RegSet params = check verifyParamRegs(vc, code.registers);
    // In second round, previously calculated forward in degree is used as an input.
    check verifyRegFlow(cx, entry, { origin: (), regs: params });
    foreach BasicBlock b in code.blocks {
        check verifyBasicBlock(vc, b);
    }
}

// Verify forward edgers form a DAG
// Verify backward branch points to a predecessor XXX: need to also verify it's a dominator
// Calculates forward in-degree for each block and populates cx.fwdInDegrees.
// predPos must be () iff current == entry.
function verifyGraph(VerifyCodeContext cx, Label current, Position? predPos = ()) returns Error? {
    BasicBlock block = cx.blocks[current];
    Insn term = check blockTerminator(cx, block, predPos);
    Position termPos = term.pos;
    Label? onPanic = block.onPanic;
    cx.preds[current] = true; // mark self before visiting children
    if onPanic != () {
        check verifyChildGraph(cx, onPanic, termPos);
    }
    if term is BranchInsn {
        check verifyChildGraph(cx, term.dest, termPos, term.backward);
    }
    else if term is TypeBranchInsn|CondBranchInsn {
        check verifyChildGraph(cx, term.ifTrue, termPos);
        check verifyChildGraph(cx, term.ifFalse, termPos);
    }
    cx.preds[current] = false; // unmark self after visiting children
    cx.fwdInDegrees[current] = 1; // fwdInDegrees[current] was 0 until now since above recursions can't cycle back to self.
}

function verifyChildGraph(VerifyCodeContext cx, Label child, Position pos, boolean backward = false) returns Error? {
    boolean cycle = cx.preds[child];
    if backward != cycle {
        return cx.invalidErr(backward ? "backward branch to non-predecessor" : "forward branch form a cycle", pos);
    }
    if backward {
        return;
    }
    int fid = cx.fwdInDegrees[child];
    if fid == 0 { // unvisited
        check verifyGraph(cx, child, pos);
    }
    else {
        cx.fwdInDegrees[child] = fid + 1;
    }
}

// cx.fwdInDegrees must be populated.
function verifyReachable(VerifyCodeContext cx) returns Error? {
    int i = 0;
    foreach int fid in cx.fwdInDegrees {
        if fid == 0 {
            Insn[] insns = cx.blocks[i].insns;
            if insns.length() > 0 {
                return cx.invalidErr(`unreachable block: ${i}`, insns[0].pos);
            }
            else {
                return cx.invalidErr(`unreachable and empty block: ${i}`);
            }
        }
        i += 1;
    }
}

// Verify param registers are at the beginning of the list and return those.
function verifyParamRegs(VerifyContext vc, Register[] regs) returns RegSet|Error {
    RegSet paramRegs = [];
    boolean afterParams = false;
    foreach var reg in regs {
        if reg is ParamRegister {
            if afterParams {
                return vc.invalidErr("param register is not at the beginning of the register list", reg.pos);
            }
            paramRegs.push(true);
        }
        else {
            paramRegs.push(false);
            afterParams = true;
        }
    }
    return paramRegs;
}

// Verify Registers are initialized before used, including TypeMergeInsn's pred dependent Registers.
// cx.fwdInDegrees must be populated. predPos must be () iff current == entry.
function verifyRegFlow(VerifyCodeContext cx, Label current, RegFlow viaFlow, Position? viaPos = ()) returns Error? {
    BasicBlock block = cx.blocks[current];
    RegFlow[] flows = cx.blocksFlows[current];
    flows.push(viaFlow);
    if cx.fwdInDegrees[current] != flows.length() {
        return;
    }
    RegSet regs = mergeFlows(flows);
    boolean afterMerge = false;
    foreach var insn in block.insns {
        if insn is TypeMergeInsn {
            check verifyTypeMergeFlow(cx, afterMerge, flows, insn);
        }
        else {
            afterMerge = true;
        }
        match insn {
            var { result } => {
                regs[result.number] = true;
            }
            var { operand } => {
                check verifyOperandInitialized(cx, operand, regs, insn.pos);
            }
            var { operands } | var { args: operands } => {
                // JBUG #35557 compilation fails without redundant cast
                foreach Operand op in <Operand[]>operands {
                    check verifyOperandInitialized(cx, op, regs, insn.pos);
                }
            }
        }
    }
    Label? onPanic = block.onPanic;
    Insn term = check blockTerminator(cx, block, viaPos);
    Position termPos = term.pos;
    if onPanic != () {
        check verifyRegFlow(cx, onPanic, { origin: current, regs }, termPos);
    }
    if term is BranchInsn && !term.backward {
        check verifyRegFlow(cx, term.dest, { origin: current, regs }, termPos);
    }
    else if term is CondBranchInsn {
        check verifyRegFlow(cx, term.ifTrue, { origin: current, regs: regs.clone() }, termPos);
        check verifyRegFlow(cx, term.ifFalse, { origin: current, regs }, termPos);
    }
    else if term is TypeBranchInsn {
        RegSet trueRegs = regs.clone();
        RegSet falseRegs = regs;
        trueRegs[term.ifTrueRegister.number] = true;
        falseRegs[term.ifFalseRegister.number] = true;
        check verifyRegFlow(cx, term.ifTrue, { origin: current, regs: trueRegs }, termPos);
        check verifyRegFlow(cx, term.ifFalse, { origin: current, regs: falseRegs }, termPos);
    }
}

function verifyTypeMergeFlow(VerifyCodeContext cx, boolean afterMerge, RegFlow[] flows, TypeMergeInsn merge) returns Error? {
    if afterMerge {
        return cx.invalidErr("TypeMergeInsn is not at the beginning of the basic block", merge.pos);
    }
    int numFlows = flows.length();
    if merge.predecessors.length() != numFlows || merge.operands.length() != numFlows {
        return cx.invalidErr(`predecessor count(${merge.predecessors.length()})/operand count(${merge.operands.length()}) mismatch with incoming edge count(${numFlows})`, merge.pos);
    }
    int i = 0;
    foreach Label pred in merge.predecessors {
        RegFlow? flow = flowOriginating(flows, pred);
        if flow!= () {
            check verifyOperandInitialized(cx, merge.operands[i], flow.regs, merge.pos);
        }
        else {
            return cx.invalidErr(`superfluous predecessor ${pred} in TypeMergeInsn`, merge.pos);
        }
        i += 1;
    }
}

function blockTerminator(VerifyCodeContext vc, BasicBlock block, Position? predPos) returns Insn|Error {
    Insn[] insns = block.insns;
    int insnsLen = insns.length();
    if insnsLen > 0 {
        return insns[insnsLen - 1];
    }
    return vc.invalidErr("empty basic block", predPos);
}

function flowOriginating(RegFlow[] flows, Label origin) returns RegFlow? {
    foreach RegFlow flow in flows {
        if flow.origin == origin {
            return flow;
        }
    }
    return ();
}

function verifyOperandInitialized(VerifyCodeContext cx, Operand op, RegSet regs, Position usagePos) returns Error? {
    if op is Register && !regs[op.number] {
        return cx.invalidErr("operand register not initialized ", usagePos);
    }
}

// Pre-requisite: flow.length() > 0
function mergeFlows(RegFlow[] flow) returns RegSet {
    if flow.length() == 1 {
        return flow[0].regs; // Just an optimization.
    }
    RegSet result = [];
    int numReg = flow[0].regs.length(); // Assume all flows have same regs.length()
    foreach int i in 0 ..< numReg {
        boolean conj = true;
        foreach var { regs } in flow {
            if !regs[i] {
                conj = false;
                break;
            }
        }
        result.push(conj);
    }
    return result;
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
    if !vc.isSubtype(ty, t:LIST) {
        return vc.invalidErr("inherent type of list construct is not a list", insn.pos);
    }
    t:ListAtomicType? lat = t:listAtomicType(vc.typeContext(), ty);
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
    if !vc.isSubtype(ty, t:MAPPING) {
        return vc.invalidErr("inherent type of mapping construct is not a mapping", insn.pos);
    }
    t:MappingAtomicType? mat = t:mappingAtomicDerefType(vc.typeContext(), ty);
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
    t:SemType memberType = t:mappingDerefMemberType(vc.typeContext(), insn.operands[0].semType, keyOperand.semType);
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
    t:SemType memberType = t:mappingDerefMemberType(vc.typeContext(), insn.operands[0].semType, keyOperand.semType);
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
