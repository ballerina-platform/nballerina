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
public type Block [sexpr:String, BlockAttributes, Insn...];

public type Insn [sexpr:Symbol, sexpr:Data...]|CallInsn;

public type CallInsn ["call", ModuleGet, sexpr:Data...];
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
        Block b = [{ s: "b." + blockNames[block.label] }, x];
        foreach var insn in block.insns {
            b.push(ins(insn, blockNames));
        }
        blocks.push(b);
    }
    return ["function", name, access, params, ret, regs, blocks];
}


function ins(bir:Insn insn, string[] blockNames) returns Insn {
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
            call.push(op(arg));
        }
        return call;
    }

    string insnName = insn.name.substring(5).toLowerAscii(); // 5 = "INSN_".length()
    sexpr:Data[] i = [insnName];
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
            i.push(op(o));
        }
    }
    return checkpanic i.cloneWithType();
}

function op(bir:Operand op) returns sexpr:Data {
    if op is bir:Register {
        return regName(op);
    }
    t:SingleValue value = op.value;
    if value is string {
        return <sexpr:String>{ s: value };
    }
    if value is () {
        return "nil";
    }
    return value;
}

public type ModuleGet ["module-get", sexpr:String[], sexpr:String]|["module-get", sexpr:String];

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

function dedupBlockNames(bir:FunctionCode code) returns string[] {
    string[] result = [];
    map<boolean> usedNames = {};
    foreach var block in code.blocks {
        string? name = block.name;
        if name != () {
            boolean? used = usedNames[name];
            if used == true {
                result.push(block.label.toString() + "." + name);
            }
            else {
                result.push(name);
            }
            usedNames[name] = true;
        }
        else {
            result.push(block.label.toString());
        }
    }
    return result;
}
