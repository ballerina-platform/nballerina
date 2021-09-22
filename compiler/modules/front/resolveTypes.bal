import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.bir;
import wso2/nballerina.err;

type ResolveTypeError err:Semantic|err:Unimplemented;

function createTypeMap(ModuleSymbols mod) returns map<t:SemType> {
    map<t:SemType> defns = {};
    foreach var defn in mod.defns {
        t:SemType t;
        if defn is s:TypeDefn {
            t = <t:SemType>defn.semType;
        }
        else if defn is s:ConstDefn {
            t = (<s:ResolvedConst>defn.resolved)[0];
        }
        else {
            continue;
        }
        defns[defn.name] = t;
    }
    return defns;
}

function resolveTypes(ModuleSymbols mod) returns ResolveTypeError? {
    foreach var defn in mod.defns {
        if defn is s:TypeDefn {
            _ = check resolveTypeDefn(mod, defn, 0);
        }
        else if defn is s:ConstDefn {
            _ = check resolveConstDefn(mod, defn);
        }
        else {
            // it's a FunctionDefn
            defn.signature = check resolveFunctionSignature(mod, defn);
        }
    }
}

function resolveFunctionSignature(ModuleSymbols mod, s:FunctionDefn defn) returns bir:FunctionSignature|ResolveTypeError {
    s:FunctionTypeDesc td = defn.typeDesc;  
    t:SemType[] params = [];
    // JBUG if this is done with a select, then it gets a bad, sad at runtime if the check gets an error
    foreach var x in td.args {
        params.push(check resolveSubsetTypeDesc(mod, defn, x));
    }
    t:SemType ret = check resolveSubsetTypeDesc(mod, defn, td.ret);
    return { paramTypes: params.cloneReadOnly(), returnType: ret };
}

function resolveSubsetTypeDesc(ModuleSymbols mod, s:ModuleLevelDefn defn, s:TypeDesc td) returns t:SemType|ResolveTypeError {
    t:SemType ty = check resolveTypeDesc(mod, defn, 0, td);
    if ty is t:UniformTypeBitSet
       && (t:isSubtypeSimple(ty, <t:UniformTypeBitSet>(t:ERROR|t:FLOAT|t:STRING|t:INT|t:BOOLEAN|t:NIL))
           || (ty == t:ANY || ty == t:TOP)) {
        return ty;
    }
    t:UniformTypeBitSet? memberTy = t:simpleArrayMemberType(mod.tc, ty, strict=true);
    if memberTy != () {
        return ty;
    }
    memberTy = t:simpleMapMemberType(mod.tc, ty, strict=true);
    if memberTy != () {
        return ty;
    }
    return err:unimplemented("unimplemented type descriptor", s:defnLocation(defn));
}

function resolveTypeDefn(ModuleSymbols mod, s:TypeDefn defn, int depth) returns t:SemType|ResolveTypeError {
    t:SemType? t = defn.semType;
    if t is () {
        if depth == defn.cycleDepth {
            return err:semantic(`invalid cycle detected for ${defn.name}`, s:defnLocation(defn));
        }
        defn.cycleDepth = depth;
        t:SemType s = check resolveTypeDesc(mod, defn, depth, defn.td);
        t = defn.semType;
        if t is () {
            defn.semType = s;
            defn.cycleDepth = -1;
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

function resolveTypeDesc(ModuleSymbols mod, s:ModuleLevelDefn modDefn, int depth, s:TypeDesc td) returns t:SemType|ResolveTypeError {
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
        "json" => { return t:createJson(mod.tc.env); }
        "()" => { return t:NIL; }
    }
    final t:Env env = mod.tc.env;
    // JBUG would like to use match patterns here, but #30718 prevents it
    if td is s:ListTypeDesc {
        t:ListDefinition? defn = td.defn;
        if defn is () {
            t:ListDefinition d = new;
            td.defn = d;
            // JBUG temp variable `m` is to avoid compiler bug #30736
            s:TypeDesc[] m = td.members;
            t:SemType[] members = from var x in m select check resolveTypeDesc(mod, modDefn, depth + 1, x);
            t:SemType rest = check resolveTypeDesc(mod, modDefn, depth + 1, td.rest);
            return d.define(env, members, rest);
        }
        else {
            return defn.getSemType(env);
        }   
    }
    if td is s:MappingTypeDesc {
        t:MappingDefinition? defn = td.defn;
        if defn is () {
            t:MappingDefinition d = new;
            td.defn = d;
            // JBUG temp variable `f` is to avoid compiler bug #30736
            s:FieldDesc[] f = td.fields;
            t:Field[] fields = from var { name, typeDesc } in f select [name, check resolveTypeDesc(mod, modDefn, depth + 1, typeDesc)];
            t:SemType rest = check resolveTypeDesc(mod, modDefn, depth + 1, td.rest);
            return d.define(env, fields, rest);
        }
        else {
            return defn.getSemType(env);
        }
    }
     if td is s:FunctionTypeDesc {
        t:FunctionDefinition? defn = td.defn;
        if defn is () {
            t:FunctionDefinition d = new(env);
            td.defn = d;
            s:TypeDesc[] a = td.args;
            t:SemType[] args = from var x in a select check resolveTypeDesc(mod, modDefn, depth + 1, x);
            t:SemType ret = check resolveTypeDesc(mod, modDefn, depth + 1, td.ret);
            return d.define(env, t:tuple(env, ...args), ret);
        }
        else {
            return defn.getSemType(env);
        }
    }
    if td is s:TypeDescRef {
        s:ModuleLevelDefn? defn = mod.defns[td.ref];
        if defn is () {
            return err:semantic(`reference to undefined type ${td.ref}`, err:location(modDefn.part.file, td.pos));
        }
        else if defn is s:TypeDefn {
            return check resolveTypeDefn(mod, defn, depth);
        }
        else if defn is s:ConstDefn {
            var [t, _] = check resolveConstDefn(mod, defn);
            return t;
        }
        else {
            return err:semantic(`reference to non-type ${td.ref} in type-descriptor`, err:location(modDefn.part.file, td.pos));
        }
    }
    if td is s:SingletonTypeDesc {
        var value = td.value;
        if value is string {
            return t:stringConst(value);
        }
        else if value is boolean {
            return t:booleanConst(value);
        }
        else if value is int {
            return t:intConst(value);
        }
        else {
            return t:floatConst(value);
        }
    }
    if td is s:ErrorTypeDesc {
        return t:errorDetail(check resolveTypeDesc(mod, modDefn, depth, td.detail));
    }
    if td is s:BinaryTypeDesc {
        // NB depth does not increase here
        t:SemType l = check resolveTypeDesc(mod, modDefn, depth, td.left);
        t:SemType r = check resolveTypeDesc(mod, modDefn, depth, td.right);
        if td.op == "|" {
            return t:union(l, r);
        }
        else {
            return t:intersect(l, r);
        }
    }
    panic error("unimplemented type-descriptor");
}

function resolveInlineBuiltinTypeDesc(s:InlineBuiltinTypeDesc td) returns t:UniformTypeBitSet {
    match td {
        "any" => { return t:ANY; }
        "boolean" => { return t:BOOLEAN; }
        "int" => { return t:INT; }
        "float" => { return t:FLOAT; }
        "string" => { return t:STRING; }
        "error" => { return t:ERROR; }
    }
    panic err:impossible("unreachable in resolveInlineBuiltinTypeDesc");
}