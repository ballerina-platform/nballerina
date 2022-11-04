import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.diagnostic as d;

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
        check resolveDefn(mod, defn);
    }
    check finishDeferredEmptinessChecks(mod);
}

function finishDeferredEmptinessChecks(ModuleSymbols mod) returns ResolveTypeError? {
    if !mod.tc.env.isReady() {
        panic err:impossible("type environment is not ready");
    }
    foreach var { semType, modDefn, td } in mod.deferredEmptinessChecks {
        // XXX When we can give multiple errors we should check all the deferred emptiness checks
        check nonEmptyTypeNoDefer(mod, semType, modDefn, td);
    }
    d:Location? emptyLoc = mod.emptyNonRecursiveTypeLocation;
    if emptyLoc !is () {
        return err:semantic("intersection must not be empty", emptyLoc);
    }
}

function nonEmptyTypeNoDefer(ModuleSymbols mod, t:SemType semType, s:ModuleLevelDefn modDefn, s:TypeDesc td) returns ResolveTypeError? {
    if !t:isEmpty(mod.tc, semType) {
        return;
    }
    d:Position startPos = td.startPos;
    d:Position endPos = td.endPos;
    d:Location loc = s:locationInDefn(modDefn, { startPos, endPos });
    if td is s:BinaryTypeDesc && td.op is "&" {
        return err:semantic("intersection must not be empty", loc);
    }
    if t:isSemTypeRecursive(semType) {
        return err:semantic("invalid recursive type (contains no finite shapes)", loc);
    }
    mod.emptyNonRecursiveTypeLocation = loc;
}

function resolveDefn(ModuleSymbols mod, s:ModuleLevelDefn defn) returns ResolveTypeError? {
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

function resolveFunctionSignature(ModuleSymbols mod, s:FunctionDefn defn) returns bir:FunctionSignature|ResolveTypeError {
    // JBUG doing this as a from/select panics if resolveSubsetTypeDesc returns an error
    // e.g.10-intersect/never2-e.bal
    t:SemType[] paramTypes = [];
    t:SemType? restParamType = ();
    foreach var x in defn.params {
        if x.isRest {
            restParamType = check resolveSubsetTypeDesc(mod, defn, x.td);
            t:ListDefinition d = new;
            t:SemType arrTy = t:defineListTypeWrapped(d, mod.tc.env, rest = <t:SemType>restParamType, mut = t:CELL_MUT_NONE);
            paramTypes.push(arrTy);
        }
        else {
            paramTypes.push(check resolveSubsetTypeDesc(mod, defn, x.td));
        }
    }
    s:TypeDesc? retTy = defn.typeDesc.ret;
    t:SemType ret = retTy != () ? check resolveSubsetTypeDesc(mod, defn, retTy) : t:NIL;
    return { paramTypes: paramTypes.cloneReadOnly(), returnType: ret, restParamType };
}

function resolveSubsetTypeDesc(ModuleSymbols mod, s:ModuleLevelDefn defn, s:TypeDesc td) returns t:SemType|ResolveTypeError {
    t:SemType ty = check resolveTypeDesc(mod, defn, 0, td);
    if t:isEmpty(mod.tc, ty) {
        // SUBSET never disallowed
        return err:semantic("intersection must not be empty", s:locationInDefn(defn, td.startPos));
    }
    return ty;
}

function isSubsetUnionType(t:SemType ty) returns boolean {
    return (ty is t:BasicTypeBitSet
            && ((t:isSubtypeSimple(ty, <t:BasicTypeBitSet>(t:ERROR|t:FLOAT|t:STRING|t:INT|t:BOOLEAN|t:NIL)) && ty != t:NEVER)
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
            "anydata" => { return t:createAnydata(mod.tc); }
            "boolean" => { return t:BOOLEAN; }
            "byte" => { return t:BYTE; }
            "error" => { return t:ERROR; }
            "float" => { return t:FLOAT; }
            "decimal" => { return t:DECIMAL; }
            "int" => { return t:INT; }
            "null" => { return t:NIL; }
            "string" => { return t:STRING; }
        }
        if !mod.allowAllTypes {
            return err:unimplemented(`type ${td.builtinTypeName} is not implemented`, s:locationInDefn(modDefn, td.startPos));
        }
        match td.builtinTypeName {
            "handle" => { return t:HANDLE; }
            "json" => { return t:createJson(mod.tc); }
            "never" => { return t:NEVER; }
            "readonly" => { return t:READONLY; }
            "typedesc" => { return t:TYPEDESC; }
            "xml" => { return t:XML; }
        }
    }
    final t:Env env = mod.tc.env;
    if td is s:BinaryTypeDesc {
        // NB depth does not increase here
        t:SemType accumType = check resolveTypeDesc(mod, modDefn, depth, td.tds[0]);
        foreach int i in 1 ..< td.tds.length() {
            t:SemType next = check resolveTypeDesc(mod, modDefn, depth, td.tds[i]);
            if td.op == "|" {
                accumType = t:union(accumType, next);
            }
            else {
                accumType = t:intersect(accumType, next);
                // This can fail to detect that the intersection is empty when the env is not ready
                // (i.e. there's a recursive type still under construction).
                // To solve this, we would need to build a list of intersections to be checked later.
                // But this is very unlikely to be a problem in practice.
                if t:isNever(accumType)
                   || (accumType !is t:BasicTypeBitSet && env.isReady() && t:isEmpty(mod.tc, accumType)) {
                    return err:semantic("intersection must not be empty", s:locationInDefn(modDefn, td.opPos[i - 1]));
                }
            }
        }
        return check nonEmptyType(mod, modDefn, td, accumType);
    }
    // JBUG would like to use match patterns here. This cannot be done properly without fixing #33309
    if td is s:TupleTypeDesc {
        t:ListDefinition? defn = td.defn;
        if defn == () {
            t:ListDefinition d = new;
            td.defn = d;
            t:SemType[] members = from var x in td.members select check resolveTypeDesc(mod, modDefn, depth + 1, x);
            t:SemType rest = t:NEVER;
            s:TypeDesc? restTd = td.rest;
            if restTd != () {
                rest = check resolveTypeDesc(mod, modDefn, depth + 1, restTd);
            }
            return check nonEmptyType(mod, modDefn, td, t:defineListTypeWrapped(d, env, initial = members, rest = rest));
        }
        else {
            return check nonEmptyType(mod, modDefn, td, defn.getSemType(env));
        }
    } 
    if td is s:ArrayTypeDesc {
        t:ListDefinition? defn = td.defn;
        if defn == () {
            t:ListDefinition d = new;
            td.defn = d;
            t:SemType t = check resolveTypeDesc(mod, modDefn, depth + 1, td.member);
            foreach s:SimpleConstExpr? len in td.dimensions.reverse() {
                if len == () {
                    t = t:defineListTypeWrapped(d, env, rest = t);
                }
                else {
                    int length = check resolveConstExprForInt(mod, modDefn, len, "array length should be a non-negative integer constant");
                    t = t:defineListTypeWrapped(d, env, [t], length);
                }
            }
            return check nonEmptyType(mod, modDefn, td, t);
        }
        else {
            return check nonEmptyType(mod, modDefn, td, defn.getSemType(env));
        }
    }
    if td is s:MappingTypeDesc {
        t:MappingDefinition? defn = td.defn;
        if defn == () {
            t:MappingDefinition d = new;
            td.defn = d;
            // JBUG this panics if done with `from` and there's an error is resolveTypeDesc
            t:Field[] fields = [];
            foreach var { name, typeDesc } in td.fields {
                t:SemType fieldTy = check resolveTypeDesc(mod, modDefn, depth + 1, typeDesc);
                if t:isNever(fieldTy) {
                    return err:semantic("record field can't be never", s:locationInDefn(modDefn, { startPos: typeDesc.startPos, endPos: typeDesc.endPos }));
                }
                fields.push([name, fieldTy]);
            }
            map<s:FieldDesc> fieldsByName = {};
            foreach var fd in td.fields {
                if fieldsByName[fd.name] != () {
                    return err:semantic(`duplicate field ${fd.name}`, s:locationInDefn(modDefn, fd.startPos));
                }
                fieldsByName[fd.name] = fd;
            }
            s:TypeDesc|s:INCLUSIVE_RECORD_TYPE_DESC? restTd = td.rest;
            t:SemType rest;
            if restTd is s:TypeDesc {
                rest = check resolveTypeDesc(mod, modDefn, depth + 1, restTd);
            }
            else if restTd == s:INCLUSIVE_RECORD_TYPE_DESC {
                rest = t:createAnydata(mod.tc);
            }
            else {
                rest = t:NEVER;
            }
            return check nonEmptyType(mod, modDefn, td, t:defineMappingTypeWrapped(d, env, fields, rest));
        }
        else {
            return check nonEmptyType(mod, modDefn, td, defn.getSemType(env));
        }
    }
    if td is s:TypeDescRef {
        string? prefix = td.prefix;
        if prefix == () {
            s:ModuleLevelDefn? defn = mod.defns[td.typeName];
            if defn == () {
                return err:semantic(`reference to undefined type ${td.typeName}`, s:qNameLocationInDefn(modDefn, td.qNamePos));
            }
            else if defn is s:TypeDefn {
                return check resolveTypeDefn(mod, defn, depth);
            }
            else if defn is s:ConstDefn {
                var [t, _] = check resolveConstDefn(mod, defn);
                return t;
            }
            return err:semantic(`reference to non-type ${td.typeName} in type-descriptor`, s:qNameLocationInDefn(modDefn, td.qNamePos));
        }
        else {
            ExportedDefn? defn = (check lookupPrefix(mod, modDefn, prefix, td.startPos)).defns[td.typeName];
            if defn is t:SemType {
                if mod.allowAllTypes || !t:isSubtypeSimple(defn, t:XML) {
                    return defn;
                }
            }
            else if defn is s:ResolvedConst {
                return defn[0];
            }
            else {
                string qName = prefix + ":" + td.typeName;
                d:Location loc = s:qNameLocationInDefn(modDefn, td.qNamePos);
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
        var  [ty, _] =  check resolveConstExpr(mod, modDefn, td.valueExpr, ());
        return ty;
    }
    if td is s:UnaryTypeDesc && td.op != "!" {
        if td.op == "?" {
            t:SemType ty = check resolveTypeDesc(mod, modDefn, depth, td.td);
            return t:union(ty, t:NIL);
        }
        return resolveTypeDesc(mod, modDefn, depth + 1, td.td);
    }
    if !mod.allowAllTypes {
        return err:unimplemented("unimplemented type descriptor", s:locationInDefn(modDefn, s:range(td)));
    }
    if td is s:FunctionTypeDesc {
        t:FunctionDefinition? defn = td.defn;
        if defn == () {
            t:FunctionDefinition d = new(env);
            td.defn = d;
            s:TypeDesc[] a = [];
            foreach var arg in td.params {
                a.push(arg.td);
            }
            t:SemType[] args = from var x in a select check resolveTypeDesc(mod, modDefn, depth + 1, x);
            s:TypeDesc? retTy = td.ret;
            t:SemType ret = retTy != () ? check resolveTypeDesc(mod, modDefn, depth + 1, retTy) : t:NIL;
            return d.define(env, t:tupleTypeWrappedRo(env, ...args), ret);
        }
        else {
            return defn.getSemType(env);
        }
    }
    if td is s:ErrorTypeDesc {
        return t:errorDetail(mod.tc, check resolveTypeDesc(mod, modDefn, depth, td.detail));
    }
    // JBUG #33722 work around incorrect type narrowing
    s:TypeDesc td2 = td;
    if td2 is s:UnaryTypeDesc && td2.op == "!" {
        t:SemType ty = check resolveTypeDesc(mod, modDefn, depth, td2.td);
        return t:complement(ty);
    }
    if td is s:XmlSequenceTypeDesc {
        t:SemType t = check resolveTypeDesc(mod, modDefn, depth, td.constituent);
        
        if !t:isSubtypeSimple(t, t:XML) {
            d:Location loc =  d:location(modDefn.part.file, td.pos);
            return err:semantic("type parameter for xml is not a subtype of xml", loc=loc);
        }
        return t:xmlSequence(t);
    }
    if td is s:TableTypeDesc {
        t:SemType t = check resolveTypeDesc(mod, modDefn, depth, td.row);
        
        // Ensure the parameter type of table is a subtype of MAPPING
        if !t:isSubtypeSimple(t, t:MAPPING) {
            d:Location loc =  d:location(modDefn.part.file, { startPos: td.startPos, endPos: td.endPos });
            return err:semantic("type parameter for table is not a record", loc=loc);
        }
        return t:tableContaining(env, t);
    }
    panic error("unimplemented type-descriptor");
}

function nonEmptyType(ModuleSymbols mod, s:ModuleLevelDefn modDefn, s:TypeDesc td, t:SemType semType) returns t:SemType|ResolveTypeError {
    if !mod.tc.env.isReady() {
        mod.deferredEmptinessChecks.push({ semType, modDefn, td });
    }
    else {
        check nonEmptyTypeNoDefer(mod, semType, modDefn, td);
    }
    return semType;
}

function resolveBuiltinTypeDesc(t:Context tc, s:SubsetBuiltinTypeDesc td) returns t:SemType {
    match td.builtinTypeName {
        "any" => { return t:ANY; }
        "anydata" => { return t:createAnydata(tc); }
        "boolean" => { return t:BOOLEAN; }
        "byte" => { return t:BYTE; }
        "int" => { return t:INT; }
        "float" => { return t:FLOAT; }
        "decimal" => { return t:DECIMAL; }
        "string" => { return t:STRING; }
        "error" => { return t:ERROR; }
    }
    panic err:impossible("unreachable in resolveInlineBuiltinTypeDesc");
}
