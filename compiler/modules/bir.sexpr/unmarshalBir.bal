import nballerina.bir;
import nballerina.comm.err;
import nballerina.comm.diagnostic as d;
import nballerina.types.sexpr as tsexpr;
import nballerina.comm.sexpr;
import nballerina.types as t;

public readonly class VirtualFile {
    *d:File;

    public function directory() returns string? {
        return;
    }

    public function filename() returns string {
        return "";
    }

    public function lineColumn(d:Position pos) returns d:LineColumn {
        return [0, 0];
    }

    public function lineContent(d:Position|d:Range range) returns [string, string, string] {
        return ["", "", ""];
    }

    public function qNameRange(d:Position startPos) returns d:Range {
        return {startPos: 0, endPos: 0};
    }
}

type FunctionCode record {|
    [BlocksTag, Block...] blocks;
    [RegistersTag, Register...] registers;
|};

class Module {
    *bir:Module;
    final bir:ModuleId id;
    final VirtualFile[] files;
    final t:Context tc;
    final readonly & bir:FunctionDefn[] functionDefns;
    final FunctionCode[] code;

    function init(bir:ModuleId id, readonly & bir:FunctionDefn[] functionDefns, FunctionCode[] code, VirtualFile[] files, t:Context tc) {
        self.id = id;
        self.files = files;
        self.tc = tc;
        self.functionDefns = functionDefns;
        self.code = code;
    }

    public function getId() returns bir:ModuleId => self.id;

    public function getTypeContext() returns t:Context => self.tc;

    public function generateFunctionCode(int i) returns bir:FunctionCode|err:Semantic|err:Unimplemented {
        return functionCodeFromSexpr(self.tc, {}, self.code[i]);
    }

    public function finish() returns err:Semantic? {
    }

    public function getFunctionDefns() returns readonly & bir:FunctionDefn[] {
        return self.functionDefns;

    }

    public function getPartFile(int partIndex) returns VirtualFile {
        VirtualFile f = new();
        return f;
    }

    public function getPartFiles() returns VirtualFile[] {
        return from var f in self.files select f;
    }

    public function symbolToString(int partIndex, bir:Symbol sym) returns string {
        return "xxx";
    }
}

function functionCodeFromSexpr(t:Context tc, map<tsexpr:Atom> bindings, FunctionCode code) returns bir:FunctionCode {
    var { blocks, registers } = code;
    bir:FunctionCode result = {};
    map<bir:Register> regs = {};
    foreach int i in 1 ..< registers.length() {
        var [name, kind, ty] = <Register><any>registers[i]; // JBUG: extra cast to any
        if !name.startsWith("r.") {
            panic error("register name must start with 'r.' but was " + name);
        }
        string prettyNameOrNum = name.substring(2);
        boolean hasPrettyName = prettyNameOrNum.substring(0, 1) !is "0"|"1"|"2"|"3"|"4"|"5"|"6"|"7"|"8"|"9";
        string? prittyName = hasPrettyName ? prettyNameOrNum : ();
        bir:Register reg = regFromSexpr(tc.env, bindings, i - 1, prittyName, kind, ty);
        regs[name] = reg;
        result.registers.push(reg);
    }
    map<bir:Label> blockLabels = {};
    foreach int i in 1 ..< blocks.length() {
        var blockSexpr = <Block><any>blocks[i];
        blockLabels[blockSexpr[0]] = i - 1;
    }
    foreach int i in 1 ..< blocks.length() {
        var blockSexpr = <Block><any>blocks[i];
        bir:Insn[] insns = [];
        foreach int j in 2 ..< blockSexpr.length() {
            insns.push(insnFromSexpr(tc, regs, blockLabels, <Insn><any>blockSexpr[j]));
        }
        BlockAttributes attrib = blockSexpr[1];
        bir:Label? onPanic = attrib.length() == 2 ? attrib[1] : ();
        result.blocks.push({ label: i - 1, insns, onPanic });
    }
    return result;
}

function regFromSexpr(t:Env env, map<tsexpr:Atom> bindings, int number, string? name, bir:RegisterKind kind, tsexpr:Type ty) returns bir:Register {
    t:SemType semType = tsexpr:semTypeFromSexpr(env, bindings, ty);
    if kind == bir:PARAM_REGISTER_KIND {
        bir:ParamRegister paramReg = { name: <string>name, pos: 0, number, semType, scope: {
            scope: (),
            startPos: 0,
            endPos: 0
            } };
        return paramReg;
    }
    if kind == bir:VAR_REGISTER_KIND {
        bir:VarRegister varReg = { kind, name: <string>name, pos: 0, number, semType, scope: {
            scope: (),
            startPos: 0,
            endPos: 0
        } };
        return varReg;
    }
    else {
        bir:RegisterBase genraicReg = { kind, name, pos: (), number, semType };
        error|bir:Register reg = genraicReg.cloneWithType();
        if reg is error {
            panic error("unimpl reg kind:" + kind);
        }
        return reg;
    }
}

function insnFromSexpr(t:Context tc, map<bir:Register> regs, map<bir:Label> blockLabels, Insn insnSexpr) returns bir:Insn {
    bir:Insn|error insn;
    // JBUG: meny issues apper if following cast is removed including .
    match <sexpr:Data[]>insnSexpr {
        ["call", var moduleGet, var result, ...var argsSexpr] => {
            bir:Symbol symbol = symbolFromSexpr(<ModuleGet>moduleGet);
            bir:FunctionSignature signature = { returnType: t:INT, paramTypes: [], restParamType: () };
            bir:FunctionRef func = { symbol, signature, erasedSignature: signature };
            bir:Operand[] args = from var arg in argsSexpr select operandFromSexpr(tc, regs, arg);
            bir:CallInsn call = { func, args: args.cloneReadOnly(), pos: 0, result: <bir:TmpRegister>regFromNameSexpr(tc, regs, <sexpr:Symbol>result) };
            return call;
        }
        ["cond-branch", var operand, var trueBlock, var falseBlock] => {
            bir:CondBranchInsn br = {
                operand: regFromNameSexpr(tc, regs, <sexpr:Symbol>operand),
                ifTrue: blockLabel(blockLabels, <string>trueBlock),
                ifFalse: blockLabel(blockLabels, <string>falseBlock),
                pos: 0
            };
            return br;
        }
        ["equal", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "==" }).cloneWithType(bir:EqualityInsn);
        }
        ["not-equal", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "!=" }).cloneWithType(bir:EqualityInsn);
        }
        ["exact-equal", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "===" }).cloneWithType(bir:EqualityInsn);
        }
        ["not-exact-equal", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "!==" }).cloneWithType(bir:EqualityInsn);
        }
        ["less-than-or-equal", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "<=" }).cloneWithType(bir:CompareInsn);
        }
        ["greater-than-or-equal", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: ">=" }).cloneWithType(bir:CompareInsn);
        }
        ["list-construct", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands }).cloneWithType(bir:ListConstructInsn);
        }
        ["branch", var dest] => {
            insn = convert(tc, regs, blockLabels, { dest }).cloneWithType(bir:BranchInsn);
        }
        ["ret", var operand] => {
            insn = convert(tc, regs, blockLabels, { operand }).cloneWithType(bir:RetInsn);
        }
        ["set", var result, var operand] => {
            insn = convert(tc, regs, blockLabels, { result, operand }).cloneWithType(bir:AssignInsn);
        }
        ["int+", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "+" }).cloneWithType(bir:IntArithmeticBinaryInsn);
        }
        ["int/", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "/" }).cloneWithType(bir:IntArithmeticBinaryInsn);
        }
        ["int-", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "-" }).cloneWithType(bir:IntArithmeticBinaryInsn);
        }
        ["int%", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "%" }).cloneWithType(bir:IntArithmeticBinaryInsn);
        }
        ["int*", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "*" }).cloneWithType(bir:IntArithmeticBinaryInsn);
        }
        ["abnormal-ret", var operand] => {
            insn = convert(tc, regs, blockLabels, { operand }).cloneWithType(bir:AbnormalRetInsn);
        }
        ["greater-than", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: ">" }).cloneWithType(bir:CompareInsn);
        }
        ["less-than", var result, ...var operands] => {
            insn = convert(tc, regs, blockLabels, { result, operands, op: "<" }).cloneWithType(bir:CompareInsn);
        }
        ["catch", var result] => {
            insn = convert(tc, regs, blockLabels, { result }).cloneWithType(bir:CatchInsn);
        }
        _ => {
            insn = convert(tc, regs, blockLabels, { dest: 0 }).cloneWithType(bir:BranchInsn); // to make jbal happy
            panic error("unimpl unmarshalBir:" + insnSexpr.toString());
        }
    }
    return checkpanic insn;
}

type GernaricInsn record {|
    sexpr:Data[]? operands = ();
    sexpr:Data? operand = ();
    string? op = ();
    // JUBG: can't make following `sexpr:Symbol?` since match type infrance is not sufficant
    sexpr:Data? result = ();
    sexpr:Data? dest = ();
|};

function convert(t:Context tc, map<bir:Register> regs, map<bir:Label> blockLabels, GernaricInsn insn) returns map<anydata> {
    var { operands, operand, result, op, dest } = insn;
    map<anydata> ans = { pos: 0 };
    if operands != () {
        ans["operands"] = from var arg in operands select operandFromSexpr(tc, regs, arg);
    }
    if operand != () {
        ans["operand"] = operandFromSexpr(tc, regs, operand);
    }
    if op != () {
        ans["op"] = op;
    }
    if result != () {
        ans["result"] = regFromNameSexpr(tc, regs, <sexpr:Symbol>result);
    }
    if dest != () {
        ans["dest"] = blockLabel(blockLabels, <sexpr:Symbol>dest);
    }
    return ans;
}

function blockLabel(map<bir:Label> blockLabels, string name) returns bir:Label {
    bir:Label? label = blockLabels[name];
    if label != () {
        return label;
    }
    bir:Label newLabel = blockLabels.length();
    blockLabels[name] = newLabel;
    return newLabel;
}

function symbolFromSexpr(ModuleGet moduleGet) returns bir:Symbol {
    if moduleGet is ModuleGetInternal {
        bir:InternalSymbol s = { isPublic: false, identifier: moduleGet[1].s };
        return s;
    }
    else if moduleGet is ModuleGetExternal {
        var namesSexpr = moduleGet[1];
        [string, string...] names = [namesSexpr[1].s];
        foreach int i in 2 ..< namesSexpr.length() {
            names.push(namesSexpr[i].s);
        }
        bir:ExternalSymbol s = { module: { org: namesSexpr[0].s, names: names.cloneReadOnly() }, identifier: moduleGet[2].s };
        return s;
    }
    panic error("imposible"); }


function operandFromSexpr(t:Context tc, map<bir:Register> regs, Operand operand) returns bir:Operand {
    if operand is sexpr:Symbol {
        return regFromNameSexpr(tc, regs, operand);
    }
    t:WrappedSingleValue? v = singleValue(operand);
    if v == () {
        panic error("function arguemnt must be reg or const but was " + operand.toString());
    }
    bir:ConstOperand constOprnd = { semType: t:singleton(tc, v.value), value: v.value };
    return constOprnd;
}

function regFromNameSexpr(t:Context tc, map<bir:Register> regs, sexpr:Symbol regName) returns bir:Register {
    return <bir:Register>regs[regName];
}

function singleValue(sexpr:Data value) returns t:WrappedSingleValue? {
    if value is sexpr:String {
        return { value: value.s } ;
    }
    if value == [] {
        return { value: () };
    }
    if value is t:SingleValue {
        return { value };
    }
    return ();
}

const DEFAULT_ROOT_MODULE_NAME = "root";
final bir:ModuleId DEFAULT_ROOT_MODULE_ID = { org: "", names: [DEFAULT_ROOT_MODULE_NAME] };

public function moduleFromSexpr(Function[] moduleSexpr) returns bir:Module {
    t:Env env = new;
    var tc = t:typeContext(env);
    bir:FunctionDefn[] functionDefns = [];
    FunctionCode[] code = [];
    foreach var func in moduleSexpr {
        t:SemType[] paramTypes = from var t in func[3] select tsexpr:semTypeFromSexpr(env, {}, t);
        functionDefns.push({ symbol: { isPublic: func[2] is PublicVisibility , identifier: func[1].s },
                             signature: { returnType: tsexpr:semTypeFromSexpr(env, {}, func[4]), paramTypes: paramTypes.cloneReadOnly(), restParamType: () },
                             partIndex: 0,
                             position: 0 });
        code.push({ registers: func[5], blocks: func[6] });
    }
    Module mod = new(DEFAULT_ROOT_MODULE_ID, functionDefns.cloneReadOnly(), code, [], tc);
    return mod;
}
