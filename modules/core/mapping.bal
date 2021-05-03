// Implementation specific to basic type list.
import semtype.bdd;

public type Field [string, SemType];

public type MappingSubtype readonly & record {|
    // sorted
    string[] names;
    SemType[] types;
|};

public class MappingDefinition {
    *Definition;
    private int ro = -1;
    private int rw = -1;
    private SemType? semType = ();

    public function getSemType(Env env) returns SemType {
        SemType? s = self.semType;
        if s is () {
            self.ro = dummyMappingDef(env);
            self.rw = dummyMappingDef(env);
            return self.createSemType(env);
        }
        else {
            return s;
        }
    }

    public function define(Env env, Field[] fields) returns SemType {
        MappingSubtype rwType = splitFields(fields);
        if self.rw < 0 {
            self.rw = dummyMappingDef(env);
        }
        env.mappingDefs[self.rw] = rwType;
        if typeListIsReadOnly(rwType.types) {
            if self.ro < 0 {
                self.ro = self.rw;
            }
            else {
                env.mappingDefs[self.ro] = rwType;
            }
        }
        else {
            MappingSubtype roType = {
                names: rwType.names,
                types: readOnlyTypeList(rwType.types)
            };
            if self.ro < 0 {
                self.ro = dummyMappingDef(env);
            }
            env.mappingDefs[self.ro] = roType;
        }
        return self.createSemType(env);
    }
    
    private function createSemType(Env env) returns SemType {
        readonly & bdd:Node roBdd = bdd:atom(self.ro);
        readonly & bdd:Node rwBdd;
        if self.ro == self.rw {
            rwBdd = roBdd;
        }
        else {
            rwBdd = bdd:atom(self.rw);
        }
        SemType s = new SemType((1 << (BT_MAPPING_RO + BT_COUNT)) | (1 << (BT_MAPPING_RW + BT_COUNT)),
                                [[BT_MAPPING_RO, roBdd], [BT_MAPPING_RW, rwBdd]]);
        self.semType = s; 
        return s;
    }       
}

function dummyMappingDef(Env env) returns int {
    int i = env.mappingDefs.length();
    MappingSubtype dummy = { names: [], types: [] };
    env.mappingDefs.push(dummy);
    return i;
}

function splitFields(Field[] fields) returns MappingSubtype {
    Field[] sortedFields = fields.sort("ascending", fieldName);
    string[] names = [];
    SemType[] types = [];
    foreach var [s, t] in sortedFields {
        names.push(s);
        types.push(t);
    }
    return {
        names: names.cloneReadOnly(),
        types: types.cloneReadOnly()
    };
}

isolated function fieldName(Field f) returns string {
    return f[0];
}

function mappingSubtypeIsEmpty(TypeCheckContext tc, SubtypeData t) returns boolean {
    bdd:Bdd b = <bdd:Bdd>t;
    BddMemo? mm = tc.mappingMemo[b];
    BddMemo m;
    if mm is () {
        m = { bdd: b };
        tc.mappingMemo.add(m);
    }
    else {
        m = mm;
        boolean? res = m.isEmpty;
        if res is () {
            // we've got a loop
            // XXX is this right???
            return true;
        }
        else {
            return res;
        }
    }
    boolean isEmpty = bddIsEmpty(tc, b, (), (), mappingFormulaIsEmpty);
    m.isEmpty = isEmpty;
    return isEmpty;    
}

// This works the same as the tuple case, except that instead of
// just comparing the lengths of the tuples we compare the sorted list of field names
function mappingFormulaIsEmpty(TypeCheckContext tc, Conjunction? pos, Conjunction? neg) returns boolean {
    // TODO
    if pos is () {
        // do not have variable length tuples yet,
        // so no way for intersection of negated tuples to include everything
        return false;
    }
    else {
        // combine all the positive tuples using intersection
        MappingSubtype ms = tc.mappingDefs[pos.atom];
        SemType[] s = ms.types;
        int slen = s.length();
        Conjunction? p = pos.next;
        if !(p is ()) {
            s = shallowCopy(s);
        }
        while true {
            if p is () {
                break;
            }
            else {
                int d = p.atom;
                p = p.next; 
                MappingSubtype mt = tc.mappingDefs[d];
                if mt.names != ms.names {
                    return false;
                }
                SemType[] t = mt.types;
                foreach int i in 0 ..< slen {
                    s[i] = intersect(s[i], t[i]);
                }
            }
        }
        foreach var m in s {
            if isEmpty(tc, m) {
                return true;
            }
        }
        return !mappingInhabited(tc, ms.names, s, neg);
    }
}

function mappingInhabited(TypeCheckContext tc, string[] fieldNames, SemType[] s, Conjunction? neg) returns boolean {
    if neg is () {
        return true;
    }
    else {
        int slen = s.length();

        MappingSubtype mt = tc.mappingDefs[neg.atom];

        if mt.names != fieldNames {
            return mappingInhabited(tc, fieldNames, s, neg.next);
        }

        SemType[] t = mt.types;
        foreach int i in 0 ..< slen {
            SemType d = diff(s[i], t[i]);
            if !isEmpty(tc, d) {
                SemType[] sd = shallowCopy(s);
                sd[i] = d;
                if mappingInhabited(tc, fieldNames, sd, neg.next) {
                    return true;
                }
            }          
        }
        return false; 
    }
}

final BasicTypeOps mappingOps = {
    union: bddSubtypeUnion,
    intersect: bddSubtypeIntersect,
    diff: bddSubtypeDiff,
    complement: bddSubtypeComplement,
    isEmpty: mappingSubtypeIsEmpty
};
