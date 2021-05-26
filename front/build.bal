import semtype.core;

public function parse(core:Env env, string str) returns map<core:SemType>|ParseError {
    Module mod = check preparse(str);
    foreach var def in mod {
        _ = check normalizeDef(env, mod, 0, def);
    }
    map<core:SemType> defs = {};
    foreach var def in mod {
        core:SemType? s = def.semType;
        if s is () {
            panic error("nil semtype");
        }
        else {
            defs[def.name] = s;
        }
    }
    return defs;
}

function normalizeDef(core:Env env, Module mod, int depth, TypeDef def) returns core:SemType|ParseError {
    core:SemType? t = def.semType;
    if t is () {
        if depth == def.cycleDepth {
            return error ParseError("invalid cycle detected for " + def.name, pos=def.pos);
        }
        def.cycleDepth = depth;
        core:SemType s = check normalizeType(env, mod, depth, def.td);
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

function normalizeType(core:Env env, Module mod, int depth, TypeDesc td) returns core:SemType|ParseError {
    match td {
        // These are easy
        "any" => { return core:ANY; }
        "boolean" => { return core:BOOLEAN; }
        "decimal" => { return core:DECIMAL; }
        "error" => { return core:ERROR; }
        "float" => { return core:FLOAT; }
        "handle" => { return core:HANDLE; }
        "int" => { return core:INT; }
        "never" => { return core:NEVER; }
        "readonly" => { return core:READONLY; }
        "string" => { return core:STRING; }
        "typedesc" => { return core:TYPEDESC; }
        "xml" => { return core:XML; }
        "sint8" => { return core:intWidthSigned(8); }
        "sint16" => { return core:intWidthSigned(16); }
        "sint32" => { return core:intWidthSigned(32); }
        "uint8" => { return core:BYTE; }
        "uint16" => { return core:intWidthUnsigned(16); }
        "uint32" => { return core:intWidthUnsigned(32); }
        "json" => { return core:createJson(env); }
        "()" => { return core:NIL; }
    }
    // JBUG would like to use match patterns here, but #30718 prevents it
    if td is ListTypeDesc {
        core:ListDefinition? def = td.def;
        if def is () {
            core:ListDefinition d = new;
            td.def = d;
            // JBUG temp variable `m` is to avoid compiler bug #30736
            TypeDesc[] m = td.members;
            core:SemType[] members = from var x in m select check normalizeType(env, mod, depth + 1, x);
            return d.define(env, members, check normalizeType(env, mod, depth + 1, td.rest));
        }
        else {
            return def.getSemType(env);
        }   
    }
    if td is MappingTypeDesc {
        core:MappingDefinition? def = td.def;
        if def is () {
            core:MappingDefinition d = new;
            td.def = d;
            // JBUG temp variable `f` is to avoid compiler bug #30736
            FieldDesc[] f = td.fields;
            core:Field[] fields = from var { name, typeDesc } in f select [name, check normalizeType(env, mod, depth + 1, typeDesc)];
            return d.define(env, fields, check normalizeType(env, mod, depth + 1, td.rest));
        }
        else {
            return def.getSemType(env);
        }
    }
     if td is FunctionTypeDesc {
        core:FunctionDefinition? def = td.def;
        if def is () {
            core:FunctionDefinition d = new(env);
            td.def = d;
            TypeDesc[] a = td.args;
            core:SemType[] args = from var x in a select check normalizeType(env, mod, depth + 1, x);
            return d.define(env, core:tuple(env, ...args), check normalizeType(env, mod, depth + 1, td.ret));
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
            return core:stringConst(value);
        }
        else if value is boolean {
            return core:booleanConst(value);
        }
        else {
            return core:intConst(value);
        }
    }
    if td is ErrorTypeDesc {
        return core:errorDetail(check normalizeType(env, mod, depth, td.detail));
    }
    if td is BinaryTypeDesc {
        // NB depth does not increase here
        core:SemType l = check normalizeType(env, mod, depth, td.left);
        core:SemType r = check normalizeType(env, mod, depth, td.right);
        if td.op == "|" {
            return core:union(l, r);
        }
        else {
            return core:intersect(l, r);
        }
    }

    panic error("unimplemented type-descriptor");
}