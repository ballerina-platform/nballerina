import wso2/nballerina.types as t;
import wso2/nballerina.comm.err;

public function semTypeFromSexpr(t:Env env, map<Atom> bindings, Type tySExpr) returns t:SemType {
    // JBUG #36852 can't use pattens to match
    if tySExpr is Int {
        return t:INT;
    }
    else if tySExpr is Boolean {
        return t:BOOLEAN;
    }
    else if tySExpr is String {
        return t:STRING;
    }
    else if tySExpr is IntSubtype {
        t:SemType intSubtype = t:NEVER;
        foreach int i in 1 ..< tySExpr.length() {
            // JBUG #36911 cast to anydata is needed
            var [min, max] = <[int, int]>(<anydata[]>tySExpr)[i];
            intSubtype = t:union(intSubtype, t:intRange(min, max));
        }
        return intSubtype;
    }
    else if tySExpr is Union|Intersection|Not {
        // JBUG `is Union` evaluates to true even if it is an Intersection, therefor let's test tySExpr[0] instead
        "&"|"!"|"|" op = tySExpr[0];
        if op == "!" {
            if tySExpr.length() > 2 {
                // This should ideally be enforced at cloneWithType but we can't currently due to JBUG
                panic error("not constructor should only take one type as the parameter");
            }
            return t:complement(semTypeFromSexpr(env, bindings, tySExpr[1]));
        }
        if op == "&" {
            t:SemType intersect = t:TOP;
            foreach int i in 1 ..< tySExpr.length() {
                // JBUG #36911 cast to anydata is needed
                var part = <Type>(<anydata[]>tySExpr)[i];
                intersect = t:intersect(intersect, semTypeFromSexpr(env, bindings, part));
            }
            return intersect;
        }
        else { // op == "|"
            t:SemType union = t:NEVER;
            foreach int i in 1 ..< tySExpr.length() {
                // JBUG #36911 cast to anydata is needed
                var part = <Type>(<anydata[]>tySExpr)[i];
                union = t:union(union, semTypeFromSexpr(env, bindings, part));
            }
            return union;
        }
    }
    else if tySExpr is AtomRef {
        Atom? a = bindings[tySExpr];
        if a is Atom {
            return semTypeFromAtomSexpr(env, bindings, a);
        }
        else {
            panic error("unspecified atom: " + tySExpr);
        }
    }
    else {
        // JBUG should be unreachable
        panic err:impossible("unreached in semTypeFromSexpr for sexpr:" + tySExpr.toString());
    }
}

public function semTypeFromAtomSexpr(t:Env env, map<Atom> bindings, Atom atomSexpr) returns t:SemType {
    // JBUG #37085 can't use if-elses with type checks
    // Nor can we use match due to below, have to use a combination of both
    // JBUG if we a match clause ["mapping", var members] , 1) it matches ["mapping", var fixed, var rest], 2) type of atomSexpr becomes 'other'
    match atomSexpr {
        ["list", var m] => {
            // JBUG cast. inline variable when fixed 
            var members = <Type[]>m;
            int len = members.length();
            if atomSexpr is RepeatingTuple {
                // JBUG current case matches ["list", var members, var len]
                len = atomSexpr[2];
            }
            t:SemType[] initial = from var member in members select semTypeFromSexpr(env, bindings, member);
            t:ListDefinition d = new;
            return t:defineListTypeWrapped(d, env, initial, len);
        }
        ["array", var members] => {
            t:ListDefinition d = new;
            return t:defineListTypeWrapped(d, env, rest = semTypeFromSexpr(env, bindings, <Type>members));
        }
    }

    match atomSexpr {
        // JBUG #37176 can't merge this with above match-stmt
        // JBUG #37136 cannot use ["cell", var t, var m]
        // JBUG ["cell"] matches ["cell", var t, var m]
        ["cell"] => {
            Type t = <Type>atomSexpr[1];
            string s = <string>atomSexpr[2];
            t:CellMutability m;
            match s {
                "none" => {
                    m = t:CELL_MUT_NONE;
                }
                "limited" => {
                    m = t:CELL_MUT_LIMITED;
                }
                "unlimited"|_ => {
                    m = t:CELL_MUT_UNLIMITED;
                }
            }
            t:SemType semType = semTypeFromSexpr(env, bindings, t);
            return t:cellContaining(env, semType, m);
        }
    }

    // atomSexpr is an array starting with "mapping"
    Type rest;
    t:Field[] fields;
    int mappingLen = atomSexpr.length();
    // JBUG `atomSexpr is OpenMapping` is always false
    if mappingLen == 3 {
        fields = from var f in (<OpenMapping>atomSexpr)[1] select [f[0].str, semTypeFromSexpr(env, bindings, f[1])];
        rest = <Type>atomSexpr[2];
    }
    else {
        fields = [];
        rest = <Type>atomSexpr[1];
    }
    t:MappingDefinition d = new;
    return t:defineMappingTypeWrapped(d, env, fields, semTypeFromSexpr(env, bindings, rest));
}
