// Implementation specific to basic type list.

public type Field [string, SemType];

public type MappingAtomicType readonly & record {|
    // sorted
    string[] names;
    SemType[] types;
    SemType rest;
|};

public function mappingAtomicTypeMemberAt(MappingAtomicType mat, string k) returns SemType {
    int? i = mat.names.indexOf(k, 0);
    return i is int ? mat.types[i] : mat.rest;
}

// This is mapping index 0
// Used by bddFixReadOnly
final MappingAtomicType MAPPING_SUBTYPE_RO = { names: [], types: [], rest: READONLY };

public class MappingDefinition {
    *Definition;
    private RecAtom? roRec = ();
    private RecAtom? rwRec = ();
    private SemType? semType = ();

    public function getSemType(Env env) returns SemType {
        SemType? s = self.semType;
        if s == () {
            RecAtom ro = env.recMappingAtom();
            RecAtom rw = env.recMappingAtom();
            self.roRec = ro;
            self.rwRec = rw;
            return self.createSemType(env, ro, rw);
        }
        else {
            return s;
        }
    }

    public function define(Env env, Field[] fields, SemType rest) returns SemType {
        var [names, types] = splitFields(fields);
        MappingAtomicType rwType = {
            names: names.cloneReadOnly(),
            types: types.cloneReadOnly(),
            rest
        };
        Atom rw;
        RecAtom? rwRec = self.rwRec;
        if rwRec != () {
            rw = rwRec;
            env.setRecMappingAtomType(rwRec, rwType);
        }
        else {
            rw = env.mappingAtom(rwType);
        }
        Atom ro;
        MappingAtomicType roType = readOnlyMappingAtomicType(rwType);
        if roType === rwType {
            RecAtom? roRec = self.roRec;
            if roRec == () {
                // share the definitions
                ro = rw;
            }
            else {
                ro = roRec;
                env.setRecMappingAtomType(roRec, rwType);
            }
        }
        else {
            ro = env.mappingAtom(roType);
            RecAtom? roRec = self.roRec;
            if roRec != () {
                env.setRecMappingAtomType(roRec, roType);
            }
        }
        return self.createSemType(env, ro, rw);
    }
    
    private function createSemType(Env env, Atom ro, Atom rw) returns SemType {
        BddNode roBdd = bddAtom(ro);
        BddNode rwBdd;
        if atomCmp(ro, rw) == 0 {
            // share the BDD
            rwBdd = roBdd;
        }
        else {
            rwBdd = bddAtom(rw);
        }
        SemType s = createComplexSemType(0, [[UT_MAPPING_RO, roBdd], [UT_MAPPING_RW, rwBdd]]);
        self.semType = s; 
        return s;
    }       
}

function readOnlyMappingAtomicType(MappingAtomicType ty) returns MappingAtomicType {
    if typeListIsReadOnly(ty.types) && isReadOnly(ty.rest) {
        return ty;
    }
    return {
        names: ty.names,
        types: readOnlyTypeList(ty.types),
        rest: intersect(ty.rest, READONLY)
    };   
}

function splitFields(Field[] fields) returns [string[], SemType[]] {
    Field[] sortedFields = fields.sort("ascending", fieldName);
    string[] names = [];
    SemType[] types = [];
    foreach var [s, t] in sortedFields {
        names.push(s);
        types.push(t);
    }
    return [names, types];
}

isolated function fieldName(Field f) returns string {
    return f[0];
}

function mappingRoSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    return mappingSubtypeIsEmpty(cx, bddFixReadOnly(<Bdd>t));
}

function mappingSubtypeIsEmpty(Context cx, SubtypeData t) returns boolean {
    Bdd b = <Bdd>t;
    BddMemo? mm = cx.mappingMemo[b];
    BddMemo m;
    if mm == () {
        m = { bdd: b };
        cx.mappingMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res == () {
            // we've got a loop
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = bddEvery(cx, b, (), (), mappingFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

// This works the same as the tuple case, except that instead of
// just comparing the lengths of the tuples we compare the sorted list of field names
function mappingFormulaIsEmpty(Context cx, Conjunction? posList, Conjunction? negList) returns boolean {
    TempMappingSubtype combined;
    if posList == () {
        combined = {
            types: [],
            names: [],
            // This isn't right for the readonly case.
            // bddFixReadOnly avoids this
            rest: TOP
        };
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
                var m = intersectMapping(combined, cx.mappingAtomType(p.atom));
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

        MappingPairing pairing;

        if pos.names != neg.names {
            // If this negative type has required fields that the positive one does not allow
            // or vice-versa, then this negative type has no effect,
            // so we can move on to the next one

            // Deal the easy case of two closed records fast.
            if isNever(pos.rest) && isNever(neg.rest) {
                return mappingInhabited(cx, pos, negList.next);
            }
            pairing = new (pos, neg);
            foreach var {type1: posType, type2: negType} in pairing {
                if isNever(posType) || isNever(negType) {
                    return mappingInhabited(cx, pos, negList.next);
                }
            }
            pairing.reset();
        }
        else {
            pairing = new (pos, neg);
        }

        if !isEmpty(cx, diff(pos.rest, neg.rest)) {
            return mappingInhabited(cx, pos, negList.next);
        }
        foreach var { name, index1, type1: posType, type2: negType } in pairing {
            SemType d = diff(posType, negType);
            if !isEmpty(cx, d) {
                TempMappingSubtype mt;
                if index1 == () {
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
        if i == 0 || name <= names[i - 1] {
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

function intersectionMappingAtoms(Env env, MappingAtomicType[] atoms) returns [SemType, MappingAtomicType]? {
    if atoms.length() == 0 {
        return ();
    }
    MappingAtomicType atom = atoms[0];
    foreach int i in 1 ..< atoms.length() {
        var tmpAtom = intersectMapping(atom, atoms[i]);
        if tmpAtom is () {
            return ();
        }
        atom = tmpAtom.cloneReadOnly();
    }

    TypeAtom tyAtom = env.mappingAtom(atom);
    Bdd bdd = bddAtom(tyAtom);
    SemType semType = createUniformSemType(UT_MAPPING_RW, bdd);
    return [semType, atom];
}

type TempMappingSubtype record {|
    // sorted
    string[] names;
    SemType[] types;
    SemType rest;
|};

function intersectMapping(TempMappingSubtype m1, TempMappingSubtype m2) returns TempMappingSubtype? {
    string[] names = [];
    SemType[] types = [];
    foreach var { name, type1, type2 } in new MappingPairing(m1, m2) {
        names.push(name);
        SemType t = intersect(type1, type2);
        if isNever(t) {
            return ();
        }
        types.push(t);
    }
    SemType rest = intersect(m1.rest, m2.rest);
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

function bddMappingMemberType(Context cx, Bdd b, StringSubtype|true key, SemType accum) returns SemType {
    if b is boolean {
        return b ? accum : NEVER;
    }
    else {
        return union(bddMappingMemberType(cx, b.left, key,
                                          intersect(mappingAtomicMemberType(cx.mappingAtomType(b.atom), key),
                                                    accum)),
                     union(bddMappingMemberType(cx, b.middle, key, accum),
                           bddMappingMemberType(cx, b.right, key, accum)));
    }
}

function mappingAtomicMemberType(MappingAtomicType atomic, StringSubtype|true key) returns SemType {
    SemType memberType = NEVER;
    foreach SemType ty in mappingAtomicApplicableMemberTypes(atomic, key) {
        memberType = union(memberType, ty);
    }
    return memberType;
}

function mappingAtomicApplicableMemberTypes(MappingAtomicType atomic, StringSubtype|true key) returns SemType[] {
    SemType[] memberTypes = [];
    if key == true {
        memberTypes.push(...atomic.types);
        memberTypes.push(atomic.rest);
    }
    else {
        StringSubtypeListCoverage coverage = stringSubtypeListCoverage(key, atomic.names);
        foreach int index in coverage.indices {
            memberTypes.push(atomic.types[index]);
        }
        if !coverage.isSubtype {
            memberTypes.push(atomic.rest);
        }
    }
    return memberTypes;
}

function bddMappingMemberRequired(Context cx, Bdd b, StringSubtype k, boolean requiredOnPath) returns boolean {
    if b is boolean {
        return b ? requiredOnPath : true;
    }
    else {
        return bddMappingMemberRequired(cx, b.left, k,
                                        requiredOnPath || stringSubtypeContainedIn(k, cx.mappingAtomType(b.atom).names))
               && bddMappingMemberRequired(cx, b.middle, k, requiredOnPath)
               && bddMappingMemberRequired(cx, b.right, k, requiredOnPath);
    }
}

final UniformTypeOps mappingRoOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingRoSubtypeIsEmpty
};

final UniformTypeOps mappingRwOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
