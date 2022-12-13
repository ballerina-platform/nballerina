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
    match atomSexpr {
        ["list", var members] => {
            t:SemType[] initial = from var member in <Type[]>members select semTypeFromSexpr(env, bindings, member);
            t:ListDefinition d = new;
            return t:defineListTypeWrapped(d, env, initial, (<Type[]>members).length());
        }
        ["list", var members, var fixedLength] => {
            t:SemType[] initial = from var member in <Type[]>members select semTypeFromSexpr(env, bindings, member);
            t:ListDefinition d = new;
            return t:defineListTypeWrapped(d, env, initial, <int>fixedLength);
        }
        ["array", var members] => {
            t:ListDefinition d = new;
            return t:defineListTypeWrapped(d, env, rest = semTypeFromSexpr(env, bindings, <Type>members));
        }
        ["cell", var ty, var mutabilityStr] => {
            t:CellMutability mutability;
            match mutabilityStr {
                "none" => {
                    mutability = t:CELL_MUT_NONE;
                }
                "limited" => {
                    mutability = t:CELL_MUT_LIMITED;
                }
                "unlimited"|_ => { // JBUG shouldn't need _
                    mutability = t:CELL_MUT_UNLIMITED;
                }
            }
            t:SemType semType = semTypeFromSexpr(env, bindings, <Type>ty);
            return t:cellContaining(env, semType, mutability);
        }
        ["mapping", var rest] => {
            t:MappingDefinition d = new;
            return t:defineMappingTypeWrapped(d, env, [], semTypeFromSexpr(env, bindings, <Type>rest));
        }
        ["mapping", var fields, var rest] => {
            t:MappingDefinition d = new;
            return t:defineMappingTypeWrapped(d, env, <t:Field[]><anydata>fields, semTypeFromSexpr(env, bindings, <Type>rest));
        }
    }
    panic err:impossible("impossible sexpr atom:" + atomSexpr.toString());
}
