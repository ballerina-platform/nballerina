import nballerina.comm.sexpr;
import wso2/nballerina.types as t;


Type?[] uniformTypeNames = [NIL, "boolean", "(& readonly list)", ["&", "readonly", "mapping"], "(& readonly table)", "(& readonly xml)", "(& readonly object)",
                            "int", "float", "decimal", "string", "error", "function", "typedesc", "handle", (), "future", "stream",
                            ["&", ["!", "readonly"], "list"] , "(& (! readonly) mapping)", "(& (! readonly) table)", "(& (! readonly) xml)", "(& (! readonly) object)"];
public function formSemType(t:SemType ty) returns Type {
    if ty == t:NEVER {
        return "never";
    }
    t:SplitSemType { all } = t:split(ty);
    Type utUnion = ut(all, uniformTypeNames);
    if utUnion is sexpr:Data[] && utUnion.length() == 1 {
        panic error("unimpl type" + ty.toString());
    }
    return utUnion;
}

function ut(t:UniformTypeBitSet ty, Type?[] codeToUtType) returns Type {
    if ty == t:TOP {
        return ["|", "any", "error"];
    }
    if ty == t:ANY {
        return "any";
    }
    ["|", Type...] utUnion = ["|"];
    int bits = ty;
    foreach var i in 0 ..< codeToUtType.length() {
        if (bits & 1) == 1 {
            Type? ut = codeToUtType[i];
            if ut != () {
                utUnion.push(ut);
            }
        }
        bits = bits >> 1;
    }
    return utUnion.length() == 2 ? utUnion[1] : utUnion;
}
