import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types.sexpr as ts;
import nballerina.comm.err;

type ModuleDeclsMemo record {|
    readonly ModuleId id;
    map<Signature> funcs = {};
|};

type SerializeContext record {|
    t:Context tc;
    t:AtomTableSexpr atoms = {};
    table<ModuleDeclsMemo> key (id) decls = table[];
    bir:Module mod;
|};

type IdName record {|
    readonly int id;
    string name;
|};

type IdNames table<IdName> key(id);

type FuncSerializeContext record {|
    *SerializeContext;
    IdNames blockNames = table[];
    IdNames regNames = table[];
    IdNames? parentRegNames;
|};

public function fromModule(t:Context tc, bir:Module mod) returns Module|err:Semantic|err:Unimplemented {
    SerializeContext sc = { tc, mod };
    Function[] funcSexprs = from bir:Function func in mod.getFunctions()
                              where func is bir:FunctionDefn
                              select check fromFunction(sc, func, check mod.generateFunctionCode(func.index),
                                                        mod.getPartFile(func.partIndex));
    [sexpr:String, ts:Atom][] atoms = from var [s, atom] in sc.atoms.entries() select [{ s }, atom];
    ModuleDecls[] decl = from var { id, funcs } in sc.decls
                         select [id, ...from var [name, sig] in funcs.entries()
                                        select <FuncDecl>[{ s: name }, "function", sig]];
    File[] files = from var f in mod.getPartFiles()
                   let string? dir = f.directory(), string name = f.filename()
                   select dir == () ? [{ s: basename(name) }, { s: name }] : [{ s: basename(name) }, { s: name }, { s: dir}];
    return [["atoms", ...atoms], ["defns", ...funcSexprs], ["decls", ...decl], ["files", ...files]];
}

function fromFunction(SerializeContext sc, bir:FunctionDefn defn, bir:FunctionCode code, bir:File file) returns Function|err:Semantic|err:Unimplemented{
    var { identifier, isPublic } = defn.symbol;
    sexpr:String name = { s: identifier };
    FunctionVisibility access = isPublic ? PUBLIC_VISIBILITY : MODULE_VISIBILITY;
    var [signature, registers, blocks, closures, [line, col], _] = check fromFunctionInner(sc, (), defn, code, file);
    if closures.length() > 0 {
        return [name, access, ["function", signature, ["file", { s: basename(file.filename()) }], ["loc", line, col],
                              ["registers", ...registers],
                              ["blocks", ...blocks],
                              ["functions", ...closures]]];
    }
    // JBUG: cloneWithType
    return checkpanic [name, access, ["function", signature, ["file", { s: basename(file.filename()) }], ["loc", line, col],
                                     ["registers", ...registers],
                                     ["blocks", ...blocks]]].cloneWithType();
}

function fromAnonFunction(SerializeContext sc, IdNames parentRegNames, bir:AnonFunction func, bir:FunctionCode code, bir:File file) returns AnonFunction|err:Semantic|err:Unimplemented {
    var [baseSig, registers, blocks, closures, [line, col], fsc] = check fromFunctionInner(sc, parentRegNames, func, code, file);
    AnonFunctionSignature signature = anonFunctionSignature(fsc, code, baseSig);
    string name = string `f.${func.index}`;
    AnonFunction body = anonFunctionBody(name, signature, registers, blocks, closures, line, col);
    if signature is Signature {
        return body;
    }
    if body is AnonFunctionWithClosures {
        return ["capturing-function", ...body];
    }
    // JBUG: cast
    return ["capturing-function", ...<AnonFunctionWithoutClosures>body];
}

function anonFunctionBody(string name, AnonFunctionSignature signature, Register[] registers, Block[] blocks, AnonFunction[] closures, int line, int col) returns AnonFunction {
    if closures.length() > 0 {
        return [name, ["function", signature, ["loc", line, col],
                      ["registers", ...registers],
                      ["blocks", ...blocks],
                      ["functions", ...closures]]];
    }
    // JBUG: cloneWithType
    return checkpanic [name, ["function", signature, ["loc", line, col],
                             ["registers", ...registers],
                             ["blocks", ...blocks]]].cloneWithType(AnonFunction);

}

function anonFunctionSignature(FuncSerializeContext sc, bir:FunctionCode code, Signature baseSig) returns AnonFunctionSignature {
    ts:Type[]&readonly captureTypes = from var register in code.registers where register is bir:CapturedRegister select fromType(sc, register.semType);
    if captureTypes.length() == 0 {
        return baseSig;
    }
    return [captureTypes, ...baseSig];
}

function fromFunctionInner(SerializeContext sc, IdNames? parentRegNames, bir:Function func, bir:FunctionCode code, bir:File file) returns [Signature, Register[], Block[], AnonFunction[], [int, int], FuncSerializeContext]|err:Semantic|err:Unimplemented {
    bir:BasicBlock[] blocks = code.blocks; // JBUG: NPE if destructuring is used
    bir:Register[] registers = code.registers;
    IdNames blockNames = differentiate("b", blocks.length(), i => let var { name, label } = blocks[i] in [name, label]);
    IdNames regNames = differentiate("r", registers.length(), i => let var reg = registers[i] in [bir:unnarrow(reg).name, reg.number]);
    FuncSerializeContext fsc = { ...sc, blockNames, regNames, parentRegNames };
    bir:Module mod = sc.mod;
    Register[] registerSexprs = from var r in registers select defnFromRegister(fsc, r);
    Block[] blockSexprs = from var b in blocks select fromBasicBlock(fsc, b, file);
    AnonFunction[] closures = from var child in functionChildren(mod, func)
                                select check fromAnonFunction(sc, regNames, child,
                                                              check mod.generateFunctionCode(child.index),
                                                              file);
    return [fromSignature(fsc, func.decl), registerSexprs, blockSexprs, closures, file.lineColumn(func.position), fsc];
}

function functionChildren(bir:Module mod, bir:Function func) returns bir:AnonFunction[] {
    // JBUG: cast
    return from var child in mod.getFunctions() where child is bir:AnonFunction && child.parent.index == func.index 
                select <bir:AnonFunction>child;
}

function basename(string path) returns string {
    int? i = path.lastIndexOf("/");
    string filename = i == () ? path : path.substring(i + 1);
    return filename.substring(0, filename.lastIndexOf(".") ?: filename.length());
}

// Register definition.
function defnFromRegister(FuncSerializeContext sc, bir:Register reg) returns Register {
    if reg is bir:NarrowRegister {
        return [fromRegister(sc, reg), reg.kind, t:toSexpr(sc.tc, reg.semType, sc.atoms), fromRegister(sc, reg.underlying)];
    }
    else {
        return [fromRegister(sc, reg), reg.kind, t:toSexpr(sc.tc, reg.semType, sc.atoms)];
    }
}

type PositionDependentInsn bir:IntArithmeticBinaryInsn|bir:TypeTestInsn|bir:ConvertToDecimalInsn|bir:ConvertToIntInsn|bir:DecimalArithmeticBinaryInsn|
                           bir:ErrorConstructInsn|bir:ListGetInsn|bir:ListSetInsn|bir:MappingGetInsn|bir:MappingSetInsn|bir:TypeCastInsn;

function fromBasicBlock(FuncSerializeContext sc, bir:BasicBlock block, bir:File file) returns Block {
        bir:Label? onPanic = block.onPanic;
        readonly & BlockPanic blockPanic = onPanic == () ? ["no-panic"] : ["on-panic", formLabel(sc, onPanic)];
        (Insn & readonly|Position & readonly)[] insns = [];
        foreach var insn in block.insns {
            if insn is PositionDependentInsn {
                var [line, col] = file.lineColumn(insn.pos);
                insns.push(["loc", line, col]);
            }
            insns.push(formInsn(sc, insn, file));
        }
        return [formLabel(sc, block.label), blockPanic, ...insns];
}

function formInsn(FuncSerializeContext sc, bir:Insn insn, bir:File file) returns Insn {
    if insn is bir:CallIndirectInsn {
        (readonly & Operand)[] args = from var arg in insn.operands.slice(1) select fromOperand(sc, arg);
        return callInsn(insn.restParamIsList, fromRegister(sc, insn.operands[0]), fromRegister(sc, insn.result), args);
    }
    if insn is bir:CallDirectInsn {
        (readonly & Operand)[] args = from var arg in insn.operands.slice(1) select fromOperand(sc, arg);
        bir:FunctionRef func = insn.operands[0].value;
        FunctionRef ref = fromFunctionRefAccum(sc, func);
        if func.erasedSignature != func.signature {
            return ["call-generic", ref, fromSignature(sc, func.signature), 
                    fromRegister(sc, insn.result), ...args];
        }
        return callInsn(true, ref, fromRegister(sc, insn.result), args);
    }
    else if insn is bir:BranchInsn {
        return [insn.backward ? "branch-back" : "branch", formLabel(sc, insn.dest)];
    }
    else if insn is bir:TypeCondBranchInsn {
        return ["type-cond-branch", fromOperand(sc, insn.operand), fromType(sc, insn.semType),
                                    formLabel(sc, insn.ifTrue), formLabel(sc, insn.ifFalse),
                                    fromRegister(sc, insn.ifTrueRegister), fromRegister(sc, insn.ifFalseRegister)];
    }
    else if insn is bir:CondBranchInsn {
        return ["cond-branch", fromRegister(sc, insn.operand), formLabel(sc, insn.ifTrue), formLabel(sc, insn.ifFalse)];
    }
    else if insn is bir:MappingConstructInsn {
        MapEntry[] entires = []; // JBUG: can't use query and inline
        foreach int i in 0 ..< insn.fieldNames.length() {
            entires[i] = [{ s: insn.fieldNames[i] }, fromOperand(sc, insn.operands[i])];
        }
        return ["mapping-construct", fromRegister(sc, insn.result), ...entires];
    }
    else if insn is bir:ListGetInsn {
        return [insn.fill ? "list-filling-get" : "list-get", fromRegister(sc, insn.result), fromOperand(sc, insn.operands[0]), fromOperand(sc, insn.operands[1])];
    }
    else if insn is bir:TypeTestInsn {
        return ["type-test", fromRegister(sc, insn.result), fromType(sc, insn.semType), fromOperand(sc, insn.operand), insn.negated];
    }
    else if insn is bir:TypeCastInsn {
        return ["type-cast", fromRegister(sc, insn.result), fromType(sc, insn.semType), fromOperand(sc, insn.operand)];
    }
    else if insn is bir:TypeMergeInsn {
        TypeMergePred[] preds = []; // JBUG: can't use query and inline
        foreach int i in 0 ..< insn.predecessors.length() {
            preds.push([formLabel(sc, insn.predecessors[i]), fromOperand(sc, insn.operands[i])]);
        }
        return ["type-merge", fromRegister(sc, insn.result), ...preds];
    }
    else if insn is bir:CaptureInsn {
        return ["capture", fromRegister(sc, insn.result), string `f.${insn.functionIndex}`, ...from var arg in insn.operands select fromOperand(sc, arg)];
    }
    else if insn is bir:PanicInsn {
        return ["panic", fromOperand(sc, insn.operand)];
    }
    // Generic serialization to handle others.
    sexpr:Data[] insnSexpr = [INSN_NAMES_SEXPR.get([insn.name, insn?.op]).sexpr];
    bir:Register? result = insn?.result;
    if result != () {
        insnSexpr.push(fromRegister(sc, result));
    }
    bir:Operand? operand = insn?.operand;
    if operand != () {
        insnSexpr.push(fromOperand(sc, operand));
    }
    bir:Operand[]? operands = insn?.operands;
    if operands != () {
        foreach var o in operands {
            insnSexpr.push(fromOperand(sc, o));
        }
    }
    return checkpanic insnSexpr.cloneWithType();
}

function callInsn(boolean restArgIsList, FunctionRef|RegisterName func, Result result, 
                  (Operand&readonly)[] args) returns CallInsn|CallRestListInsn {
    return restArgIsList ? ["call-rest-list", func, result, ...args] :
                           ["call", func, result, ...args];
}

function fromOperand(FuncSerializeContext sc, bir:Operand op) returns Operand & readonly {
    if op is bir:Register {
        return fromRegister(sc, op);
    }
    t:SingleValue|bir:FunctionRef value = op.value;
    if value is bir:FunctionRef {
        return ["function", fromFunctionRefAccum(sc, value)];
    }
    if value is string {
        return <sexpr:String>{ s: value };
    }
    if value is () {
        return [];
    }
    if value is float {
        return ["float", { s: value.toString() }];
    }
    if value is decimal {
        return ["decimal", { s: value.toString() }];
    }
    int|boolean ib = value;
    return ib;
}

// Convert FunctionRef to a sexpr, accumulates external function signatures to sc.
function fromFunctionRefAccum(FuncSerializeContext sc, bir:FunctionRef funcRef) returns FunctionRef {
    if funcRef is bir:InternalFunctionRef {
        int index = funcRef.index;
        bir:Function func = sc.mod.getFunctions()[index];
        return func is bir:AnonFunction ? string `f.${index}`:
                                          { s: func.symbol.identifier };
    }
    var { identifier, module } = funcRef.symbol;
    ModuleId & readonly id = formModuleId(module);
    ModuleDeclsMemo decls = addGetModDecls(sc, id);
    decls.funcs[identifier] = fromSignature(sc, funcRef.erasedSignature);
    return ["module-get", id, { s: identifier }];
}

function addGetModDecls(FuncSerializeContext sc, readonly & ModuleId id) returns ModuleDeclsMemo {
    ModuleDeclsMemo? existing = sc.decls[id];
    if existing != () {
        return existing;
    }
    ModuleDeclsMemo newDecl = { id };
    sc.decls.add(newDecl);
    return newDecl;
}

function fromSignature(FuncSerializeContext sc, t:FunctionSignature sig) returns readonly & Signature {
    readonly & ts:Type[] params = from var t in sig.paramTypes select fromType(sc, t).cloneReadOnly();
    readonly & ts:Type ret = fromType(sc, sig.returnType);
    readonly & ts:Type rest = sig.restParamType != () ? fromType(sc, <t:SemType>sig.restParamType) : fromType(sc, t:NEVER);
    return [ret, params, rest];
}


function formModuleId(bir:ModuleId id) returns ModuleId & readonly {
    // JBUG: can't use destructuring. var { org, names: [first, ...rest] } = id; returns [{ s: org }, { s: first }, ...from var s in rest select { s }];
    return [{ s: id.org }, { s: id.names[0] },
            ...from var i in 1 ..< id.names.length() select <sexpr:String>{ s: id.names[i] }]; // JBUG: can't infer sexpr:String
}

// Given a list of maybe names and ids, return a table of distinct names, by
// 1. Using id as the name for unnamed items. 2. Using id to differentiate subsequent non-unique names.
function differentiate(string prefix, int len, function(int i) returns [string?, int] iter) returns IdNames {
    IdNames result = table[];
    map<true> names = {};
    foreach var i in 0 ..< len {
        var [srcName, id] = iter(i);
        if srcName != () && srcName != "_" {
            string maybeId = names.hasKey(srcName) ? id.toString() : "";
            string name = prefix + maybeId + "." + srcName;
            result.add({ id, name });
            names[srcName] = true;
        }
        else {
            result.add({ id, name: prefix + id.toString() });
        }
    }
    return result;
}

// Register name/reference.
function fromRegister(FuncSerializeContext sc, bir:Register reg) returns sexpr:Symbol {
    return sc.regNames.get(reg.number).name;
}

function formLabel(FuncSerializeContext sc, bir:Label label) returns Label {
    return sc.blockNames.get(label).name;
}

function fromType(FuncSerializeContext sc, t:SemType ty) returns ts:Type & readonly {
    return checkpanic t:toSexpr(sc.tc, ty, sc.atoms).cloneWithType(); // JBUG: can't make ts:Type readonly,  cloneReadOnly() doesn't work
}
