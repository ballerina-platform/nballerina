import nballerina.bir;
import nballerina.comm.err;
import nballerina.comm.diagnostic as d;
import nballerina.types.sexpr as ts;
import nballerina.comm.sexpr;
import nballerina.types as t;

public readonly class VirtualFile {
    *d:File;
    int index;
    string? dir;
    string fn;

    function init(int index, string fn, string? dir) {
        self.index = index;
        self.fn = fn;
        self.dir = dir;
    }

    public function partIndex() returns int => self.index;

    public function directory() returns string? => self.dir;

    public function filename() returns string => self.fn;

    // Happens to be same as `front.syntax:unpackPosition`, but independent.
    public function lineColumn(d:Position pos) returns d:LineColumn {
        return [pos >> 32, pos & 0xFFFFFFFF];
    }

    public function lineContent(d:Position|d:Range range) returns [string, string, string]? => ();
}

type FunctionCode record {|
    Block[] blocks;
    Register[] registers;
|};

type ExternalFuncDecl readonly & record {|
    bir:ExternalSymbol symbol;
    bir:FunctionSignature signature;
|};

type ExternalFuncDecls table<ExternalFuncDecl> key(symbol);

type ParseContext record {|
    t:Context tc;
    t:AtomTable atoms;
    ExternalFuncDecls extFuncDecl;
    map<bir:FunctionSignature> internalFuncDecl;
|};

type FuncParseContext record {|
    *ParseContext;
    map<bir:Register> regs = {};
    map<bir:Label> blockLabels;
|};

class VirtualModule {
    *bir:Module;
    final bir:ModuleId id;
    final VirtualFile[] files;
    final readonly & bir:FunctionDefn[] functionDefns;
    final FunctionCode[] functionCodes;
    final ParseContext pc;

    function init(ParseContext pc, bir:ModuleId id, readonly & bir:FunctionDefn[] functionDefns, FunctionCode[] code, VirtualFile[] files) {
        self.id = id;
        self.files = files;
        self.functionDefns = functionDefns;
        self.functionCodes = code;
        self.pc = pc;
    }

    public function getId() returns bir:ModuleId => self.id;

    public function getTypeContext() returns t:Context => self.pc.tc;

    public function generateFunctionCode(int i) returns bir:FunctionCode|err:Semantic|err:Unimplemented {
        return toFunctionCode(self.pc, self.functionCodes[i]);
    }

    public function finish() returns err:Semantic? {
    }

    public function getFunctionDefns() returns readonly & bir:FunctionDefn[] {
        return self.functionDefns;

    }

    public function getPartFile(int partIndex) returns VirtualFile {
        return self.files[partIndex];
    }

    public function getPartFiles() returns VirtualFile[] {
        return self.files;
    }

    public function symbolToString(int partIndex, bir:Symbol sym) returns string {
        string prefix;
        if sym is bir:InternalSymbol {
            prefix = "";
        }
        else {
            string? org = sym.module.org;
            string orgString = org == () ? "" : org + "/";
            prefix = "{" + orgString  + ".".'join(...sym.module.names) + "}";
        }
        return prefix + sym.identifier;
    }
}

public function toModule(Module moduleSexpr, bir:ModuleId modId) returns bir:Module {
    t:Env env = new;
    var tc = t:typeContext(env);
    var [[_, ...namedAtoms], [_, ...funcs], [_, ...decl], [_, ...files]] = moduleSexpr;

    t:AtomTableSexpr sexprAtoms = map from var [name, atom] in namedAtoms select [name.s, atom];
    t:AtomTable atoms = t:atomTableFromSexpr(env, sexprAtoms);
    map<VirtualFile> vFilesByName = map from var [i, f] in files.enumerate() select [f[0].s, new(i, f[1].s, f.length() > 2 ? f[2].s : ())];
    bir:FunctionDefn[] funcDefns = [];
    map<bir:FunctionSignature> internalFuncDecl = {};
    FunctionCode[] funcCodes = [];
    foreach var [identifier, visibility, [_, [params, ret], [_, partIndex], [_, line, col], [_, ...registers], [_, ...blocks]]] in funcs { // JBUG: can't use { s: identifier }
        readonly & t:SemType[] paramTypes = from var t in params select t:fromSexpr(env, atoms, t);
        bir:FunctionSignature signature = { returnType: t:fromSexpr(env ,atoms, ret), paramTypes, restParamType: () };
        internalFuncDecl[identifier.s] = signature;
        funcDefns.push({ symbol: { isPublic: visibility is PublicVisibility , identifier: identifier.s },
                         signature,
                         partIndex: vFilesByName.get(partIndex.s).partIndex(),
                         position: createPosition(line, col) });
        funcCodes.push({ registers, blocks });
    }
    ExternalFuncDecls extFuncDecl = table[];
    foreach var [importedModId, ...funcDecls] in decl {
        foreach var [identifier, _, [params, ret]] in funcDecls {
            readonly & t:SemType[] paramTypes = from var p in params select t:fromSexpr(env ,atoms, p);
            extFuncDecl.add({
                symbol: { module: toModuleId(importedModId), identifier: identifier.s },
                signature: { returnType: t:fromSexpr(env ,atoms, ret), paramTypes: paramTypes, restParamType: () } // SUBSET: restParamType is not used by backend
            });
        }
    }
    ParseContext pc = { tc, atoms, extFuncDecl, internalFuncDecl };
    VirtualFile[] vFiles = from var f in vFilesByName order by f.partIndex() select f;
    VirtualModule mod = new(pc, modId, funcDefns.cloneReadOnly(), funcCodes, vFiles);
    return mod;
}

function toFunctionCode(ParseContext pc, FunctionCode code) returns bir:FunctionCode {
    var { blocks, registers } = code;
    map<bir:Register> regMap = {};
    bir:Register[] regList = [];
    int regIndex = 0;
    foreach var regSexpr in registers {
        var [name, reg] = toRegister(pc, regMap, regIndex, regSexpr);
        regList.push(reg);
        regMap[name] = reg;
        regIndex += 1;
    }
    map<bir:Label> blockLabels = {};
    bir:Label label = 0;
    foreach var block in blocks { // JBUG: can't use var [name, ..._]
        blockLabels[block[0]] = label;
        label += 1;
    }
    return { blocks: toBlocks({ ...pc, regs: regMap, blockLabels }, blocks),
             registers: regList };
}

function toBlocks(FuncParseContext pc, Block[] blocks) returns bir:BasicBlock[] {
    bir:BasicBlock[] birBlocks = [];
    int label = 0;
    foreach var [nameSexpr, attrib, ...insnsSexpr] in blocks {
        bir:Insn[] insns = [];
        Position? pos = ();
        foreach var insn in insnsSexpr {
            if insn is Position {
                pos = insn;
            }
            else {
                insns.push(toInsn(pc, insn, pos));
                pos = ();
            }
        }
        birBlocks.push({ label, onPanic: toAttributes(pc, attrib), insns, name: toMaybeName(nameSexpr) });
        label += 1;
    }
    return birBlocks;
}

function toAttributes(FuncParseContext pc, BlockPanic attrib) returns bir:Label? {
    match attrib {
        [_, var name] => {
            return pc.blockLabels[name];
        }
        _ => {
            return ();
        }
    }
}

function toRegister(ParseContext pc, map<bir:Register> prevRegs, int number, Register regSexpr) returns [string, bir:Register] {
    bir:RegisterScope scope = { scope: (), startPos: 0, endPos: 0 };
    bir:Position pos = 0;
    match regSexpr {
        [var nameSexpr, var kind, var semTypeSexpr] if kind is bir:DeclRegisterKind => {
            string name = toMaybeName(nameSexpr) ?: "_";
            t:SemType semType = toSemType(pc, semTypeSexpr);
            match kind {
                bir:PARAM_REGISTER_KIND => { return [nameSexpr, <bir:ParamRegister>{ name, pos, number, semType, scope }]; }
                bir:VAR_REGISTER_KIND   => { return [nameSexpr, <bir:VarRegister>  { name, pos, number, semType, scope }]; }
                bir:FINAL_REGISTER_KIND => { return [nameSexpr, <bir:FinalRegister>{ name, pos, number, semType, scope }]; }
            }
        }
        [var name, bir:NARROW_REGISTER_KIND, var semType, var underlyingName] => {
            bir:Register? underlying = prevRegs[underlyingName];
            if underlying == () {
                panic error("narrow reg must appear after it's underlying register");
            }
            return [name, <bir:NarrowRegister>{ pos, underlying, number, semType: toSemType(pc, semType) }];
        }
        [var nameSexpr, var kind, var semTypeSexpr] => {
            string? name = toMaybeName(nameSexpr);
            t:SemType semType = toSemType(pc, semTypeSexpr);
            match kind {
                bir:TMP_REGISTER_KIND        => { return [nameSexpr, <bir:TmpRegister>      { name, pos, number, semType }]; }
                bir:ASSIGN_TMP_REGISTER_KIND => { return [nameSexpr, <bir:AssignTmpRegister>{ name, pos, number, semType }]; }
            }
        }
    }
    panic error("imposable");
}

// get back the original and possibly duplicate name form differentiated name
function toMaybeName(string name) returns string? {
    int? dotPos = name.indexOf(".");
    return dotPos != () ? name.substring(dotPos + 1) : ();
}

function toInsn(FuncParseContext pc, Insn insnSexpr, Position? posSexpr) returns bir:Insn {
    bir:Position pos = posSexpr != () ? createPosition(posSexpr[1], posSexpr[2]) : 0;
    match insnSexpr {
        ["unimpl", ...var data] => {
            panic error("unimplemented instruction: " + sexpr:prettyPrint(data));
        }
        ["call", var symbolSexpr, var resultSexpr, ...var argsSexpr] => {
            bir:Symbol symbol = symbolFromSexpr(<FunctionRef>symbolSexpr);
            return toCallInsn(pc, symbol, checkpanic argsSexpr.cloneWithType(), <sexpr:Symbol>resultSexpr); // JBUG: remove cloneWithType
        }
        ["call-generic", var symbolSexpr, var signature, var resultSexpr, ...var argsSexpr] => {
            bir:Symbol symbol = symbolFromSexpr(<FunctionRef>symbolSexpr);
            return toCallInsn(pc, symbol, checkpanic argsSexpr.cloneWithType(), <sexpr:Symbol>resultSexpr, <Signature>signature); // JBUG: remove cloneWithType
        }
        ["cond-branch", var operand, var ifTrue, var ifFalse] => {
            return <bir:CondBranchInsn>{
                operand: lookupRegister(pc, <sexpr:Symbol>operand),
                ifTrue: lookupLabel(pc, <string>ifTrue),
                ifFalse: lookupLabel(pc, <string>ifFalse),
                pos
            };
        }
        ["type-cond-branch", var operand, var ty, var ifTrue, var ifFalse, var ifTrueRegister, var ifFalseRegister] => {
            return <bir:TypeCondBranchInsn>{
                operand: lookupRegister(pc, <sexpr:Symbol>operand),
                semType: toSemType(pc, <ts:Type>ty),
                ifTrue: lookupLabel(pc, <string>ifTrue),
                ifFalse: lookupLabel(pc, <string>ifFalse),
                ifTrueRegister: <bir:NarrowRegister>lookupRegister(pc, <sexpr:Symbol>ifTrueRegister),
                ifFalseRegister: <bir:NarrowRegister>lookupRegister(pc, <sexpr:Symbol>ifFalseRegister),
                pos
            };
        }
        ["type-cast", var result, var ty, var operand] => {
            return <bir:TypeCastInsn>{
                operand: lookupRegister(pc, <sexpr:Symbol>operand),
                semType: toSemType(pc, <ts:Type>ty),
                result: toResultRegister(pc, <sexpr:Symbol>result),
                pos
            };
        }
        ["type-test", var result, var ty, var operand, var negated] => {
            return <bir:TypeTestInsn>{
                operand: lookupRegister(pc, <sexpr:Symbol>operand),
                semType: toSemType(pc, <ts:Type>ty),
                result: toResultRegister(pc, <sexpr:Symbol>result),
                negated: <boolean>negated,
                pos
            };
        }
        ["mapping-construct", var result, ...var fieldOperands] => {
            string[] fieldNames = [];
            bir:Operand[] operands = [];
            [sexpr:String, Operand][] fieldOperandsTyped = checkpanic fieldOperands.cloneWithType(); // JBUG: even a cast don't work
            foreach var [fieldName, operand] in fieldOperandsTyped {
                fieldNames.push(fieldName.s);
                operands.push(toOperand(pc, operand));
            }
            return <bir:MappingConstructInsn>{
                result: toResultRegister(pc, <sexpr:Symbol>result),
                operands: operands.cloneReadOnly(),
                fieldNames: fieldNames.cloneReadOnly(),
                pos
            };
        }
        ["list-construct", var result, ...var operands] => {
            Operand[] operandsWithType = checkpanic operands.cloneWithType(); // JBUG: CCE if not cloned
            return <bir:ListConstructInsn>{
                result: toResultRegister(pc, <sexpr:Symbol>result),
                operands: from var operand in operandsWithType select toOperand(pc, operand),
                pos
            };
        }
        ["type-merge", var result, ...var predOperands] => {
            bir:Register[] operands = [];
            bir:Label[] predecessors = [];
            [sexpr:Symbol, Label][] predOperandsTyped = checkpanic predOperands.cloneWithType(); // JBUG: even a cast don't work
            foreach var [pred, operand] in predOperandsTyped {
                predecessors.push(lookupLabel(pc, pred));
                operands.push(lookupRegister(pc, operand));
            }
            return <bir:TypeMergeInsn>{
                result: <bir:NarrowRegister>lookupRegister(pc, <sexpr:Symbol>result),
                operands: operands.cloneReadOnly(),
                predecessors: predecessors.cloneReadOnly(),
                pos
            };
        }
        ["branch", var dest] => {
            return <bir:BranchInsn>{ dest: lookupLabel(pc, <Label>dest), pos };
        }
        ["branch-back", var dest] => {
            return <bir:BranchInsn>{ dest: lookupLabel(pc, <Label>dest), backward: true, pos };
        }
        ["list-filling-get", var result, var list, var index] => {
            return <bir:ListGetInsn>{
                result: toResultRegister(pc, <sexpr:Symbol>result),
                operands: [lookupRegister(pc, <sexpr:Symbol>list), <bir:IntOperand>toOperand(pc, <Operand>index)],
                fill: true,
                pos
            };
        }
        ["list-get", var result, var list, var index] => {
            return <bir:ListGetInsn>{
                result: toResultRegister(pc, <sexpr:Symbol>result),
                operands: [lookupRegister(pc, <sexpr:Symbol>list), <bir:IntOperand>toOperand(pc, <Operand>index)],
                pos
            };
        }
    }
    var { bir: name, op } =  INSN_NAMES_BIR_OP.get(insnSexpr[0]);
    BirInsnBase? insn = ();
    if insnSexpr is ResultInsn {
        match insnSexpr {
            ["call-indirect", var result, var operand] => { // need to special case this since it's only case operands arrays can have a single operand.
                insn = { name, op, pos, result: lookupRegister(pc, checkpanic result.ensureType()),
                         operands: [toOperand(pc, operand)] };
            }
            var [_, result, operand] => {
                insn = { name, op, pos, result: lookupRegister(pc, result), operand: toOperand(pc, operand) };
            }
            var [_, result, ...operands] => {
                insn = { name, op, pos, result: lookupRegister(pc, checkpanic result.ensureType()), // JBUG: need ensureType
                         operands: from var operand in operands select toOperand(pc, checkpanic operand.ensureType()) };
            }
        }
    }
    else if insnSexpr is OperandInsn {
        match insnSexpr {
            var [_, operand] => {
                insn = { name, op, pos, operand: toOperand(pc, operand) };
            }
            var [_, ...operands] => {
                insn = { name, op, pos, operands: from var operand in operands select toOperand(pc, checkpanic operand.ensureType()) };
            }
        }
    }
    return <bir:Insn>insn;
}

type BirInsnBase readonly & record {|
    string name;
    int pos;
    bir:Operand[] operands?;
    bir:Operand operand?;
    string op?;
    bir:Register result?;
|};

function toCallInsn(FuncParseContext pc, bir:Symbol symbol, Operand[] argsSexpr, sexpr:Symbol resultSexpr, Signature? sigSexpr = ()) returns bir:CallInsn {
    readonly & bir:Operand[] args = from var arg in argsSexpr select toOperand(pc, arg);
    var result = toResultRegister(pc, resultSexpr);
    bir:FunctionSignature erasedSignature = lookupSignature(pc, symbol);

    bir:FunctionSignature signature;
    if sigSexpr != () {
        var [paramTys, retTy] = sigSexpr;
        signature = {
            returnType: toSemType(pc, retTy),
            paramTypes: from var ty in <ts:Type[]>paramTys select toSemType(pc, ty),
            restParamType: ()
        };
    }
    else {
        signature = erasedSignature;
    }
    return <bir:CallInsn>{ func: { symbol, signature, erasedSignature }, args, pos: 0, result };
}

function lookupLabel(FuncParseContext pc, string name) returns bir:Label {
    return pc.blockLabels.get(name);
}

function symbolFromSexpr(FunctionRef symbol) returns bir:Symbol {
    match symbol {
        ["module-get", var [org, nameFirst, ...nameRest], var { s: identifier }] => {
            bir:ModuleId module = { org: org.s, names: [nameFirst.s, ...from var { s } in nameRest select s] };
            return { module, identifier };
        }
        var { s: identifier } => {
            return { isPublic: false, identifier };
        }
    }
    panic error("impossible");
}

function toOperand(FuncParseContext pc, Operand operand) returns bir:Operand {
    match operand {
        var reg if reg is string => {
            return lookupRegister(pc, reg);
        }
        [] => {
            return toConstOperand(pc, ());
        }
        var { s } => {
            return toConstOperand(pc, s);
        }
        ["function", var symbolSexpr] => {
            bir:Symbol symbol = symbolFromSexpr(<FunctionRef>symbolSexpr);
            bir:FunctionSignature signature = lookupSignature(pc, symbol);
            t:Env env = pc.tc.env;
            t:FunctionDefinition d = new(env);
            t:SemType semType =  d.define(env, t:defineListTypeWrapped(new(), env, signature.paramTypes, rest= signature.restParamType ?: t:NEVER, mut=t:CELL_MUT_NONE), signature.returnType);
            return <bir:FunctionConstOperand>{ value: { symbol, signature, erasedSignature: signature }, semType };
        }
        ["float", var f] => {
            return toConstOperand(pc, checkpanic float:fromString((<sexpr:String>f).s)); // JBUG: cast
        }
        ["decimal", var d] => {
            return toConstOperand(pc, checkpanic decimal:fromString((<sexpr:String>d).s)); // JBUG: cast

        }
        var n => {
            return toConstOperand(pc, <int|boolean>n);
        }
    }
}

function toConstOperand(FuncParseContext pc, t:SingleValue value) returns bir:ConstOperand {
    return { semType: t:singleton(pc.tc, value), value };
}

function toResultRegister(FuncParseContext pc, sexpr:Symbol regInternalName) returns bir:TmpRegister {
    return <bir:TmpRegister>lookupRegister(pc, regInternalName);
}

function lookupRegister(FuncParseContext pc, sexpr:Symbol regInternalName) returns bir:Register {
    return pc.regs.get(regInternalName);
}

function toModuleId(ModuleId modId) returns bir:ModuleId {
    var [org, first, ...rest] = modId;
    readonly & [string, string...]  names = [first.s, ...from var { s } in rest select s];
    return { org: org.s, names };
}

function toSemType(FuncParseContext|ParseContext pc, ts:Type typeSexpr) returns t:SemType {
    return t:fromSexpr(pc.tc.env, pc.atoms, typeSexpr);
}

// Happens to be same as `front.syntax:createPosition`, but independent.
function createPosition(int line, int column) returns d:Position {
    return (line << 32) | column;
}

function lookupSignature(FuncParseContext pc, bir:Symbol symbol) returns bir:FunctionSignature {
    return symbol is bir:ExternalSymbol ? pc.extFuncDecl.get(symbol).signature : pc.internalFuncDecl.get(symbol.identifier);
}
