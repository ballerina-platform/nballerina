import wso2/nballerina.types as t;

public function parse(t:Env env, string str) returns map<t:SemType>|ParseError {
    Module mod = check preparse(str);
    foreach var def in mod {
        _ = check normalizeDef(env, mod, 0, def);
    }
    map<t:SemType> defs = {};
    foreach var def in mod {
        t:SemType? s = def.semType;
        if s is () {
            panic error("nil semtype");
        }
        else {
            defs[def.name] = s;
        }
    }
    return defs;
}

function normalizeDef(t:Env env, Module mod, int depth, TypeDef def) returns t:SemType|ParseError {
    t:SemType? t = def.semType;
    if t is () {
        if depth == def.cycleDepth {
            return error ParseError("invalid cycle detected for " + def.name, pos=def.pos);
        }
        def.cycleDepth = depth;
        t:SemType s = check normalizeType(env, mod, depth, def.td);
        t = def.semType;
        if t is () {
            def.semType = s;
            def.cycleDepth = -1;
            return s;
        }
        else {
            // This can happen with recursion
            // We use the first definition we produced
            // and throw away the others
            return t;
        }
    }
    else {
        return t;
    }
}

function normalizeType(t:Env env, Module mod, int depth, TypeDesc td) returns t:SemType|ParseError {
    match td {
        // These are easy
        "any" => { return t:ANY; }
        "boolean" => { return t:BOOLEAN; }
        "decimal" => { return t:DECIMAL; }
        "error" => { return t:ERROR; }
        "float" => { return t:FLOAT; }
        "handle" => { return t:HANDLE; }
        "int" => { return t:INT; }
        "never" => { return t:NEVER; }
        "readonly" => { return t:READONLY; }
        "string" => { return t:STRING; }
        "typedesc" => { return t:TYPEDESC; }
        "xml" => { return t:XML; }
        "sint8" => { return t:intWidthSigned(8); }
        "sint16" => { return t:intWidthSigned(16); }
        "sint32" => { return t:intWidthSigned(32); }
        "uint8" => { return t:BYTE; }
        "uint16" => { return t:intWidthUnsigned(16); }
        "uint32" => { return t:intWidthUnsigned(32); }
        "json" => { return t:createJson(env); }
        "()" => { return t:NIL; }
    }
    // JBUG would like to use match patterns here, but #30718 prevents it
    if td is ListTypeDesc {
        t:ListDefinition? def = td.def;
        if def is () {
            t:ListDefinition d = new;
            td.def = d;
            // JBUG temp variable `m` is to avoid compiler bug #30736
            TypeDesc[] m = td.members;
            t:SemType[] members = from var x in m select check normalizeType(env, mod, depth + 1, x);
            return d.define(env, members, check normalizeType(env, mod, depth + 1, td.rest));
        }
        else {
            return def.getSemType(env);
        }   
    }
    if td is MappingTypeDesc {
        t:MappingDefinition? def = td.def;
        if def is () {
            t:MappingDefinition d = new;
            td.def = d;
            // JBUG temp variable `f` is to avoid compiler bug #30736
            FieldDesc[] f = td.fields;
            t:Field[] fields = from var { name, typeDesc } in f select [name, check normalizeType(env, mod, depth + 1, typeDesc)];
            return d.define(env, fields, check normalizeType(env, mod, depth + 1, td.rest));
        }
        else {
            return def.getSemType(env);
        }
    }
     if td is FunctionTypeDesc {
        t:FunctionDefinition? def = td.def;
        if def is () {
            t:FunctionDefinition d = new(env);
            td.def = d;
            TypeDesc[] a = td.args;
            t:SemType[] args = from var x in a select check normalizeType(env, mod, depth + 1, x);
            return d.define(env, t:tuple(env, ...args), check normalizeType(env, mod, depth + 1, td.ret));
        }
        else {
            return def.getSemType(env);
        }
    }
    if td is TypeDescRef {
        TypeDef? def = mod[td.ref];
        if def is () {
            return error ParseError("reference to undefined type '" + td.ref + "'", pos=td.pos);
        }
        else {
            return check normalizeDef(env, mod, depth, def);
        }
    }
    if td is SingletonTypeDesc {
        var value = td.value;
        if value is string {
            return t:stringConst(value);
        }
        else if value is boolean {
            return t:booleanConst(value);
        }
        else {
            return t:intConst(value);
        }
    }
    if td is ErrorTypeDesc {
        return t:errorDetail(check normalizeType(env, mod, depth, td.detail));
    }
    if td is BinaryTypeDesc {
        // NB depth does not increase here
        t:SemType l = check normalizeType(env, mod, depth, td.left);
        t:SemType r = check normalizeType(env, mod, depth, td.right);
        if td.op == "|" {
            return t:union(l, r);
        }
        else {
            return t:intersect(l, r);
        }
    }

    panic error("unimplemented type-descriptor");
}