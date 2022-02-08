public type IntType "i64"|"i32";
public type Type "None"|IntType;
public type Op "AddInt32"|"SubInt32"|"MulInt32"|"DivSInt32"|"DivUInt32"|"RemSInt32"|"RemUInt32"|"EqInt32"|"NeInt32"|"LtSInt32"|"LtUInt32"|"LeSInt32"|"LeUInt32"|"GtSInt32"|"GtUInt32"|"GeSInt32"|"GeUInt32"|"OrInt32"|"XorInt32"|"AddInt64"|"SubInt64"|"MulInt64"|"DivSInt64"|"DivUInt64"|"RemSInt64"|"RemUInt64"|"EqInt64"|"NeInt64"|"LtSInt64"|"LtUInt64"|"LeSInt64"|"LeUInt64"|"GtSInt64"|"GtUInt64"|"GeSInt64"|"GeUInt64"|"OrInt64"|"XorInt64";

final readonly & map<string> signedInt32Ops = {
    "AddInt32": "i32.add",
    "SubInt32": "i32.sub",
    "MulInt32": "i32.mul",
    "DivSInt32": "i32.div_s",
    "RemSInt32": "i32.rem_s",
    "LtSInt32": "i32.lt_s",
    "LeSInt32": "i32.le_s",
    "GtSInt32": "i32.gt_s",
    "EqInt32": "i32.eq",
    "NeInt32": "i32.ne",
    "OrInt32": "i32.or",
    "XorInt32": "i32.xor",
    "AddInt64": "i64.add",
    "SubInt64": "i64.sub",
    "MulInt64": "i64.mul",
    "DivSInt64": "i64.div_s",
    "RemSInt64": "i64.rem_s",
    "LtSInt64": "i64.lt_s",
    "LeSInt64": "i64.le_s",
    "GtSInt64": "i64.gt_s",
    "EqInt64": "i64.eq",
    "NeInt64": "i64.ne",
    "OrInt64": "i64.or",
    "XorInt64": "i64.xor"
};

public type Function record {
    Expression body;
    Type[] vars = [];
    string name;
    string? module = ();
    string? base = ();
    Type[] params = [];
    Type? results = ();
};

public type Export record {
    string value;
    string name;
};

public type Expression record {
    string? code = ();
};

public type Call record {
    *Expression;
    Expression[] operands;
    string target;
    boolean isReturn = false;
    Type ty;
};

public type LocalGet record {
    *Expression;
    int index;
    Type ty;
};

public type Const record {
    *Expression;
    Literal value;
};

public type Return record {
    *Expression;
    Expression? value = ();
};

public type Nop record {
    *Expression;
};

public type WasmBlock record {
    *Expression;
    Expression[] body = [];
    string? name = ();
};

public type If record {
    *Expression;
    Expression condition;
    WasmBlock? elseBody;
    WasmBlock ifBody;
};

public type Break record {
    *Expression;
    string label;
};

public type WasmLoop record {
    *Expression;
    Expression[] loopBody = [];
    string name;
};

public type LiteralInt32 record {
    int i32;
};

public type LiteralInt64 record {
    int i64;
};

public type Literal LiteralInt32|LiteralInt64;

public class Module {
    private Function[] functions = [];
    private string[] imports = [];
    private string[] exports = [];

    public function call(string target, Expression[] operands, int numOperands, Type returnType) returns Expression {
        string[] callInst = ["(call $", target];
        foreach int i in 0...numOperands - 1 {
            string? code = operands[i].code;
            if code != () {
                callInst.push(code);
        }
        }
        callInst.push(")");
        return { code: "".'join(...callInst) };
    }

    public function localGet(int index, Type ty) returns Expression {
        return { code: "(local.get $" + index.toString() + ")" };
    }

    public function addConst(Literal value) returns Expression {
        if value is LiteralInt32 {
            return { code: "(i32.const "+ value.i32.toString() + ")" };
        }
        else {
            return { code: "(i64.const "+ value.i64.toString() + ")" };
        }
    }

    public function addReturn(Expression? value = ()) returns Expression {
        string[] inst = ["(return"];
        if value != () {
            string? code = value.code;
            if code != () {
                inst.push(code);
        }
        }
        inst.push(")");
        return { code: " ".'join(...inst) };
    }

    public function nop() returns Expression {
        return { code: "(block )" };
    }

    public function addFunction(string name, Type[] params, Type results, Type[] varTypes, int numVarTypes, Expression body) {
        Function func = {
            name: name,
            params: params,
            results: results,
            vars: varTypes,
            body: body
        };
        self.functions.push(func);
    }

    public function addFunctionImport(string internalName, string externalModuleName, string externalBaseName, Type[] params, Type results)  {
        string[] funcDef = ["(import \"", externalModuleName, "\" \"", externalBaseName, "\" (func $", internalName];
        foreach Type ty in params {
            funcDef.push(" (param ", ty, ")");
        }
        if results != "None" {
            funcDef.push("(param ");
            funcDef.push(results);
            funcDef.push(")))");
        }
        else{
            funcDef.push("))");
        }
        self.imports.push("".'join(...funcDef));
    }

    public function addFunctionExport(string internalName, string externalName) {
        string funcDef = "(export \"" + externalName + "\"" +  " (func $" + internalName + "))";
        self.exports.push(funcDef);
    }

    public function binary(Op op, Expression left, Expression right) returns Expression {
        string? leftCode = left.code;
        string? rightCode = right.code;
        string[]  binInst = [];
        if leftCode != () && rightCode != () {
            string? operation = signedInt32Ops[op];
            if operation != () {
                binInst.push("(" + operation);
                binInst.push(leftCode);
                binInst.push(rightCode);
                binInst.push(")");
                return { code : " ".'join(...binInst) };
            }
            else {
                panic error("unimplemented");
            }
        }
        panic error("invalid");
    }

    public function unary(Op op, Expression value) returns Expression {
        string? code = value.code;
        string[]  binInst = [];
        if code != () {
            if op == "No" {
                binInst.push("(i32.add");
            }
            else {
                panic error("unimplemented");
            }
            binInst.push(code);
            binInst.push(")");
            return { code : " ".'join(...binInst) };
        }
        panic error("invalid");
    }

    public function localSet(int index, Expression value) returns Expression {
        string? code = value.code;
        if code != () {
            return { code : "(local.set $" + index.toString() + code + " )" };
        }
        panic error("invalid");
    }

    public function block(string? name, Expression[] children, int numChildren, Type ty) returns Expression {
        WasmBlock block = {
            body : children,
            name : name
        };
        return block;
    }

    // BinaryenModuleDispose and BinaryenModulePrint
    public function finish() returns string[] {
        string[] module = [];
        module.push("(module ");
        foreach string imp in self.imports {
            module.push(" " + imp);
        }
        foreach string exp in self.exports {
            module.push(" " + exp);
        }
        foreach Function func in self.functions {
            string funcParams = "";
            string localParam = "";
            int varCount = 0;
            foreach int i in 0...func.params.length() - 1 {
                funcParams += " (param $" + varCount.toString() + " " + func.params[i] + ")";
                varCount += 1;
            }
            string funcDef = " (func $" + func.name + funcParams;
            module.push(funcDef);
            foreach int i in 0...func.vars.length() - 1 {
                localParam = "  (local $" + varCount.toString() + " " + func.vars[i] + ")";
                module.push(localParam);
                varCount += 1;
            }
            string? funcBody = func.body.code;
            if funcBody != () {
            string[] noSeperateCmd = ["local.get","return","br", "i32.const"];
            int spaces = 1;
            string cmd = "";
            string currentCmd = "";
            boolean cmdIn = false;
                foreach string chr in funcBody {
                if chr == "(" {
                    if containCharacter(cmd) {
                        module.push(cmd);
                    }
                    spaces += 1;
                    cmdIn = true;
                    cmd = printSpaces(spaces);
                    cmd += "(";
                }
                else if chr == ")" {
                    if noSeperateCmd.filter(c => c == getCommand(currentCmd)).length() > 0 {
                        cmd += ")";
                        module.push(cmd);
                        cmd = printSpaces(spaces);
                        currentCmd = "";
                    }
                    else {
                        if containCharacter(cmd) {
                            module.push(cmd);
                        }
                        cmd = printSpaces(spaces);
                        cmd += ")";
                        module.push(cmd);
                        cmd = "";
                    }
                    spaces -= 1;
                }
                else {
                    if chr == " " && cmdIn {
                        currentCmd = cmd;
                        cmdIn = false;
                    }
                    cmd += chr;
                    }
                }
            }
            module.push(" )");
        }
        module.push(")");
        return module;
    }

}

function printSpaces(int spaceCount) returns string {
    string spaces = "";
    foreach int i in 0...spaceCount - 1 {
        spaces += " ";
    }
    return spaces;
}

function containCharacter(string text) returns boolean {
    foreach string chr in text {
        if chr != " " {
            return true;
        }
    }
    return false;
}

function getCommand(string cmd) returns string {
    string result = "";
    foreach string chr in cmd {
        if chr != " " && chr != "(" {
            result += chr;
        }
    }
    return result;
}
