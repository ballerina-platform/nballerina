// Implementation specific to basic type list.

public type InnerField record {
    string name;
    SemType ty;
};

public type Field record {|
    *InnerField;
    boolean ro = false;
    boolean opt = false;
|};

public type CellField record {|
    *InnerField;
    CellSemType ty;
|};

public type MappingAtomicType readonly & record {|
    // sorted
    string[] names;
    SemType[] types;
    SemType rest;
|};

public function mappingAtomicTypeMemberAtInnerVal(MappingAtomicType mat, string k) returns SemType {
    SemType memberType = mappingAtomicTypeMemberAt(mat, k);
    return memberType !is CellSemType ? memberType : cellInnerVal(memberType);
}

public function mappingAtomicTypeMemberAtInner(MappingAtomicType mat, string k) returns SemType {
    SemType memberType = mappingAtomicTypeMemberAt(mat, k);
    return memberType !is CellSemType ? memberType : cellInner(memberType);
}

function mappingAtomicTypeMemberAt(MappingAtomicType mat, string k) returns SemType {
    int? i = mat.names.indexOf(k, 0);
    return i is int ? mat.types[i] : mat.rest;
}

public function mappingAtomicTypeRest(MappingAtomicType mat) returns SemType {
    SemType rest = mat.rest;
    return rest !is CellSemType ? rest : cellInner(rest);
}

public function mappingAtomicTypeRestInnerVal(MappingAtomicType mat) returns SemType {
    SemType rest = mat.rest;
    return rest !is CellSemType ? rest : cellInnerVal(rest);
}

// This is mapping index 0 to be used by VAL_READONLY
final MappingAtomicType MAPPING_ATOMIC_RO = { names: [], types: [], rest: CELL_SEMTYPE_INNER_RO };

public class MappingDefinition {
    *Definition;
    private RecAtom? rec = ();
    private SemType? semType = ();

    public function getSemType(Env env) returns SemType {
        SemType? s = self.semType;
        if s == () {
            RecAtom rec = env.recMappingAtom();
            self.rec = rec;
            return self.createSemType(env, rec);
        }
        else {
            return s;
        }
    }

    public function define(Env env, InnerField[] fields, SemType rest) returns SemType {
        var [names, types] = splitFields(fields);
        MappingAtomicType atomicType = {
            names: names.cloneReadOnly(),
            types: types.cloneReadOnly(),
            rest
        };
        Atom atom;
        RecAtom? rec = self.rec;
        if rec != () {
            atom = rec;
            env.setRecMappingAtomType(rec, atomicType);
        }
        else if fields.length() == 0 && rest == CELL_SEMTYPE_INNER {
            self.semType = MAPPING;
            return MAPPING;
        }
        else {
            atom = env.mappingAtom(atomicType);
        }
        return self.createSemType(env, atom);
    }

    private function createSemType(Env env, Atom atom) returns SemType {
        BddNode bdd = bddAtom(atom);
        SemType s = basicSubtype(BT_MAPPING, bdd);
        self.semType = s; 
        return s;
    } 
}

public function defineMappingTypeWrapped(MappingDefinition md, Env env, Field[] fields, SemType rest, CellMutability mut = CELL_MUT_LIMITED) returns SemType {
    CellField[] cellFields = from var { name, ty, ro, opt } in fields
        select { name, ty: cellContaining(env, opt ? union(ty, UNDEF) : ty, ro ? CELL_MUT_NONE : mut) };
    CellSemType restCell = cellContaining(env, union(rest, UNDEF), rest == NEVER ? CELL_MUT_NONE : mut);
    return md.define(env, cellFields, restCell);
}

function splitFields(InnerField[] fields) returns [string[], SemType[]] {
    InnerField[] sortedFields = fields.sort("ascending", fieldName);
    string[] names = [];
    SemType[] types = [];
    foreach var { name, ty } in sortedFields {
        names.push(name);
        types.push(ty);
    }
    return [names, types];
}

isolated function fieldName(InnerField f) returns string {
    return f.name;
}

function mappingSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return memoSubtypeIsEmpty(cx, cx.mappingMemo, mappingBddIsEmpty, <Bdd>t);
}

function mappingBddIsCyclic(Context cx, Bdd b) returns boolean {
    return memoSubtypeIsCyclic(cx, cx.mappingMemo, mappingBddIsEmpty, b);
}

function mappingBddIsEmpty(Context cx, Bdd b) returns boolean {
    return bddEvery(cx, b, (), (), mappingFormulaIsEmpty);
}

// This works the same as the tuple case, except that instead of
// just comparing the lengths of the tuples we compare the sorted list of field names
function mappingFormulaIsEmpty(Context cx, Conjunction? posList, Conjunction? negList) returns boolean {
    TempMappingSubtype combined;
    if posList == () {
        combined = MAPPING_ATOMIC_INNER;
    }
    else {
        // combine all the positive atoms using intersection
        combined = cx.mappingAtomType(posList.atom);
        Conjunction? p = posList.next;
        while true {
            if p == () {
                break;
            }
            else {
                var m = intersectMapping(cx.env, combined, cx.mappingAtomType(p.atom));
                if m == () {
                    return true;
                }
                else {
                    combined = m;
                }
                p = p.next;
            }
        }
        foreach var t in combined.types {
            if isEmpty(cx, t) {
                return true;
            }
        }
       
    }
    return !mappingInhabited(cx, combined, negList);
}

function mappingInhabited(Context cx, TempMappingSubtype pos, Conjunction? negList) returns boolean {
    if negList == () {
        return true;
    }
    else {
        MappingAtomicType neg = cx.mappingAtomType(negList.atom);

        MappingPairing pairing = new (pos, neg);
        if !isEmpty(cx, diff(pos.rest, neg.rest)) {
            return mappingInhabited(cx, pos, negList.next);
        }
        foreach var { name, index1, type1: posType, type2: negType } in pairing {
            SemType d = diff(posType, negType);
            if !isEmpty(cx, d) {
                TempMappingSubtype mt;
                if index1 is () {
                    // the posType came from the rest type
                    mt = insertField(pos, name, d);
                }
                else {
                    SemType[] posTypes = shallowCopyTypes(pos.types);
                    posTypes[index1] = d;
                    mt = { types: posTypes, names: pos.names, rest: pos.rest };
                }
                if mappingInhabited(cx, mt, negList.next) {
                    return true;
                }
            }
        }
        return false; 
    }
}

function insertField(TempMappingSubtype m, string name, SemType t) returns TempMappingSubtype {
    string[] names = shallowCopyStrings(m.names);
    SemType[] types = shallowCopyTypes(m.types);
    int i = names.length();
    while true {
        if i == 0 || name > names[i - 1] {
            names[i] = name;
            types[i] = t;
            break;
        }
        names[i] = names[i - 1];
        types[i] = types[i - 1];
        i -= 1;
    }
    return { names, types, rest: m.rest };
}

function intersectMappingAtoms(Env env, MappingAtomicType[] atoms) returns [SemType, MappingAtomicType]? {
    if atoms.length() == 0 {
        return ();
    }
    MappingAtomicType atom = atoms[0];
    foreach int i in 1 ..< atoms.length() {
        var tmpAtom = intersectMapping(env, atom, atoms[i]);
        if tmpAtom is () {
            return ();
        }
        atom = tmpAtom.cloneReadOnly();
    }
    SemType semType = createBasicSemType(BT_MAPPING, bddAtom(env.mappingAtom(atom)));
    return [semType, atom];
}

type TempMappingSubtype record {|
    // sorted
    string[] names;
    SemType[] types;
    SemType rest;
|};

function intersectMapping(Env env, TempMappingSubtype m1, TempMappingSubtype m2) returns TempMappingSubtype? {
    string[] names = [];
    SemType[] types = [];
    foreach var { name, type1, type2 } in new MappingPairing(m1, m2) {
        names.push(name);
        SemType t = intersectMemberSemTypes(env, type1, type2);
        // FIXME: not sure this is working as intended we are getting t be an 
        // non-atomic cell, but we pass all tests
        CellAtomicType? atomic = cellAtomicType(type1);
        SemType t1 = atomic == () ? type1 : atomic.ty;
        if t1 == NEVER {
            return ();
        }
        types.push(t);
    }
    SemType rest = intersectMemberSemTypes(env, m1.rest, m2.rest);
    return { names, types, rest };
}

type FieldPair record {|
    string name;
    SemType type1;
    SemType type2;
    int? index1 = ();
    int? index2 = ();
|};

public type MappingPairIterator object {
    public function next() returns record {| FieldPair value; |}?;
};

class MappingPairing {
    *MappingPairIterator;
    *object:Iterable;
    private final string[] names1;
    private final string[] names2;
    private final SemType[] types1;
    private final SemType[] types2;
    private final int len1;
    private final int len2;
    private int i1 = 0;
    private int i2 = 0;
    private final SemType rest1;
    private final SemType rest2;

    function init(TempMappingSubtype m1, TempMappingSubtype m2) {
        self.names1 = m1.names;
        self.len1 = self.names1.length();
        self.types1 = m1.types;
        self.rest1 = m1.rest;
        self.names2 = m2.names;
        self.len2 = self.names2.length();
        self.types2 = m2.types;
        self.rest2 = m2.rest;
    }

    public function iterator() returns MappingPairIterator {
        return self;
    }

    function reset() {
        self.i1 = 0;
        self.i2 = 0;
    }

    public function next() returns record {| FieldPair value; |}? {
        FieldPair p;
        if self.i1 >= self.len1 {
            if self.i2 >= self.len2 {
                return ();
            }
            p = {
                name: self.curName2(),
                type1: self.rest1,
                type2: self.curType2(),
                index2: self.i2
            };
            self.i2 += 1;
        }
        else if self.i2 >= self.len2 {
            p = {
                name: self.curName1(),
                type1: self.curType1(),
                type2: self.rest2,
                index1: self.i1
            };
            self.i1 += 1;
        }
        else {
            string name1 = self.curName1();
            string name2 = self.curName2();
            if name1 < name2 {
                p = {
                    name: name1,
                    type1: self.curType1(),
                    type2: self.rest2,
                    index1: self.i1
                };
                self.i1 += 1;
            }          
            else if name2 < name1 {
                p = {
                    name: name2,
                    type1: self.rest1,
                    type2: self.curType2(),
                    index2: self.i2
                };
                self.i2 += 1;
            }
            else {
                p = {
                    name: name1,
                    type1: self.curType1(),
                    type2: self.curType2(),
                    index1: self.i1,
                    index2: self.i2
                };
                self.i1 += 1;
                self.i2 += 1;
            }
        }
        return { value: p };
    }
    
    private function curType1() returns SemType => self.types1[self.i1];
    
    private function curType2() returns SemType => self.types2[self.i2];
    
    private function curName1() returns string => self.names1[self.i1];

    private function curName2() returns string => self.names2[self.i2];
}

function bddMappingMemberTypeInner(Context cx, Bdd b, StringSubtype|true key, SemType accum) returns SemType {
    if b is boolean {
        return b ? accum : NEVER;
    }
    else {
        return union(bddMappingMemberTypeInner(cx, b.left, key,
                                          intersect(mappingAtomicMemberTypeInner(cx.mappingAtomType(b.atom), key),
                                                    accum)),
                     union(bddMappingMemberTypeInner(cx, b.middle, key, accum),
                           bddMappingMemberTypeInner(cx, b.right, key, accum)));
    }
}

function mappingAtomicMemberTypeInner(MappingAtomicType atomic, StringSubtype|true key) returns SemType {
    SemType? memberType = ();
    foreach SemType ty in mappingAtomicApplicableMemberTypesInner(atomic, key) {
        if memberType == () {
            memberType = ty;
        }
        else {
            memberType = union(memberType, ty);
        }
    }
    return memberType ?: UNDEF;
}

function mappingAtomicApplicableMemberTypesInner(MappingAtomicType atomic, StringSubtype|true key) returns SemType[] {
    SemType[] types = from string name in atomic.names select mappingAtomicTypeMemberAtInner(atomic, name);
    SemType rest = mappingAtomicTypeRest(atomic);
    SemType[] memberTypes = [];
    if key == true {
        memberTypes.push(...types);
        memberTypes.push(rest);
    }
    else {
        StringSubtypeListCoverage coverage = stringSubtypeListCoverage(key, atomic.names);
        foreach int index in coverage.indices {
            memberTypes.push(types[index]);
        }
        if !coverage.isSubtype {
            memberTypes.push(rest);
        }
    }
    return memberTypes;
}

final BasicTypeOps mappingOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
