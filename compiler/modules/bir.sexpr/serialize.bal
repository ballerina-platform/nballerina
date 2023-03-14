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
|};

public function fromModule(t:Context tc, bir:Module mod) returns Module|err:Semantic|err:Unimplemented {
    SerializeContext sc = { tc };
    bir:FunctionDefn[] functionDefns = mod.getFunctionDefns();
    Function[] funcSexprs = [];
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionDefn defn = functionDefns[i];
        bir:FunctionCode code = check mod.generateFunctionCode(i);
        bir:File file = mod.getPartFile(defn.partIndex);
        funcSexprs.push(fromFunction(sc, defn, code, file));
    }
    readonly & [sexpr:String, ts:Atom][] atoms = from var [s, atom] in sc.atoms.entries()
                                                 select [{ s }, atom.cloneReadOnly()]; // JBUG: can't make atom readonly
    ModuleDecls[] decl = from var { id, funcs } in sc.decls
                         select [id, ...from var [name, sig] in funcs.entries()
                                        select <FuncDecl>[{ s: name }, "function", sig]];
    return [["atoms", ...atoms], ["defn", ...funcSexprs], ["decl", ...decl]];
}


function fromFunction(SerializeContext sc, bir:FunctionDefn defn, bir:FunctionCode code, bir:File file) returns Function {
    bir:BasicBlock[] blocks = code.blocks; // JBUG: NPE if destructuring is used
    bir:Register[] registers = code.registers;
    IdNames blockNames = differentiate("b", blocks.length(), i => let var { name, label } = blocks[i] in [name, label]);
    IdNames regNames = differentiate("r", registers.length(), i => let var reg = registers[i] in [bir:unnarrow(reg).name, reg.number]);
    FuncSerializeContext fsc = { ...sc, blockNames, regNames };
    sexpr:String name = { s: defn.symbol.identifier };
    FunctionVisibility access = defn.symbol.isPublic ? PUBLIC_VISIBILITY : MODULE_VISIBILITY;
    return [name, access, ["function", fromSignature(fsc, defn.signature),
                              ["registers", ...from var r in registers select defnFromRegister(fsc, r)],
                              ["blocks", ...from var b in blocks select fromBasicBlock(fsc, b, file)]]];
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

function fromBasicBlock(FuncSerializeContext sc, bir:BasicBlock block, bir:File file) returns Block {
        bir:Label? onPanic = block.onPanic;
        readonly & BlockPanic blockPanic = onPanic == () ? ["no-panic"] : ["on-panic", formLabel(sc, onPanic)];
        return [formLabel(sc, block.label), blockPanic,
                ...from var insn in block.insns select formInsn(sc, insn, file)];
}

function formInsn(FuncSerializeContext sc, bir:Insn insn, bir:File file) returns Insn {
    // io:println(insn.name + " " + file.lineColumn(insn.pos).toString());
    if insn is bir:CallInsn {
        bir:FunctionRef func =  insn.func;
        FunctionRef ref = fromFunctionRefAccum(sc, func);
        (Operand & readonly)[] args = from var arg in insn.args select fromOperand(sc, arg);
        if func.erasedSignature != func.signature {
            return ["call-generic", ref, fromSignature(sc, func.signature), fromRegister(sc, insn.result), ...args];
        }
        else {
            return ["call", ref, fromRegister(sc, insn.result), ...args];
        }
    }
    else if insn is bir:CallIndirectInsn {
        (Operand & readonly)[] args = from var arg in insn.args select fromOperand(sc, arg);
        return ["call-indirect", fromOperand(sc, insn.func), fromRegister(sc, insn.result), ...args];
    }
    // TODO: handle call indirect
    else if insn is bir:BranchInsn {
        return [insn.backward ? "branch-back" : "branch", formLabel(sc, insn.dest)];
    }
    else if insn is bir:TypeBranchInsn {
        return ["type-branch", fromOperand(sc, insn.operand), fromType(sc, insn.semType),
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
    else if insn is bir:PanicInsn {
        return ["panic", fromOperand(sc, insn.operand)];
    }
    // Generic serialization to handle others.
    sexpr:Data[] insnSexpr = [fromInsnNameOp(insn.name, insn?.op)];
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

function fromOperand(FuncSerializeContext sc, bir:Operand op) returns Operand & readonly {
    if op is bir:Register {
        return fromRegister(sc, op);
    }
    // FIXME:
    if op is bir:FunctionConstValOperand {
        return "function val";
    }
    t:SingleValue value = op.value;
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
    bir:Symbol symbol = funcRef.symbol;
    string identifier = symbol.identifier;
    if symbol is bir:ExternalSymbol {
        ModuleId & readonly id = formModuleId(symbol.module);
        ModuleDeclsMemo decls = addGetModDecls(sc, id);
        decls.funcs[identifier] = fromSignature(sc, funcRef.erasedSignature);
        return ["module-get", id, { s: identifier }];
    }
    else {
        return { s: identifier };
    }
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

function fromSignature(FuncSerializeContext sc, bir:FunctionSignature sig) returns readonly & Signature {
    readonly & ts:Type[] params = from var t in sig.paramTypes select fromType(sc, t).cloneReadOnly();
    readonly & ts:Type ret = fromType(sc, sig.returnType);
    return [params, ret];
}


function formModuleId(bir:ModuleId id) returns ModuleId & readonly {
    // JBUG: can't use destructuring. var { org, names: [first, ...rest] } = id; returns [{ s: org }, { s: first }, ...from var s in rest select { s }];
    return [{ s: id.org }, { s: id.names[0] },
            ...from var i in 1 ..< id.names.length() select <sexpr:String>{ s: id.names[i] }]; // JBUG: can't infer sexpr:String
}

// Given a list of maybe names and ids, return a table of distinct names, by appending the id to subsequent non-unique names.
// Id is used as the name for unnamed items. Each name is prefixed. Names are delimited by ".".
function differentiate(string prefix, int len, function(int i) returns [string?, int] iter) returns IdNames {
    IdNames result = table[];
    map<true> nameId = {};
    foreach var i in 0 ..< len {
        var [currentName, id] = iter(i);
        if currentName != () {
            string name = prefix + "." + currentName;
            if nameId.hasKey(currentName) {
                name += "." + id.toString();
            }
            result.add({ id, name });
            nameId[currentName] = true;
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
