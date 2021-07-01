import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.err;

function createTypeMap(ModuleTable mod) returns map<t:SemType> {
    map<t:SemType> defs = {};
    foreach var def in mod {
        if def is TypeDef {
            t:SemType? s = def.semType;
            if s is () {
                panic error("nil semtype");
            }
            else {
                defs[def.name] = s;
            }
        }       
    }
    return defs;
}

function convertTypes(t:Env env, ModuleTable mod) returns err:Semantic|err:Unimplemented? {
    foreach var def in mod {
        if def is TypeDef {
            _ = check convertTypeDef(env, mod, 0, def);
        }
        else {
            // it's a FunctionDef
            def.signature = check convertFunctionSignature(env, mod, def.typeDesc, def.pos);
        }
    }
}

function convertFunctionSignature(t:Env env, ModuleTable mod, FunctionTypeDesc td, err:Position pos) returns bir:FunctionSignature|err:Semantic|err:Unimplemented {
    t:SemType[] params = from var x in td.args select check convertSubsetTypeDesc(env, mod, x, pos);
    t:SemType ret = check convertSubsetTypeDesc(env, mod, td.ret, pos);
    return { paramTypes: params.cloneReadOnly(), returnType: ret };
}

function convertSubsetTypeDesc(t:Env env, ModuleTable mod, TypeDesc td, err:Position pos) returns t:SemType|err:Semantic|err:Unimplemented {
    t:SemType ty = check convertTypeDesc(env, mod, 0, td);
    if ty === t:INT || ty === t:BOOLEAN || ty === t:NIL || ty === t:ANY {
        return ty;
    }
    return err:unimplemented("unimplemented type descriptor", pos=pos);
}

function convertTypeDef(t:Env env, ModuleTable mod, int depth, TypeDef def) returns t:SemType|err:Semantic {
    t:SemType? t = def.semType;
    if t is () {
        if depth == def.cycleDepth {
            return err:semantic(`invalid cycle detected for ${def.name}`, def.pos);
        }
        def.cycleDepth = depth;
        t:SemType s = check convertTypeDesc(env, mod, depth, def.td);
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

function convertInlineTypeDesc(InlineTypeDesc td) returns t:UniformTypeBitSet {
    match td {
        "any" => { return t:ANY; }
        "boolean" => { return t:BOOLEAN; }
        "int" => { return t:INT; }
    }
    // JBUG next line gets a bad, sad
    // return err:unreached();
    panic error("unreachable in convertInlineTypeDesc");
}

function convertTypeDesc(t:Env env, ModuleTable mod, int depth, TypeDesc td) returns t:SemType|err:Semantic {
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
            t:SemType[] members = from var x in m select check convertTypeDesc(env, mod, depth + 1, x);
            t:SemType rest = check convertTypeDesc(env, mod, depth + 1, td.rest);
            return d.define(env, members, rest);
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
            t:Field[] fields = from var { name, typeDesc } in f select [name, check convertTypeDesc(env, mod, depth + 1, typeDesc)];
            t:SemType rest = check convertTypeDesc(env, mod, depth + 1, td.rest);
            return d.define(env, fields, rest);
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
            t:SemType[] args = from var x in a select check convertTypeDesc(env, mod, depth + 1, x);
            t:SemType ret = check convertTypeDesc(env, mod, depth + 1, td.ret);
            return d.define(env, t:tuple(env, ...args), ret);
        }
        else {
            return def.getSemType(env);
        }
    }
    if td is TypeDescRef {
        ModuleLevelDef? def = mod[td.ref];
        if def is () {
            return err:semantic(`reference to undefined type ${td.ref}`, pos=td.pos);
        }
        else if def is TypeDef {
            return check convertTypeDef(env, mod, depth, def);
        }
        else {
            return err:semantic(`reference to non-type ${td.ref} in type-descriptor`, pos=td.pos);
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
        return t:errorDetail(check convertTypeDesc(env, mod, depth, td.detail));
    }
    if td is BinaryTypeDesc {
        // NB depth does not increase here
        t:SemType l = check convertTypeDesc(env, mod, depth, td.left);
        t:SemType r = check convertTypeDesc(env, mod, depth, td.right);
        if td.op == "|" {
            return t:union(l, r);
        }
        else {
            return t:intersect(l, r);
        }
    }

    panic error("unimplemented type-descriptor");
}