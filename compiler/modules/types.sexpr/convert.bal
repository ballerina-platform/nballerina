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
    else if tySExpr is IntSubtype  {
        t:SemType intSubtype = t:NEVER;
        foreach int i in 1 ..< tySExpr.length() {
            // JBUG #36911 cast to anydata is needed
            var [min, max] =  <[int, int]>(<anydata[]>tySExpr)[i];
            intSubtype = t:union(intSubtype, t:intRange(min, max));
        }
        return intSubtype;
    }
    else if tySExpr is Union|Intersection {
        // JBUG `is Union` evaluates to true even if it is an Intersection
        if tySExpr[0] == "&" {
            t:SemType intersect = t:TOP;
            foreach int i in 1 ..< tySExpr.length() {
                // JBUG #36911 cast to anydata is needed
                var part = <Type>(<anydata[]>tySExpr)[i];
                intersect = t:intersect(intersect, semTypeFromSexpr(env, bindings, part));
            }
            return intersect;
        }
        else {
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
    // JBUG #37085 can't use if-else and type check
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
            return d.define(env, initial, len);
        }
        ["array", var members] => {
            t:ListDefinition d = new;
            return d.define(env, rest = semTypeFromSexpr(env, bindings, <Type>members));
        }
        // JBUG if ["mapping", var members] is matched here, 1) it matches ["mapping", var fixed, var rest], 2) type of atomSexpr becomes 'other'
    }
    // atomSexpr is an array string with "mapping"
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
    return d.define(env, fields, semTypeFromSexpr(env, bindings, rest));
}
