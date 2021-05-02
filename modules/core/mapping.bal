// Implementation specific to basic type list.
import semtype.bdd;

public type Field [string, SemType];

public type MappingSubtype readonly & record {|
    // sorted
    string[] names;
    SemType[] types;
|};

public function mapping(Env env, Field... fields) returns SemType {
    MappingSubtype mt = splitFields(fields);
    int rw = env.mappingDefs.length();
    env.mappingDefs.push(mt);
    int ro;
    if typeListIsReadOnly(mt.types) {
        ro = rw;
    }
    else {
        MappingSubtype roMt = {
            names: mt.names,
            types: readOnlyTypeList(mt.types)
        };
        ro = env.mappingDefs.length();
        env.mappingDefs.push(roMt);
    }
    return mappingRef(ro, rw);
}
public function recursiveMappingParse(Env env, function(Env, SemType) returns Field[]|error f) returns SemType|error {
    int ro = env.mappingDefs.length();
    MappingSubtype dummy = { names: [], types: [] };
    env.mappingDefs.push(dummy);
    int rw = ro + 1;
    env.mappingDefs.push(dummy);
    SemType r = mappingRef(ro, rw);
    Field[] rwFields = check f(env, r);
    MappingSubtype mt = splitFields(rwFields);
    env.mappingDefs[rw] = mt;
    MappingSubtype roMt = {
            names: mt.names,
            types: readOnlyTypeList(mt.types)
    };
    env.mappingDefs[ro] = roMt;
    return r;
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

function mappingRef(int ro, int rw) returns SemType {
    readonly & bdd:Node roBdd = bdd:atom(ro);
    readonly & bdd:Node rwBdd;
    if ro == rw {
        rwBdd = roBdd;
    }
    else {
        rwBdd = bdd:atom(rw);   
    }
    return new SemType((1 << (BT_MAPPING_RO + BT_COUNT)) | (1 << (BT_MAPPING_RW + BT_COUNT)),
                       [[BT_MAPPING_RO, roBdd], [BT_MAPPING_RW, rwBdd]]);
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
function mappingFormulaIsEmpty(TypeCheckContext tc, DefList? pos, DefList? neg) returns boolean {
    // TODO
    if pos is () {
        // do not have variable length tuples yet,
        // so no way for intersection of negated tuples to include everything
        return false;
    }
    else {
        // combine all the positive tuples using intersection
        MappingSubtype ms = tc.mappingDefs[pos.index];
        SemType[] s = ms.types;
        int slen = s.length();
        DefList? p = pos.rest;
        if !(p is ()) {
            s = shallowCopy(s);
        }
        while true {
            if p is () {
                break;
            }
            else {
                int d = p.index;
                p = p.rest; 
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

function mappingInhabited(TypeCheckContext tc, string[] fieldNames, SemType[] s, DefList? neg) returns boolean {
    if neg is () {
        return true;
    }
    else {
        int slen = s.length();

        MappingSubtype mt = tc.mappingDefs[neg.index];

        if mt.names != fieldNames {
            return mappingInhabited(tc, fieldNames, s, neg.rest);
        }

        SemType[] t = mt.types;
        foreach int i in 0 ..< slen {
            SemType d = diff(s[i], t[i]);
            if !isEmpty(tc, d) {
                SemType[] sd = shallowCopy(s);
                sd[i] = d;
                if mappingInhabited(tc, fieldNames, sd, neg.rest) {
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
