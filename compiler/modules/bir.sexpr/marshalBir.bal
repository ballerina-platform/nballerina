import wso2/nballerina.bir;
import wso2/nballerina.types as t;
import wso2/nballerina.comm.sexpr; 
import wso2/nballerina.types.sexpr as tsexpr; 

// JBUG #37145 can't line FunctionTag, RegistersTag types
public type FunctionTag "function";
public type RegistersTag "registers";
public type BlocksTag "blocks";
public type Function [FunctionTag, sexpr:String, FunctionVisibility, tsexpr:Type[], tsexpr:Type, [RegistersTag, Register...], [BlocksTag, Block...]];
public type Register [sexpr:Symbol, bir:RegisterKind, tsexpr:Type];

final ["no-panic"] NO_PANIC_BLOCK_ATTRIBUTE = ["no-panic"];
public type BlockAttributes ["no-panic"]|["on-panic", int];
public type Block [sexpr:Symbol, BlockAttributes, Insn...];

public type Operand sexpr:Data;
public type RegisterName sexpr:Symbol;
public type BlockName sexpr:Symbol;

public type PublicVisibility ["public"];
final PublicVisibility PUBLIC_VISIBILITY = ["public"];
public type ModuleVisibility ()[];
final ModuleVisibility MODULE_VISIBILITY = [];
public type FunctionVisibility PublicVisibility|ModuleVisibility;

public function func(bir:FunctionDefn defn, bir:FunctionCode code, bir:File file) returns Function {
    string[] blockNames = dedupBlockNames(code);

    sexpr:String name = { s: defn.symbol.identifier };
    FunctionVisibility access = defn.symbol.isPublic ? PUBLIC_VISIBILITY : MODULE_VISIBILITY;
    tsexpr:Type[] params = from var t in defn.signature.paramTypes select tsexpr:formSemType(t);
    tsexpr:Type ret = tsexpr:formSemType(defn.signature.returnType);
    ["registers", Register...] regs = ["registers"];
    foreach var reg in code.registers {
        regs.push([regName(reg), reg.kind, tsexpr:formSemType(reg.semType)]);
    }
    ["blocks", Block...] blocks = ["blocks"];
    foreach var block in code.blocks {
        // JBUG cast
        BlockAttributes x = block.onPanic == () ? ["no-panic"] : ["on-panic", <int>block.onPanic];
        Block b = [blockName(block.label, blockNames), x];
        foreach var insn in block.insns {
            b.push(fromInsn(insn, blockNames));
        }
        blocks.push(b);
    }
    return ["function", name, access, params, ret, regs, blocks];
}

final readonly & map<string> insnShortNames = {
    "list_construct_rw": "list-construct",
    "assign": "set",
    "compare<=": "less-than-or-equal",
    "compare>=": "greater-than-or-equal",
    "compare<": "less-than",
    "compare>": "greater-than",
    "equality==": "equal",
    "equality!=": "not-equal",
    "equality===": "exact-equal",
    "equality!==": "not-exact-equal",
    "int_arithmetic_binary+": "int+",
    "int_arithmetic_binary-": "int-",
    "int_arithmetic_binary*": "int*",
    "int_arithmetic_binary/": "int/",
    "int_arithmetic_binary%": "int%",
    "decimal_arithmetic_binary+": "decimal+",
    "decimal_arithmetic_binary-": "decimal-",
    "decimal_arithmetic_binary*": "decimal*",
    "decimal_arithmetic_binary/": "decimal/",
    "decimal_arithmetic_binary%": "decimal%",
    "int_no_panic_arithmetic_binary+": "no-panic-int+",
    "int_no_panic_arithmetic_binary-": "no-panic-int-",
    "int_no_panic_arithmetic_binary*": "no-panic-int*",
    "int_no_panic_arithmetic_binary/": "no-panic-int/",
    "int_no_panic_arithmetic_binary%": "no-panic-int%",
    "int_bitwise_binary|" : "int|",
    "int_bitwise_binary^" : "int^",
    "int_bitwise_binary&" : "int&"
};

public type InsnBase [sexpr:Symbol, sexpr:Data...]; // pr-todo: remove
public type Insn RetInsn|CallInsn|EqualityInsn|CondBranchInsn|ListConstructInsn|BranchInsn|AssignInsn|
                 IntArithmeticBinaryInsn|CatchInsn|AbnormalRetInsn|CompareInsn|BooleanNotInsn;
public type CallInsn ["call", ModuleGet, RegisterName, Operand...];
public type RetInsn ["ret", Operand];
public type EqualityInsn ["equal"|"not-equal"|"exact-equal"|"not-exact-equal", RegisterName, Operand, Operand];
public type CondBranchInsn ["cond-branch", RegisterName, BlockName, BlockName];
public type ListConstructInsn ["list-construct", RegisterName, Operand...];
public type BranchInsn ["branch", BlockName];
public type AssignInsn ["set", RegisterName, Operand];
public type IntArithmeticBinaryInsn ["int+"|"int/"|"int-"|"int*"|"int%", RegisterName, Operand, Operand];
public type CatchInsn ["catch", RegisterName];
public type AbnormalRetInsn ["abnormal-ret", RegisterName];
public type CompareInsn ["less-than"|"greater-than"|"less-than-or-equal"|"greater-than-or-equal", RegisterName, Operand, Operand];
public type BooleanNotInsn ["boolean-not", Operand];


function fromInsn(bir:Insn insn, string[] blockNames) returns Insn {
    if insn is bir:CallInsn {
        var func = insn.func;
        ModuleGet mod;
        if func is bir:FunctionRef {
            mod = sym(func.symbol);
        }
        else {
            panic error("unimplemented");
        }
        CallInsn call = ["call", mod, regName(insn.result)];
        foreach var arg in insn.args {
            call.push(fromOperand(arg));
        }
        return call;
    }
    if insn is bir:BranchInsn {
        BranchInsn br = ["branch", blockName(insn.dest, blockNames)];
        return br;
    }
    if insn is bir:CondBranchInsn {
        CondBranchInsn cond = ["cond-branch", regName(insn.operand), blockName(insn.ifTrue, blockNames), blockName(insn.ifFalse, blockNames)];
        return cond;
    }
    string insnName = insn.name.substring(5).toLowerAscii(); // 5 = "INSN_".length()
    string? op = insn?.op;
    string? insnShortName = insnShortNames[insnName + (op ?: "")];
    sexpr:Data[] i = [replaceUnderscoreWithHyphen(insnShortName ?: insnName)]; // pr-todo: move insnShortNames out
    var semType = insn?.semType;
    if semType != () {
        i.push(tsexpr:formSemType(semType));
    }
    var result = insn?.result;
    if result != () {
        i.push(regName(result));
    }

    var operand = insn?.operand;
    var operands = <bir:Operand[]?>(operand != () ? [operand] : insn?.operands);
    if operands != () {
        foreach var o in operands {
            i.push(fromOperand(o));
        }
    }
    Insn|error x = i.cloneWithType();
    if x is error {
        panic error("can't convert " + i.toString() + " to insn");
    }
    return x;
}

function fromOperand(bir:Operand op) returns sexpr:Data {
    if op is bir:Register {
        return regName(op);
    }
    t:SingleValue value = op.value;
    if value is string {
        return <sexpr:String>{ s: value };
    }
    if value is () {
        return [];
    }
    return value;
}

public type ModuleGet ModuleGetExternal|ModuleGetInternal;
public type ModuleGetExternal ["module-get", sexpr:String[], sexpr:String];
public type ModuleGetInternal ["module-get", sexpr:String];

function sym(bir:Symbol symbol) returns ModuleGet {
    if symbol is bir:ExternalSymbol {
        bir:ModuleId id = symbol.module;
        sexpr:String[] names = [{ s: id.org }];
        foreach var name in id.names {
            names.push({ s: name });
        }
        return ["module-get", names, { s: symbol.identifier }];
    }
    else {
        return ["module-get", { s: symbol.identifier }];
    }
}

function regName(bir:Register reg) returns sexpr:Symbol {
    string result = "r";
    string? name = unnarrow(reg).name;
    if name != () && name != "_" {
        result += "." + name;
        if reg !is bir:NarrowRegister {
            return result;
        }
    }
    return result + "." + reg.number.toString();
}

function unnarrow(bir:Register reg) returns bir:Register {
    if reg is bir:NarrowRegister {
        return unnarrow(reg.underlying);
    }
    else {
        return reg;
    }
}

function blockName(bir:Label label, string[] names) returns BlockName {
    return "b." + names[label];
}

function dedupBlockNames(bir:FunctionCode code) returns string[] {
    string[] result = [];
    map<true> usedNames = {};
    foreach var block in code.blocks {
        string? name = block.name;
        if name != () {
            result.push(usedNames.hasKey(name) ? name + "." + block.label.toString() : name);
            usedNames[name] = true;
        }
        else {
            result.push(block.label.toString());
        }
    }
    return result;
}

function replaceUnderscoreWithHyphen(string s) returns string {
    int[] x = s.toCodePointInts();
    int i = 0;
    foreach var c in x {
        if c == 0x5f { // 0x5f = _
            x[i] = 0x2d; // 0x2d = -
        }
        else {
            x[i] = c;
        }
        i += 1;
    }
    return checkpanic string:fromCodePointInts(x);
}
