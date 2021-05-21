import semtype.core;

public function parse(core:Env env, string str) returns map<core:SemType>|error {
    Module mod = check preparse(str);
    foreach var def in mod {
        _ = check normalizeDef(env, mod, def);
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

function normalizeDef(core:Env env, Module mod, TypeDef def) returns core:SemType|error {
    core:SemType? t = def.semType;
    if t is () {
        if def.cycle {
            return error("invalid cycle detected");
        }
        def.cycle = true;
        core:SemType s = check normalizeType(env, mod, def.td);
        def.semType = s;
        def.cycle = false;
        return s;
    }
    else {
        return t;
    }
}

function normalizeType(core:Env env, Module mod, TypeDesc td) returns core:SemType|error {
    match td {
        // These are easy
        "any" => { return core:ANY; }
        "byte" => { return core:BYTE; }
        "boolean" => { return core:BOOLEAN; }
        "decimal" => { return core:DECIMAL; }
        "float" => { return core:FLOAT; }
        "handle" => { return core:HANDLE; }
        "int" => { return core:INT; }
        "never" => { return core:NEVER; }
        "readonly" => { return core:READONLY; }
        "string" => { return core:STRING; }
        "typedesc" => { return core:TYPEDESC; }
        "xml" => { return core:XML; }
        "json" => { return core:createJson(env); }
        "()" => { return core:NIL; }
    }
    // JBUG would like to use match patterns here, but #30718 prevents it
    if td is ListTypeDesc {
        core:ListDefinition? def = td.def;
        if def is () {
            core:ListDefinition d = new;
            td.def = d;
            // JBUG temp variable `m` is to avoid compiler bug
            TypeDesc[] m = td.members;
            core:SemType[] members = from var x in m select check normalizeType(env, mod, x);
            return d.define(env, members, check normalizeType(env, mod, td.rest));
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
            // JBUG temp variable `f` is to avoid compiler bug
            FieldDesc[] f = td.fields;
            core:Field[] fields = from var { name, typeDesc } in f select [name, check normalizeType(env, mod, typeDesc)];
            return d.define(env, fields, check normalizeType(env, mod, td.rest));
        }
        else {
            return def.getSemType(env);
        }

    }
    if td is TypeDescRef {
        TypeDef? def = mod[td.ref];
        if def is () {
            return error("reference to undefined type '" + td.ref + "'");
        }
        else {
            return check normalizeDef(env, mod, def);
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
     
    if td is BinaryTypeDesc {
        core:SemType l = check normalizeType(env, mod, td.left);
        core:SemType r = check normalizeType(env, mod, td.right);
        if td.op == "|" {
            return core:union(l, r);
        }
        else {
            return core:intersect(l, r);
        }
    }

    return error("unimplemented type-descriptor");
}