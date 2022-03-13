public type IntType "i64"|"i32";
public type Type "None"|IntType;
public type Op "i32.add"|"i32.lt_s"|"i32.le_s"|"i32.gt_s"|"i32.ge_s"|"i32.eq"|"i32.ne"|"i32.or"|"i32.xor"|"i32.and"|"i64.add"|"i64.sub"|"i64.mul"|"i64.div_s"|"i64.rem_s"|"i64.lt_s"|"i64.le_s"|"i64.gt_s"|"i64.ge_s"|"i64.eq"|"i64.ne"|"i64.or"|"i64.xor"|"i64.and"|"i64.extend_i32_u"|"i64.shl"|"i64.eqz";


public type Token string;

public type Function record {
    Token[] signature;
    Expression body;
};

public type Expression record {
    Token[] tokens = [];
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
    private Expression[] globals = [];
    private Expression[] memory = [];
    private Expression[] memoryExport = [];

    public function call(string target, Expression[] operands, Type returnType) returns Expression {
        Token[] inst = ["call", "$" + target];
        foreach int i in 0..<operands.length() {
            inst.push(...operands[i].tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function localGet(int index) returns Expression {
        return { tokens: appendBraces(["local.get", "$" + index.toString()]) };
    }

    public function globalGet(string name) returns Expression {
        return { tokens: appendBraces(["global.get", "$" + name]) };
    }

    public function addConst(Literal value) returns Expression {
        if value is LiteralInt32 {
            return { tokens: appendBraces(["i32.const", value.i32.toString()]) };
        }
        else if value is LiteralInt64 {
            return { tokens: appendBraces(["i64.const", value.i64.toString()]) };
        }
        panic error("invalid type");
    }

    public function addReturn(Expression? value = ()) returns Expression {
        Token[] inst = ["return"];
        if value != () {
            inst.push(...value.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function nop() returns Expression {
        return { tokens: appendBraces(["block"]) };
    }

    public function addFunction(string name, Type[] params, Type results, Type[] varTypes, Expression body) {
        Token[] signature = ["(", "func", "$" + name];
        Token[] funcBody = [];
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
        funcBody.push(")");
        self.functions.push({ signature, body : { tokens: funcBody } });
    }

    public function addFunctionImport(string internalName, string externalModuleName, string externalBaseName, Type[] params, Type result)  {
        Token[] importDef = ["import", "\"" + externalModuleName + "\"", "\"" + externalBaseName + "\""];
        Token[] funcDef = ["func", "$" + internalName];
        foreach Type ty in params {
            funcDef.push(...appendBraces(["param", ty]));
        }
        if result != "None" {
            funcDef.push(...appendBraces(["result", result]));
        }
        importDef.push(...appendBraces(funcDef));
        self.imports.push({ tokens: appendBraces(importDef) });
    }

    public function addFunctionExport(string internalName, string externalName) {
        Token[] inst = ["export", "\"" + externalName + "\""];
        inst.push(...appendBraces(["func", "$" + internalName]));
        self.exports.push({ tokens: appendBraces(inst) });
    }

    public function addGlobal(string name, Type ty, boolean mutable_, Expression init) {
        Token[] inst = ["global", "$" + name];
        if mutable_ {
            inst.push(...appendBraces(["mut", ty]));
        }
        inst.push(...init.tokens);
        self.globals.push({ tokens: appendBraces(inst) });
    }

    public function setMemory(int initial, int maximum, string exportName) {
        string[] memInst = ["memory", "$0"];
        string[] exportInst = ["export", "\"" + exportName + "\""];
        exportInst.push(...appendBraces(memInst));
        memInst.push(initial.toString(), maximum.toString());
        self.memory.push({ tokens: appendBraces(memInst) });
        self.memoryExport.push({ tokens: appendBraces(exportInst) });
    }

    public function binary(Op op, Expression left, Expression right) returns Expression {
        Token[] inst = [op];
        inst.push(...left.tokens);
        inst.push(...right.tokens);
        return { tokens : appendBraces(inst) };
    }

    public function unary(Op op, Expression value) returns Expression {
        Token[]  inst = [op];
        inst.push(...value.tokens);
        return { tokens : appendBraces(inst) };
    }

    public function localSet(int index, Expression value) returns Expression {
        Token[] inst = ["local.set", "$" + index.toString()];
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function globalSet(string name, Expression value) returns Expression {
        Token[] inst = ["global.set", "$" + name];
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function loop(string name, Expression body) returns Expression {
        Token[] inst = ["loop", name];
        inst.push(...body.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function block(Expression[] children, string? name = ()) returns Expression {
        Token[] inst = ["block"];
        if name != () {
            inst.push(name);
        }
        foreach Expression child in children {
            inst.push(...child.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function addIf(Expression condition, Expression ifTrue, Expression? ifFalse = ()) returns Expression {
        Token[] inst = ["if"];
        inst.push(...condition.tokens);
        inst.push(...ifTrue.tokens);
        if ifFalse != () {
            inst.push(...ifFalse.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function throw(string tag) returns Expression {
        return { tokens: appendBraces(["throw", "$" + tag]) };
    }

    public function store(int bytes, int offset, int align, Expression ptr, Expression value, Type ty) returns Expression {
        Token[] inst = [ty is "i64" ? "i64.store": "i32.store"];
        inst.push(...ptr.tokens);
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function try(Expression body) returns Expression {
        Token[] tryBody = ["try"];
        Token[] doBody = ["do"];
        doBody.push(...body.tokens);
        tryBody.push(...appendBraces(doBody));
        return { tokens: appendBraces(tryBody)};
    }

    public function addTag(string name) {
        self.tags.push({ tokens: appendBraces(["tag",  "$" + name]) });
    }

    public function br(string name) returns Expression {
        return { tokens: appendBraces(["br", name]) };
    }

    public function finish() returns string[] {
        Token[] module = [joinTokens(["(", "module"], 0)];
        Expression[][] orderedSections = [self.imports, self.tags, self.memory, self.globals, self.memoryExport, self.exports];
        foreach Expression[] section in orderedSections {
            foreach Expression expr in section {
                module.push(joinTokens(expr.tokens));
            }
        }
        foreach int i in 0..<self.functions.length() {
            Function func = self.functions[i];
            Token[] signature = [];
            signature.push(...func.signature);
            module.push(joinTokens(signature));
            Token[] curLine = [];
            int curSpaces = 1;
            int lineSpaces = 1;
            if i == self.functions.length() - 1 {
                func.body.tokens.push(")");
            }
            foreach Token token in func.body.tokens {
                if token == "(" {
                    if curLine.length() > 0 {
                        module.push(joinTokens(curLine, lineSpaces));
                    }
                    curSpaces += 1;
                    lineSpaces = curSpaces;
                    curLine = [];
                }
                else if token == ")" {
                    curSpaces -= 1;
                }
                curLine.push(token);
            }
            module.push(joinTokens(curLine, lineSpaces));
        }
        return module;
    }

}

function appendBraces(Token[] tokens) returns  Token[] {
    Token[] updated = [];
    if tokens.length() > 0 {
        updated = ["("];
        updated.push(...tokens);
        updated.push(")");
    }
    return updated;
}

function joinTokens(Token[] tokens, int spaces = 1) returns string {
    string line = "";
    foreach int i in 0..<spaces {
        line += "  ";
    }
    foreach Token token in tokens {
        if token == ")" {
            line = line.substring(0, line.length() - 1);
        }
        line += token;
        if token != "(" {
            line += " ";
        }
    }
    return line;
}