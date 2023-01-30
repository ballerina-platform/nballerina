import wso2/nballerina.comm.err;
import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types.sexpr as ts;

// Name (ts:AtomRef) to s-expression representation map
public type AtomTableSexpr map<ts:Atom>;

// Name (ts:AtomRef) to SemType map
public type AtomTable map<SemType>;

type SexprTypeParseContext record{|
    Env env;
    AtomTable atoms;
|};

type SexprAtomParseContext record{|
    *SexprTypeParseContext;
    AtomTableSexpr atomSexprs = {};
    map<Definition> started = {};
|};

type SexprParseContext SexprAtomParseContext|SexprTypeParseContext;

// Remove and parse each type sexpr in `atomSexprs`.
public function atomTableFromSexpr(Env env, AtomTableSexpr atomSexprs) returns AtomTable {
    AtomTable atoms = {};
    SexprAtomParseContext pc = { env, atoms, atomSexprs };
    foreach var [name, atom] in atomSexprs.entries() {
        if atoms.hasKey(name) {
            continue;
        }
        atoms[name] = fromAtomSexpr(pc, name, atom);
    }
    return atoms;
}

// Create a SemType from it's s-expression representation. Expects atomTable mapping from names to
// their SemTypes table for atom reference lookup.
public function fromSexpr(Env env, AtomTable atoms, ts:Type tySexpr) returns SemType {
    SexprTypeParseContext pc = { env, atoms };
    return fromSexprInternal(pc , tySexpr);
}

final AtomTable namedTypes = {
    "never"   : NEVER,
    "nil"     : NIL,
    "boolean" : BOOLEAN,
    "int"     : INT,
    "float"   : FLOAT,
    "decimal" : DECIMAL,
    "string"  : STRING,
    "list"    : LIST,
    "mapping" : MAPPING,
    "table"   : TABLE,
    "xml"     : XML,
    "error"   : ERROR,
    "function": FUNCTION,
    "typedesc": TYPEDESC,
    "handle"  : HANDLE,
    "object"  : OBJECT,
    "stream"  : STREAM,
    "future"  : FUTURE,

    "any"     : ANY,
    "readonly": VAL_READONLY,

    "char"    : STRING_CHAR,
    "byte"    : BYTE
};

// If non-builtin identifier (ie: ts:AtomRef) return it else nil.
public function atomRefSexpr(ts:Type tySexpr) returns string? {
    if tySexpr is string && namedTypes[tySexpr] == () {
        return tySexpr;
    }
    return ();
}

final map<SemType> & readonly xmlBuiltinSubtypeSexprSemType = {
    "element": XML_ELEMENT,
    "comment": XML_COMMENT,
    "text"   : XML_TEXT,
    "pi"     : XML_PI
};

function fromSexprInternal(SexprParseContext pc, ts:Type tySexpr) returns SemType {
    if tySexpr is string {
        SemType? ty = namedTypes[tySexpr];
        if ty != () {
            return ty;
        }
        SemType? existingAtomTy = pc.atoms[tySexpr]; // tySexpr is AtomRef
        if existingAtomTy != () {
            return existingAtomTy;
        }
        if pc is SexprAtomParseContext {
            Definition? defn = pc.started[tySexpr];
            if defn != () {
                return defn.getSemType(pc.env);
            }
            SemType newAtomTy = fromAtomSexpr(pc, tySexpr, pc.atomSexprs.get(tySexpr));
            pc.atoms[tySexpr] = newAtomTy;
            return newAtomTy;
        }
        panic error("Atom not available in the table: " + tySexpr);
    }
    if tySexpr is int {
        return intRange(tySexpr, tySexpr);
    }
    if tySexpr is boolean {
        return booleanConst(tySexpr);
    }
    if tySexpr is sexpr:String {
        return stringConst(tySexpr.s);
    }
    match <sexpr:Data[]>tySexpr { // JBUG: cast
        [] => {
            return NIL;
        }
        ["int-range", var min, var max] => {
            return intRange(<int>min, <int>max);
        }
        ["float", var { s }] => {
            return floatConst(checkpanic float:fromString(s));
        }
        ["decimal", var { s }] => {
            return decimalConst(checkpanic decimal:fromString(s));
        }
        ["|", ...var types] => {
            SemType result = NEVER;
            foreach var ty in  types {
                result = union(result, fromSexprInternal(pc, <ts:Type>ty));
            }
            return result;
        }
        ["&", ...var types] => {
            SemType result = VAL;
            foreach var ty in  types {
                result = intersect(result, fromSexprInternal(pc, <ts:Type>ty));
            }
            return result;
        }
        ["!", ...var types] => {
            SemType result = NEVER;
            foreach var ty in  types {
                result = union(result, fromSexprInternal(pc, <ts:Type>ty));
            }
            return complement(result);
        }
        ["xml", 0] => {
            return xmlSequence(NEVER);
        }
        ["xml", 1, ...var subTys] => {
            SemType result = NEVER;
            foreach var ty in  subTys {
                result = union(result, xmlBuiltinSubtypeSexprSemType.get(<ts:XmlBuiltinSubtypeNames>ty));
            }
            return result;
        }
        ["xml", "*", ...var subTys] => {
            SemType result = NEVER;
            foreach var ty in  subTys {
                result = union(result, xmlBuiltinSubtypeSexprSemType.get(<ts:XmlBuiltinSubtypeNames>ty));
            }
            return xmlSequence(result);
        }
        ["error", var ty] => {
            return errorDetail(fromSexprInternal(pc, <ts:Type>ty));
        }
        ["table", var ty] => {
            return tableContaining(pc.env, fromSexprInternal(pc, <ts:Type>ty));
        }
        _ => {
            panic err:impossible("unsupported sexpr SemType:" + tySexpr.toString());
        }
    }
}

// Parse and return atom, add other encountered atoms during to pc.atoms
function fromAtomSexpr(SexprAtomParseContext pc, string name, ts:Atom atomSexpr) returns SemType {
    match atomSexpr {
        ["list", var members] => {
            return fromListSexpr(pc, name, <ts:Type[]>members);
        }
        ["list", var members, var rest] => {
            return fromListSexpr(pc, name, <ts:Type[]>members, restSexpr = <ts:Type>rest);
        }
        ["min-length-list", var members, var membersCount] => {
            return fromListSexpr(pc, name, <ts:Type[]>members, <int>membersCount);
        }
        ["min-length-list", var members, var membersCount, var rest] => {
            return fromListSexpr(pc, name, <ts:Type[]>members, <int>membersCount, <ts:Type>rest);
        }
        ["array", var member] => {
            return fromListSexpr(pc, name, restSexpr = <ts:Type>member);
        }
        ["array", var member, var len] => {
            return fromListSexpr(pc, name, fixedLength = <int>len, initialSexpr = [<ts:Type>member]);
        }
        ["map", var rest] => {
            return fromMappingSexpr(pc, name, restSexpr = <ts:Type>rest);
        }
        ["mapping", var fieldsSexpr] => {
            return fromMappingSexpr(pc, name, <ts:Field[]>fieldsSexpr);
        }
        ["mapping", var fieldsSexpr, var rest] => {
            return fromMappingSexpr(pc, name, <ts:Field[]>fieldsSexpr, rest);
        }
        ["function", var args, var ret] => {
            FunctionDefinition d = new(pc.env);
            pc.started[name] = d;
            ListDefinition listDef = new;
            SemType[] initial = from var member in <ts:Type[]>args select fromSexprInternal(pc, member);
            SemType argsTuple = defineListTypeWrapped(listDef, pc.env, initial, initial.length(), mut = CELL_MUT_NONE);
            return d.define(pc.env, argsTuple, fromSexprInternal(pc, <ts:Type>ret));
        }
        // Only to be used from *.typetest files
        ["cell", var ty, "none"] => {
            return cellContaining(pc.env, fromSexprInternal(pc, <ts:Type>ty), CELL_MUT_NONE);
        }
        ["cell", var ty, "limited"] => {
            return cellContaining(pc.env, fromSexprInternal(pc, <ts:Type>ty), CELL_MUT_LIMITED);
        }
        ["cell", var ty, "unlimited"] => {
            return cellContaining(pc.env, fromSexprInternal(pc, <ts:Type>ty), CELL_MUT_UNLIMITED);
        }
        _ => {
            panic err:impossible("impossible sexpr atom:" + atomSexpr.toString());
        }
    }
}

function fromListSexpr(SexprAtomParseContext pc, string name, ts:Type[] initialSexpr = [], int fixedLength = initialSexpr.length(), ts:Type restSexpr = "never") returns SemType {
    ListDefinition d = new;
    pc.started[name] = d;
    SemType[] initial = from var member in initialSexpr select fromSexprInternal(pc, member);
    SemType rest = fromSexprInternal(pc, restSexpr);
    return defineListTypeWrapped(d, pc.env, initial, fixedLength, rest);
}

function fromMappingSexpr(SexprAtomParseContext pc, string name, ts:Field[] fieldsSexpr = [], ts:Type restSexpr = "never") returns SemType {
    MappingDefinition d = new;
    pc.started[name] = d;
    Field[] fields = from var [fieldName, fieldTy] in fieldsSexpr select [fieldName.s, fromSexprInternal(pc, fieldTy)];
    return defineMappingTypeWrapped(d, pc.env, fields, fromSexprInternal(pc, restSexpr));
}
