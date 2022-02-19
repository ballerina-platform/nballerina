public type IntType "i64"|"i32";
public type Type "None"|IntType;
public type Op "AddInt32"|"SubInt32"|"MulInt32"|"DivSInt32"|"DivUInt32"|"RemSInt32"|"RemUInt32"|"EqInt32"|"NeInt32"|"LtSInt32"|"LtUInt32"|"LeSInt32"|"LeUInt32"|"GtSInt32"|"GtUInt32"|"GeSInt32"|"GeUInt32"|"OrInt32"|"XorInt32"|"AddInt64"|"SubInt64"|"MulInt64"|"DivSInt64"|"DivUInt64"|"RemSInt64"|"RemUInt64"|"EqInt64"|"NeInt64"|"LtSInt64"|"LtUInt64"|"LeSInt64"|"LeUInt64"|"GtSInt64"|"GtUInt64"|"GeSInt64"|"GeUInt64"|"OrInt64"|"XorInt64"|"AndInt64"|"AndInt32";

final readonly & map<string> signedInt32Ops = {
    "AddInt32": "i32.add",
    "SubInt32": "i32.sub",
    "MulInt32": "i32.mul",
    "DivSInt32": "i32.div_s",
    "RemSInt32": "i32.rem_s",
    "LtSInt32": "i32.lt_s",
    "LeSInt32": "i32.le_s",
    "GtSInt32": "i32.gt_s",
    "GeSInt32": "i32.ge_s",
    "EqInt32": "i32.eq",
    "NeInt32": "i32.ne",
    "OrInt32": "i32.or",
    "XorInt32": "i32.xor",
    "AndInt32": "i32.and",
    "AddInt64": "i64.add",
    "SubInt64": "i64.sub",
    "MulInt64": "i64.mul",
    "DivSInt64": "i64.div_s",
    "RemSInt64": "i64.rem_s",
    "LtSInt64": "i64.lt_s",
    "LeSInt64": "i64.le_s",
    "GtSInt64": "i64.gt_s",
    "GeSInt64": "i64.ge_s",
    "EqInt64": "i64.eq",
    "NeInt64": "i64.ne",
    "OrInt64": "i64.or",
    "XorInt64": "i64.xor",
    "AndInt64": "i64.and"
};

public type Function record {
    string[] signature;
    Expression body;
};

public type Expression record {
    string[] tokens = [];
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
    private Expression[] imports = [];
    private Expression[] exports = [];
    private Expression[] tags = [];

    public function call(string target, Expression[] operands, int numOperands, Type returnType) returns Expression {
        string[] callInst = ["call", "$" + target];
        foreach int i in 0...numOperands - 1 {
            callInst.push(...operands[i].tokens);
        }
        return { tokens: appendBraces(callInst) };
    }

    public function localGet(int index, Type ty) returns Expression {
        return { tokens: appendBraces(["local.get", "$" + index.toString()]) };
    }

    public function addConst(Literal value) returns Expression {
        if value is LiteralInt32 {
            return { tokens: appendBraces(["i32.const", value.i32.toString()]) };
        }
        else {
            return { tokens: appendBraces(["i64.const", value.i64.toString()]) };
        }
    }

    public function addReturn(Expression? value = ()) returns Expression {
        string[] inst = ["return"];
        if value != () {
            inst.push(...value.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function nop() returns Expression {
        return { tokens: appendBraces(["block"]) };
    }

    public function addFunction(string name, Type[] params, Type results, Type[] varTypes, int numVarTypes, Expression body) {
        string[] signature = ["func", "$" + name];
        string[] funcBody = [];
        foreach int i in 0..<params.length() {
            signature.push(...appendBraces(["param", "$" + i.toString(), params[i]]));
        }
        if results != "None" {
            signature.push(...appendBraces(["result", results.toString()]));
        }
        foreach int i in 0..<varTypes.length() {
            funcBody.push(...appendBraces(["local", "$" + (i + params.length()).toString(), varTypes[i]]));
        }
        funcBody.push(...body.tokens);
        self.functions.push({ signature: signature, body : { tokens: funcBody } });
    }

    public function addFunctionImport(string internalName, string externalModuleName, string externalBaseName, Type[] params, Type results)  {
        string[] importDef = ["import", "\"" + externalModuleName + "\"", "\"" + externalBaseName + "\""];
        string[] funcDef = ["func", "$" + internalName];
        foreach Type ty in params {
            funcDef.push(...appendBraces(["param", ty]));
        }
        if results != "None" {
            funcDef.push(...appendBraces(["result", results]));
        }
        importDef.push(...appendBraces(funcDef));
        self.imports.push({ tokens: appendBraces(importDef) });
    }

    public function addFunctionExport(string internalName, string externalName) {
        string[] exportDef = ["export", "\"" + externalName + "\""];
        string[] funcDef = ["func", "$" + internalName];
        exportDef.push(...appendBraces(funcDef));
        self.exports.push({ tokens: appendBraces(exportDef) });
    }

    public function binary(Op op, Expression left, Expression right) returns Expression {
        string[]  binInst = [];
        if left.tokens.length() > 0 && right.tokens.length() > 0 {
            string? operation = signedInt32Ops[op];
            if operation != () {
                binInst.push(operation);
                binInst.push(...left.tokens);
                binInst.push(...right.tokens);
                return { tokens : appendBraces(binInst) };
            }
            else {
                panic error("unimplemented");
            }
        }
        panic error("invalid");
    }

    public function localSet(int index, Expression value) returns Expression {
        string[] inst = ["local.set", "$" + index.toString()];
        if value.tokens.length() > 0 {
            inst.push(...value.tokens);
            return { tokens: appendBraces(inst) };
        }
        panic error("invalid");
    }

    public function loop(string name, Expression body) returns Expression {
        string[] inst = ["loop", name];
        inst.push(...body.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function block(string? name, Expression[] children, int numChildren, Type? ty = "None") returns Expression {
        string[] inst = ["block"];
        if name != () {
            inst.push(name);
        }
        foreach Expression child in children {
            inst.push(...child.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function addIf(Expression condition, Expression ifTrue, Expression? ifFalse = ()) returns Expression {
        string[] inst = ["if"];
        inst.push(...condition.tokens);
        inst.push(...ifTrue.tokens);
        if ifFalse != () {
            inst.push(...ifFalse.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

   public function throw(string tag, Expression[] operands, int numOperands) returns Expression {
        return { tokens: appendBraces(["throw", "$" + tag]) };
    }

    public function try(string? name, Expression body, string[] catchTags, int numCatchTags, Expression[] catchBodies, int numCatchBodies, string? delegateTarget = ()) returns Expression {
        string[] tryBody = ["try"];
        string[] doBody = ["do"];
        doBody.push(...body.tokens);
        tryBody.push(...appendBraces(doBody));
        return { tokens: appendBraces(tryBody)};
    }

    public function addTag(string name, Type params, Type results) {
        self.tags.push({ tokens: appendBraces(["tag",  "$" + name]) });
    }

    public function blockSetName(Expression expr, string name) returns Expression {
        string[] updated = ["block"];
        if expr.tokens[1] == "block" {
            updated.push(name, ...expr.tokens.slice(2, expr.tokens.length() - 1));
            return { tokens: appendBraces(updated) };
        }
        panic error("not a block");
    }

    public function br(string name, Expression? condition = (), Expression? value = ()) returns Expression {
        string[] inst = [];
        if condition != () || value != () {
            inst.push("br_if", name);
        }
        else {
            inst.push("br", name);
        }
        if condition != () {
            inst.push(...condition.tokens);
        }
        if value != () {
            inst.push(...value.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function finish() returns string[] {
        string[] module = ["(module"];
        foreach Expression imp in self.imports {
            module.push(joinTokens(imp.tokens, 1));
        }
        foreach Expression tag in self.tags {
            module.push(joinTokens(tag.tokens, 1));
        }
        foreach Expression exp in self.exports {
            module.push(joinTokens(exp.tokens, 1));
        }
        foreach int i in 0..<self.functions.length() {
            Function func = self.functions[i];
            string[] signature = ["("];
            signature.push(...func.signature);
            module.push(joinTokens(signature, 1));
            string[] currLine = [];
            int spaces = 1;
            func.body.tokens.push(")");
            if i == self.functions.length() - 1 {
                func.body.tokens.push(")");
            }
            foreach string token in func.body.tokens {
                if token == "(" {
                    if currLine.length() > 0 {
                        module.push(joinTokens(currLine));
                    }
                    spaces += 1;
                    currLine = [printSpaces(spaces)];
                }
                else if token == ")" {
                    spaces -= 1;
                }
                currLine.push(token);
            }
            module.push(joinTokens(currLine));
        }
        return module;
    }

}

function printSpaces(int spaceCount) returns string {
    string spaces = "";
    foreach int i in 0...spaceCount - 1 {
        spaces += "  ";
    }
    return spaces;
}

function appendBraces(string[] tokens) returns  string[] {
    string[] updated = [];
    if tokens.length() > 0 {
        updated = ["("];
        updated.push(...tokens);
        updated.push(")");
    }
    return updated;
}

function joinTokens(string[] tokens, int spaces = 0) returns string {
    string line = printSpaces(spaces) + "";
    boolean avoidSpace = false;
    foreach string token in tokens {
        if token == "(" {
            avoidSpace = true;
        }
        else if token == ")" {
            if line[line.length() - 1] == " " {
                line = line.substring(0, line.length() - 1);
            }
        }
        line += token;
        if !avoidSpace {
            line += " ";
        }
        else {
            avoidSpace = false;
        }
    }
    return line;
}




