import wso2/nballerina.comm.err;
import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types.sexpr as ts;

type BaseBddTopSexpr "list"|"mapping"|"function";
type BddTopSexpr BaseBddTopSexpr|"table";
const REC_ATOM = true;
const TYPE_ATOM = false;
type AtomId readonly & [BaseBddTopSexpr, REC_ATOM|TYPE_ATOM, int];
type Memo record {|
    readonly AtomId id;
    string name;
|};
type MemoTable table<Memo> key (id);

type SerializationContext record {|
    Context tc;
    AtomTableSexpr atomSexprs;
    MemoTable memos = table[];
|};

// Converts a SemType to it's s-expression representation.
// atomSexprs is a atom name to s-expression representation map,
// used for both lookup and to accumulate atoms encountered along the way.
public function toSexpr(Context tc, SemType ty, AtomTableSexpr atomSexprs) returns ts:Type {
    SerializationContext sc = { tc, atomSexprs };
    return sexprFormSemTypeInternal(sc, ty);
}

ts:Type[] basicTypes = [ts:NIL_SEXPR, "boolean", "int", "float", "decimal", "string", "error", "typedesc", "handle",
                        "function", "future", "stream", "list" , "mapping", "table", "xml", "object", "cell"];
final int negateHeuristic = basicTypes.length() - 4; // 4 is arbitrary


function sexprFormSemTypeInternal(SerializationContext sc, SemType ty) returns ts:Type {
    if ty == NEVER {
        return "never";
    }
    SplitSemType { all, some } = split(ty);
    if all == VAL {
        return ["|", "any", "error"];
    }
    ts:Type[] disj = [];
    if all == ANY {
        disj.push("any");
    }
    else {
        int bits = all;
        int popCount = 0;
        foreach var basicType in basicTypes {
            if (bits & 1) == 1 {
                disj.push(basicType);
                popCount += 1;
            }
            bits = bits >> 1;
        }
        if popCount > negateHeuristic {
            return ["!", sexprFormSemTypeInternal(sc, complement(ty))];
        }
    }
    foreach var [code, subtype] in some {
        match code {
            BT_BOOLEAN => {
                disj.push((<BooleanSubtype>booleanSubtype(subtype)).value);
            }
            BT_INT => {
                disj.push(...intSubtypeToSexpr(<IntSubtype>intSubtype(subtype)));
            }
            BT_FLOAT => {
                disj.push(...floatSubtypeToSexpr(<FloatSubtype>floatSubtype(subtype)));
            }
            BT_DECIMAL => {
                disj.push(...decimalSubtypeToSexpr(<DecimalSubtype>decimalSubtype(subtype)));
            }
            BT_STRING => {
                disj.push(...stringSubtypeToSexpr(<StringSubtype>stringSubtype(subtype)));
            }
            BT_ERROR => {
                disj.push(["error", joinTypeSexpr("|", bddToSexprAccum(sc, errorSubtype(subtype), "mapping"))]);
            }
            BT_FUNCTION => {
                disj.push(...bddToSexprAccum(sc, functionSubtype(subtype), "function"));
            }
            BT_XML => {
                disj.push(xmlSubtypeToSexpr(<XmlSubtype>xmlSubtype(subtype)));
            }
            BT_LIST => {
                disj.push(...bddToSexprAccum(sc, listSubtype(subtype), "list"));
            }
            BT_MAPPING => {
                disj.push(...bddToSexprAccum(sc, mappingSubtype(subtype), "mapping"));
            }
            BT_TABLE => {
                disj.push(...bddToSexprAccum(sc, tableSubtype(subtype), "table"));
            }
            _ => {
                panic error("unimplemented subtype code: " + code.toString() + " with data: " + subtype.toString());
            }
        }
    }
    return joinTypeSexpr("|", disj);
}

function intSubtypeToSexpr(IntSubtype ranges) returns ts:Type[] {
    ts:Type[] result = [];
    foreach var range in ranges {
        if range.min + 1 == range.max {
            result.push(range.min, range.max);
        }
        else if range.min == range.max {
            result.push(range.min);
        }
        else {
            result.push(["int-range", range.min, range.max]);
        }
    }
    return result;
}

function floatSubtypeToSexpr(FloatSubtype floatTy) returns ts:Type[] {
    if floatTy.allowed {
        return floatsToSexpr(floatTy.values);
    }
    else {
        return [["&", "float", ["!", ...floatsToSexpr(floatTy.values)]]];
    }
}

function floatsToSexpr(float[] floats) returns ts:Type[] {
    return from var f in floats select ["float", { s: f.toString() }];
}

function decimalSubtypeToSexpr(DecimalSubtype decimalTy) returns ts:Type[] {
    if decimalTy.allowed {
        return decimalsToSexpr(decimalTy.values);
    }
    else {
        return [["&", "decimal", ["!", ...decimalsToSexpr(decimalTy.values)]]];
    }
}

function decimalsToSexpr(decimal[] decimals) returns ts:Type[] {
    return from var f in decimals select ["decimal", { s: f.toString() }];
}

function stringSubtypeToSexpr(StringSubtype strTy) returns ts:Type[] {
    var { char, nonChar} = strTy;
    match [char.allowed, nonChar.allowed] {
        [true, true] => {
            return [...stringsToSexpr(char.values), ...stringsToSexpr(nonChar.values)];
        }
        [true, false] => {
            return [...stringsToSexpr(char.values), ["&", "string", ["!", "char", ...stringsToSexpr(nonChar.values)]]];
        }
        [false, true] => {
            boolean allChars = char.values.length() == 0;
            return [allChars ? "char" : ["&", "char", ["!", ...stringsToSexpr(char.values)]], ...stringsToSexpr(nonChar.values)];
        }
        [false, false] => {
            return [["&", "string", ["!", ...stringsToSexpr(char.values), ...stringsToSexpr(nonChar.values)]]];
        }
    }
    panic err:impossible();
}

function stringsToSexpr(string[] strings) returns sexpr:String[] {
    return from string s in strings select { s };
}

function xmlSubtypeToSexpr(XmlSubtype xmlTy) returns ts:Type {
    var [sequence, extraAll] = xmlSequenceToSexpr(xmlTy.sequence);
    int posPrimitiveFlag = xmlTy.primitives & ~extraAll;
    int negPrimitiveFlag = ~xmlTy.primitives & extraAll;
    ts:Type pos = joinTypeSexpr("|", [...sequence, ...xmlPrimitivesToSexpr(posPrimitiveFlag)]);
    if negPrimitiveFlag != 0 {
        ts:Not negPrimitives = ["!", ...xmlPrimitivesToSexpr(negPrimitiveFlag)];
        return ["&", pos, negPrimitives];
    }
    else {
        return pos;
    }
}

// returns [sexpr, extraXmlPrimitives] such that, sequence = sexpr - extraXmlPrimitives
function xmlSequenceToSexpr(Bdd sequence) returns [ts:Type[], int] {
    if sequence is boolean {
        return sequence ? [["xml"], XML_PRIMITIVE_ALL_MASK] : [[], 0];
    }
    ts:Type[] disj = [];
    int extra = 0;
    BddPath[] paths = [];
    bddPaths(sequence, paths, {});
    foreach var { pos, neg } in paths {
        boolean onlyNeg = true;
        int? extraInPath = ();
        ts:Type[] conj = [];
        foreach var p in pos {
            conj.push(["xml", "*", ...sexprNamesFromXmlPrimitives(<int>p)]);
            int extraInPos = <int>p | XML_PRIMITIVE_NEVER;
            extraInPath = extraInPath == () ? extraInPos : extraInPath & extraInPos;
            onlyNeg = false;
        }
        foreach var n in neg {
            conj.push(["!", ["xml", "*", ...sexprNamesFromXmlPrimitives(<int>n)]]);
            int extraInNeg = ~<int>n  & (XML_PRIMITIVE_ALL_MASK & ~XML_PRIMITIVE_NEVER);
            extraInPath = extraInPath == () ? extraInNeg : extraInPath & extraInNeg;
        }
        extra = extra | extraInPath ?: 0;
        ts:Type conjTy = joinTypeSexpr("&", conj);
        disj.push(onlyNeg ? ["&", "xml", conjTy] : conjTy);
    }
    return [disj, extra];
}

function xmlPrimitivesToSexpr(int flag) returns ts:Type[] {
    ts:Type[] xmlPrimitives = [];
    if (flag & XML_PRIMITIVE_NEVER) == XML_PRIMITIVE_NEVER {
        xmlPrimitives.push(["xml", 0]);
    }
    int nonNeverPrimitives = flag & ~XML_PRIMITIVE_NEVER;
    if (nonNeverPrimitives) != 0 {
        xmlPrimitives.push(["xml", 1, ...sexprNamesFromXmlPrimitives(nonNeverPrimitives)]);
    }
    return xmlPrimitives;
}

function sexprNamesFromXmlPrimitives(int flags) returns ts:XmlBuiltinSubtypeNames[] {
    int rwAndRo = ((flags & 0xe0) >> 3) & flags;
    int mask = (rwAndRo << 3) | rwAndRo;
    int f = (rwAndRo << 6) | flags & ~mask;
    ts:XmlBuiltinSubtypeNames[] names = ["text", "element_ro", "pi_ro", "comment_ro", "element_rw", "pi_rw", "comment_rw", "element", "pi", "comment"];
    ts:XmlBuiltinSubtypeNames[] result = [];
    foreach int i in 0..<names.length() {
        f >>= 1;
        if (f & 1) == 1 {
            result.push(names[i]);
        }
    }
    return result;
}

// Convert bdd to sexpr while accumulating encountered atoms into sc.atomSexprs
function bddToSexprAccum(SerializationContext sc, Bdd bdd, BddTopSexpr top) returns ts:Type[] {
    BddPath[] paths = [];
    bddPaths(bdd, paths, {});
    ts:Type[] disj = [];
    foreach var path in paths {
        ts:Type[] conj = [];
        boolean onlyNeg = true;
        foreach var p in path.pos {
            conj.push(atomToSexprAccum(sc, p, top));
            onlyNeg = false;
        }
        foreach var n in path.neg {
            conj.push(<ts:Not>["!", atomToSexprAccum(sc, n, top)]);
        }
        ts:Type conjTy = joinTypeSexpr("&", conj);
        disj.push(onlyNeg ? ["&", top, conjTy] : conjTy);
    }
    return disj;
}

function atomToSexprAccum(SerializationContext sc, Atom atom, BddTopSexpr top) returns ts:Table|ts:TableSubtype|ts:AtomRef {
    if top == "table" {
        ListAtomicType lat = sc.tc.listAtomType(atom);
        Bdd rest = mappingSubtype(cellInner(lat.rest));
        if rest == true {
            return "table";
        }
        return ["table", joinTypeSexpr("|", bddToSexprAccum(sc, rest, "mapping"))];
    }
    AtomId id = (atom is RecAtom) ? [top, REC_ATOM, atom] : [top, TYPE_ATOM, atom.index];
    var { memos, atomSexprs } = sc;
    Memo? existing = memos[id];
    if existing != () {
        return existing.name;
    }
    string name = id[0][0].toUpperAscii() + (id[1] ? "R" : "T") + "."  + id[2].toString();
    Memo memo = { id, name };
    memos.add(memo);
    ts:Atom sexpr;
    if top == "mapping" {
        sexpr = fromMappingAtom(sc, atom);
    }
    else if top == "list" {
        sexpr = fromListAtom(sc, atom);
    }
    else { // top == "function"
        sexpr = fromFuncAtom(sc, atom);
    }
    atomSexprs[name] = sexpr;
    return name;
}

function fromFuncAtom(SerializationContext sc, Atom atom) returns ts:Atom {
    Context tc = sc.tc;
    var [args, ret] = tc.functionAtomType(atom);
    var argsLat = <ListAtomicType>listAtomicType(tc, args);
    ts:Type[] members = from var member in argsLat.members.initial select sexprFormSemTypeInternal(sc, cellInner(member));
    int compressedCount = argsLat.members.fixedLength - argsLat.members.initial.length();
    if compressedCount > 0 {
        ts:Type repeatedMember = members[members.length() - 1];
        foreach int i in 0 ..< compressedCount {
            members.push(repeatedMember);
        }
    }
    return ["function", members, sexprFormSemTypeInternal(sc, ret)];
}

function fromListAtom(SerializationContext sc, Atom atom) returns ts:Atom {
    ListAtomicType lat = sc.tc.listAtomType(atom);
    ts:Type[] members = from var member in lat.members.initial select sexprFormSemTypeInternal(sc, cellInner(member));
    SemType restSemType = cellInner(lat.rest);
    ts:Type? rest = restSemType != NEVER ? sexprFormSemTypeInternal(sc, restSemType) : ();
    boolean? compressed = lat.members.fixedLength == 0 ? () : lat.members.initial.length() != lat.members.fixedLength;
    match [compressed, rest] {
        [(), ()] => {
            return ["list", []];
        }
        [(), var r] => {
            return <ts:Array>["array", <ts:Type>r];
        }
        [true, ()] => {
            if members.length() == 1 {
                return <ts:ArrayFixedSize>["array", members[0], lat.members.fixedLength];
            }
            else {
                return ["min-length-list", members, lat.members.fixedLength];
            }
        }
        [true, var r] => {
            return ["min-length-list", members, lat.members.fixedLength, <ts:Type>r];
        }
        [false, ()] => {
            return <ts:NonRepeatingTuple>["list", members];
        }
        [false, var r] => {
            return ["list", members, <ts:Type>r];
        }
    }
    panic err:impossible();
}

function fromMappingAtom(SerializationContext sc, Atom atom) returns ts:Atom {
    MappingAtomicType mat = sc.tc.mappingAtomType(atom);
    ts:Field[] fields = [];
    foreach int i in 0 ..< mat.types.length() {
        fields.push([{ s: mat.names[i] }, sexprFormSemTypeInternal(sc, cellInner(mat.types[i]))]);
    }
    SemType restSemType = cellInnerVal(mat.rest);
    if restSemType != NEVER {
        ts:Type rest = sexprFormSemTypeInternal(sc, restSemType);
        if fields.length() == 0 {
            return ["map", rest];
        }
        else {
            return ["mapping", fields, rest];
        }
    }
    else {
        return ["mapping", fields];
    }
}

// types.length() > 0
function joinTypeSexpr("&"|"|" op, ts:Type[] types) returns ts:Type {
    if types.length() == 1 {
        return types[0];
    }
    else {
        return op == "|" ?  [op, ...types] : [op, ...types]; // JBUG: remove ternary
    }
}
