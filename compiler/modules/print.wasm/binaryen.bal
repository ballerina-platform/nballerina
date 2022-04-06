public type NumType "i64"|"i32"|"f32"|"f64";
public type ComplexRefType record {
    string base;
    string? initial = ();
};
public type RefType "anyref"|"eqref"|"i31ref"|ComplexRefType;
public type Type "None"|NumType|RefType;

public type Op "i32.add"|"i32.lt_s"|"i32.le_s"|"i32.gt_s"|"i32.ge_s"|"i32.eq"|"i32.ne"|"i32.or"|"i32.xor"|"i32.and"|"i64.add"|"i64.sub"|"i64.mul"|"i64.div_s"|"i64.rem_s"|"i64.lt_s"|"i64.le_s"|"i64.gt_s"|"i64.ge_s"|"i64.eq"|"i64.ne"|"i64.or"|"i64.xor"|"i64.and"|"i64.extend_i32_u"|"i64.shl"|"i64.eqz"|"i32.wrap_i64"|"ref.is_null"|"ref.is_i31"|"ref.as_data"|"ref.as_i31"|"ref.as_non_null"|"i32.shr_u";

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
    private Expression[] tagExports = [];
    private Expression[] exports = [];
    private Expression[] types = [];
    private Expression[] tags = [];

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
            signature.push(...appendBraces(["param", "$" + i.toString(), getTypeString(params[i])]));
        }
        if results != "None" {
            signature.push(...appendBraces(["result", getTypeString(results)]));
        }
        foreach int i in 0..<varTypes.length() {
            funcBody.push(...appendBraces(["local", "$" + (i + params.length()).toString(), getTypeString(varTypes[i])]));
        }
        funcBody.push(...body.tokens);
        funcBody.push(")");
        self.functions.push({ signature, body : { tokens: funcBody } });
    }

    public function addFunctionImport(string internalName, string externalModuleName, string externalBaseName, Type[] params, Type result)  {
        Token[] importDef = ["import", "\"" + externalModuleName + "\"", "\"" + externalBaseName + "\""];
        Token[] funcDef = ["func", "$" + internalName];
        foreach Type ty in params {
            funcDef.push(...appendBraces(["param", getTypeString(ty)]));
        }
        if result != "None" {
            funcDef.push(...appendBraces(["result", getTypeString(result)]));
        }
        importDef.push(...appendBraces(funcDef));
        self.imports.push({ tokens: appendBraces(importDef) });
    }

    public function addFunctionExport(string internalName, string externalName) {
        Token[] inst = ["export", "\"" + externalName + "\""];
        inst.push(...appendBraces(["func", "$" + internalName]));
        self.exports.push({ tokens: appendBraces(inst) });
    }

    public function addTagExport(string internalName, string externalName) {
        Token[] inst = ["export", "\"" + externalName + "\""];
        inst.push(...appendBraces(["tag", "$" + internalName]));
        self.tagExports.push({ tokens: appendBraces(inst) });
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

    public function loop(string name, Expression body) returns Expression {
        Token[] inst = ["loop", name];
        inst.push(...body.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function block(Expression[] children, string? name = (), Expression? ty = ()) returns Expression {
        Token[] inst = ["block"];
        if name != () {
            inst.push(name);
        }
        if ty != () {
            Token[] result = ["result"];
            result.push(...ty.tokens);
            inst.push(...appendBraces(result));
        }
        foreach Expression child in children {
            inst.push(...child.tokens);
        }
        return { tokens: appendBraces(inst) };
    }

    public function drop(Expression value) returns Expression {
        Token[] inst = ["drop"];
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function blockSetName(Expression expr, string name) returns Expression {
        Token[] updated = ["block"];
        if expr.tokens[1] == "block" {
            updated.push(name, ...expr.tokens.slice(2, expr.tokens.length() - 1));
            return { tokens: appendBraces(updated) };
        }
        panic error("not a block");
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

    public function brOnCastFail(string target, Expression val, Expression ty) returns Expression {
        Token[] inst = ["br_on_cast_fail", target];
        inst.push(...val.tokens);
        inst.push(...ty.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function struct(string[] fields, Type[] fieldTypes, boolean[] mutability) returns Expression {
        Token[] inst = ["struct"];
        foreach int i in 0..<fields.length() {
            Token[] 'field = ["field", "$" + fields[i]];
            if mutability[i] {
                'field.push(...appendBraces(["mut", getTypeString(fieldTypes[i])]));
            }
            else {
                'field.push(getTypeString(fieldTypes[i]));
            }
            inst.push(...appendBraces('field));
        }
        return { tokens: appendBraces(inst) };
    }

    public function addType(string name, Expression ty) {
        Token[] inst = ["type", "$" + name];
        inst.push(...ty.tokens);
        self.types.push({ tokens: appendBraces(inst) });
    }

    public function structNew(string kind, Expression[] values) returns Expression {
        Token[] inst = ["struct.new_with_rtt", "$" + kind];
        foreach Expression value in values {
            inst.push(...value.tokens);
        }
        inst.push(...appendBraces(["rtt.canon", "$" + kind]));
        return { tokens: appendBraces(inst) };
    }

    public function structGet(string kind, string key, Expression value) returns Expression {
        Token[] inst = ["struct.get", "$" + kind, "$" + key];
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function structSet(string kind, string key, Expression struct, Expression value) returns Expression {
        Token[] inst = ["struct.set", "$" + kind, "$" + key];
        inst.push(...struct.tokens);
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function array(Type fieldType) returns Expression {
        Token[] inst = ["array"];
        inst.push(...appendBraces(["mut", getTypeString(fieldType)]));
        return { tokens: appendBraces(inst) };
    }

    public function arrayNew(string kind, Expression size) returns Expression {
        Token[] inst = ["array.new_default_with_rtt", "$" + kind];
        inst.push(...size.tokens);
        inst.push(...appendBraces(["rtt.canon", "$" + kind]));
        return { tokens: appendBraces(inst) };
    }

    public function arrayGet(string kind, Expression arr, Expression index) returns Expression {
        Token[] inst = ["array.get", "$" + kind];
        inst.push(...arr.tokens);
        inst.push(...index.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function arraySet(string kind, Expression arr, Expression index, Expression value) returns Expression {
        Token[] inst = ["array.set", "$" + kind];
        inst.push(...arr.tokens);
        inst.push(...index.tokens);
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function arrayLen(string kind, Expression arr) returns Expression {
        Token[] inst = ["array.len", "$" + kind];
        inst.push(...arr.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function refCast(Expression value, Expression ty) returns Expression {
        Token[] inst = ["ref.cast"];
        inst.push(...value.tokens);
        inst.push(...ty.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function refAs(Op operand, Expression value) returns Expression {
        Token[] inst = [operand];
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function refIs(Op operand, Expression value) returns Expression {
        Token[] inst = [operand];
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function refEq(Expression left, Expression right) returns Expression {
        Token[] inst = ["ref.eq"];
        inst.push(...left.tokens);
        inst.push(...right.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function refNull(string kind = "data") returns Expression {
        return { tokens: appendBraces(["ref.null", kind]) };
    }

    public function rtt(string kind) returns Expression {
        return { tokens: appendBraces(["rtt.canon", "$" + kind]) };
    }

    public function i31New(Expression value) returns Expression {
        Token[] inst = ["i31.new"];
        inst.push(...value.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function i31Get(Expression i31Ref) returns Expression {
        Token[] inst = ["i31.get_u"];
        inst.push(...i31Ref.tokens);
        return { tokens: appendBraces(inst) };
    }

    public function finish() returns string[] {
        Token[] module = [joinTokens(["(", "module"], 0)];
        Expression[][] orderedSections = [self.types, self.imports, self.tags, self.tagExports, self.exports];
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

function getTypeString(Type ty) returns string {
    if ty is ComplexRefType {
        Token[] inst = ["ref"];
        if ty.initial != () {
            inst.push(<string>ty.initial);
        }
        inst.push("$" + ty.base);
        return joinTokens(appendBraces(inst));
    }
    return ty;
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
