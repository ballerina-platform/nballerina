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
    if isSubsetUnionType(ty) {
        return ty;
    }
    t:UniformTypeBitSet? memberTy = t:simpleArrayMemberType(mod.tc, ty, strict=true);
    if memberTy != () && isSubsetUnionType(memberTy) {
        return ty;
    }
    t:MappingAtomicType? mat = t:mappingAtomicTypeRw(mod.tc, ty, strict=true);
    if mat != () {
        if mat.names.length() == 0 && isSubsetUnionType(mat.rest) {
            return ty;
        }
        if mat.rest === t:NEVER {
            boolean membersOk = true;
            foreach var t in mat.types {
                if !isSubsetUnionType(t) {
                    membersOk = false;
                    break;
                }
            }
            if membersOk {
                return ty;
            }
        }
    }
    return err:unimplemented("unimplemented type descriptor", s:locationInDefn(defn), functionName=defn.name);
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
            "handle" => { return t:HANDLE; }
            "int" => { return t:INT; }
            "never" => { return t:NEVER; }
            "readonly" => { return t:READONLY; }
            "string" => { return t:STRING; }
            "typedesc" => { return t:TYPEDESC; }
            "xml" => { return t:XML; }
            "byte" => { return t:BYTE; }
            "json" => { return t:createJson(mod.tc.env); }
            "null" => { return t:NIL; }
        }
    }
    final t:Env env = mod.tc.env;
    // JBUG would like to use match patterns here. This cannot be done properly without fixing #33309
    if td is s:ListTypeDesc {
        t:ListDefinition? defn = td.defn;
        if defn == () {
            t:ListDefinition d = new;
            td.defn = d;
            t:SemType[] members = from var x in td.members select check resolveTypeDesc(mod, modDefn, depth + 1, x);
            t:SemType rest = check resolveTypeDesc(mod, modDefn, depth + 1, td.rest);
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
            t:Field[] fields = from var { name, typeDesc } in td.fields select [name, check resolveTypeDesc(mod, modDefn, depth + 1, typeDesc)];
            map<s:FieldDesc> fieldsByName = {};
            foreach var fd in td.fields {
                if fieldsByName[fd.name] != () {
                    return err:semantic(`duplicate field ${fd.name}`, err:location(modDefn.part.file));
                }
                fieldsByName[fd.name] = fd;
            }
            s:TypeDesc? restTd = td.rest;
            t:SemType rest;
            if restTd == () {
                rest = t:NEVER;
            }
            else {
                rest = check resolveTypeDesc(mod, modDefn, depth + 1, restTd);
            }
            return d.define(env, fields, rest);
        }
        else {
            return defn.getSemType(env);
        }
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
    if td is s:TypeDescRef {
        string? prefix = td.prefix;
        if prefix == () {
            s:ModuleLevelDefn? defn = mod.defns[td.typeName];
            if defn == () {
                return err:semantic(`reference to undefined type ${td.typeName}`, err:location(modDefn.part.file, td.pos));
            }
            else if defn is s:TypeDefn {
                return check resolveTypeDefn(mod, defn, depth);
            }
            else if defn is s:ConstDefn {
                var [t, _] = check resolveConstDefn(mod, defn);
                return t;
            }
            return err:semantic(`reference to non-type ${td.typeName} in type-descriptor`, err:location(modDefn.part.file, td.pos));
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
                err:Location loc =  err:location(modDefn.part.file, td.pos);
                if defn == () {
                    return err:semantic(`no public definition of ${qName}`, loc=loc);
                }
                else {
                    return err:semantic(`reference to a function ${qName} where a type is required`, loc=loc);
                }
            }
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
    if td is s:XmlSequenceTypeDesc {
        t:SemType t = check resolveTypeDesc(mod, modDefn, depth, td.constituent);
        err:Location loc =  err:location(modDefn.part.file, td.pos);
        
        if !t:isSubtypeSimple(t, t:NEVER) && !t:isSubtypeSimple(t, t:XML) {
            return err:semantic("non xml type as xml constituent type", loc=loc);
        }
        return t:xmlSequence(t);
    }
    panic error("unimplemented type-descriptor");
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