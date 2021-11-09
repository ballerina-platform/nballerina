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
    t:SemType[] params = from var x in td.args select check resolveSubsetTypeDesc(mod, defn, x);
    t:SemType ret = check resolveSubsetTypeDesc(mod, defn, td.ret);
    return { paramTypes: params.cloneReadOnly(), returnType: ret };
}

function resolveSubsetTypeDesc(ModuleSymbols mod, s:ModuleLevelDefn defn, s:TypeDesc td) returns t:SemType|ResolveTypeError {
    t:SemType ty = check resolveTypeDesc(mod, defn, 0, td);
    if t:isEmpty(mod.tc, ty) {
        // SUBSET never disallowed
        return err:semantic("intersection type does not allow any values", s:locationInDefn(defn, td.startPos));
    }
    return ty;
}

function isSubsetUnionType(t:SemType ty) returns boolean {
    return (ty is t:UniformTypeBitSet
            && ((t:isSubtypeSimple(ty, <t:UniformTypeBitSet>(t:ERROR|t:FLOAT|t:STRING|t:INT|t:BOOLEAN|t:NIL)) && ty != t:NEVER)
                || (ty == t:ANY || ty == t:TOP)));
}

function resolveTypeDefn(ModuleSymbols mod, s:TypeDefn defn, int depth) returns t:SemType|ResolveTypeError {
    t:SemType? t = defn.semType;
    if t == () {
        if depth == defn.cycleDepth {
            return err:semantic(`invalid cycle detected for ${defn.name}`, s:defnLocation(defn));
        }
        defn.cycleDepth = depth;
        t:SemType s = check resolveTypeDesc(mod, defn, depth, defn.td);
        t = defn.semType;
        if t == () {
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
    if td is s:BuiltinTypeDesc {
        match td.builtinTypeName {
            // These are easy
            "any" => { return t:ANY; }
            "boolean" => { return t:BOOLEAN; }
            "decimal" => { return t:DECIMAL; }
            "error" => { return t:ERROR; }
            "float" => { return t:FLOAT; }
            "int" => { return t:INT; }
            "null" => { return t:NIL; }
            "string" => { return t:STRING; }
        }
        if !mod.allowAllTypes {
            return err:unimplemented(`type ${td.builtinTypeName} is not implemented`, s:locationInDefn(modDefn, td.startPos));
        }
        match td.builtinTypeName {
            "byte" => { return t:BYTE; }
            "handle" => { return t:HANDLE; }
            "json" => { return t:createJson(mod.tc.env); }
            "never" => { return t:NEVER; }
            "readonly" => { return t:READONLY; }
            "typedesc" => { return t:TYPEDESC; }
            "xml" => { return t:XML; }
        }
    }
    final t:Env env = mod.tc.env;
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
    // JBUG would like to use match patterns here. This cannot be done properly without fixing #33309
    if td is s:ListTypeDesc {
        t:ListDefinition? defn = td.defn;
        if defn == () {
            if !mod.allowAllTypes && td.members.length() > 0 {
                return err:unimplemented("tuple types not implemented", s:locationInDefn(modDefn, td.startPos));
            }
            t:ListDefinition d = new;
            td.defn = d;
            t:SemType[] members = from var x in td.members select check resolveMemberTypeDesc(mod, modDefn, depth + 1, x);
            t:SemType rest = check resolveMemberTypeDesc(mod, modDefn, depth + 1, td.rest);
            return d.define(env, members, rest);
        }
        else {
            return defn.getSemType(env);
        }   
    }
    if td is s:MappingTypeDesc {
        t:MappingDefinition? defn = td.defn;
        if defn == () {
            t:MappingDefinition d = new;
            td.defn = d;
            // JBUG this panics if done with `from` and there's an error is resolveMemberTypeDesc
            t:Field[] fields = [];
            foreach var { name, typeDesc } in td.fields {
                fields.push([name, check resolveMemberTypeDesc(mod, modDefn, depth + 1, typeDesc)]);
            }
            map<s:FieldDesc> fieldsByName = {};
            foreach var fd in td.fields {
                if fieldsByName[fd.name] != () {
                    return err:semantic(`duplicate field ${fd.name}`, s:locationInDefn(modDefn));
                }
                fieldsByName[fd.name] = fd;
            }
            s:TypeDesc? restTd = td.rest;
            t:SemType rest;
            if restTd == () {
                rest = t:NEVER;
            }
            else {
                if !mod.allowAllTypes && td.fields.length() > 0 {
                    return err:unimplemented("open record types not implemented", s:locationInDefn(modDefn, td.startPos));
                }
                rest = check resolveMemberTypeDesc(mod, modDefn, depth + 1, restTd);
            }
            return d.define(env, fields, rest);
        }
        else {
            return defn.getSemType(env);
        }
    }
    if td is s:TypeDescRef {
        string? prefix = td.prefix;
        if prefix == () {
            s:ModuleLevelDefn? defn = mod.defns[td.typeName];
            if defn == () {
                return err:semantic(`reference to undefined type ${td.typeName}`, s:locationInDefn(modDefn, td.pos));
            }
            else if defn is s:TypeDefn {
                return check resolveTypeDefn(mod, defn, depth);
            }
            else if defn is s:ConstDefn {
                var [t, _] = check resolveConstDefn(mod, defn);
                return t;
            }
            return err:semantic(`reference to non-type ${td.typeName} in type-descriptor`, s:locationInDefn(modDefn, td.pos));
        }
        else {
            ExportedDefn? defn = (check lookupPrefix(mod, modDefn, prefix)).defns[td.typeName];
            if defn is t:SemType {
                return defn;
            }
            else if defn is s:ResolvedConst {
                return defn[0];
            }
            else {
                string qName = prefix + ":" + td.typeName;
                err:Location loc =  s:locationInDefn(modDefn, td.pos);
                if defn == () {
                    return err:semantic(`no public definition of ${qName}`, loc=loc);
                }
                else {
                    return err:semantic(`reference to a function ${qName} where a type is required`, loc=loc);
                }
            }
        }
    }
    if !mod.allowAllTypes {
        return err:unimplemented("unimplemented type descriptor", s:locationInDefn(modDefn, td.startPos));
    }
    if td is s:FunctionTypeDesc {
        t:FunctionDefinition? defn = td.defn;
        if defn == () {
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
        else if value is decimal {
            return t:decimalConst(value);
        }
        else {
            return t:floatConst(value);
        }
    }
    if td is s:ErrorTypeDesc {
        return t:errorDetail(check resolveTypeDesc(mod, modDefn, depth, td.detail));
    }
    if td is s:UnaryTypeDesc {
        t:SemType ty = check resolveTypeDesc(mod, modDefn, depth, td.td);
        return t:complement(ty);
    }
    panic error("unimplemented type-descriptor");
}

function resolveMemberTypeDesc(ModuleSymbols mod, s:ModuleLevelDefn modDefn, int depth, s:TypeDesc td) returns t:SemType|ResolveTypeError {
    t:SemType ty = check resolveTypeDesc(mod, modDefn, depth, td);
    if !mod.allowAllTypes && !isSubsetUnionType(ty) {
        return err:unimplemented("type not implemented as member type", s:locationInDefn(modDefn, td.startPos));
    }
    return ty;
}

function resolveBuiltinTypeDesc(s:SubsetBuiltinTypeDesc td) returns t:UniformTypeBitSet {
    match td.builtinTypeName {
        "any" => { return t:ANY; }
        "boolean" => { return t:BOOLEAN; }
        "int" => { return t:INT; }
        "float" => { return t:FLOAT; }
        "string" => { return t:STRING; }
        "error" => { return t:ERROR; }
    }
    panic err:impossible("unreachable in resolveInlineBuiltinTypeDesc");
}