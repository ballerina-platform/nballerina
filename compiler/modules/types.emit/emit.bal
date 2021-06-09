import wso2/nballerina.err;
import wso2/nballerina.types as t;
import nballerina.types.bdd;

final readonly & string[] RO_ATOMS = [
    "()", "boolean", "int", "float", "decimal", "string", 
    "error", "function", "typedesc", "handle"];

final readonly & string[] RW_ATOMS = [
    "xml", "list", "map", "table", "object", "stream", "future"
];

# Serialize SemType into pseudo-Ballerina type syntax
#
# + env - Type environment  
# + ty - Type to be serialized
# + return - String representation  
public function semTypeToString(t:Env env, t:SemType ty) returns string {
    if ty is t:UniformTypeBitSet {
        return nonComplexSemTypeToString(ty);
    } 
    else {
        return complexSemTypeToString(ty);
    }
}

function nonComplexSemTypeToString(t:UniformTypeBitSet ty) returns string {
    // JBUG should work without ether casts 
    if <int>ty == <int>t:NEVER {
        return "never";
    }
    if <int>ty == <int>t:ANY {
        return "any";
    }
    if <int>ty == (<int>t:ANY | <int>t:ERROR) {
        return "any|error";
    }
    if <int>ty == <int>t:READONLY {
        return "readonly";
    }

    string[] buf = [];
    int roTy = ty & <int>t:READONLY;
    int rwTy = ty;
    foreach int i in 0 ..< RO_ATOMS.length() {
        if ((roTy & 1) == 1) {
            buf.push(RO_ATOMS[i]);
        }
        roTy = roTy >> 1;
        rwTy = rwTy >> 1;
    }

    rwTy = rwTy >> t:UT_COUNT_RW;
    foreach int i in 0 ..< RW_ATOMS.length() {
        boolean rwBit = (rwTy & 1) == 1;
        boolean roBit = (roTy & 1) == 1;
        if (roBit && rwBit) {
            buf.push(RW_ATOMS[i]);
        } 
        else {
            if (roBit) {
                buf.push(RW_ATOMS[i] + " & readonly");
            }
            if (rwBit) {
                // TODO test !readonly cases
                buf.push(RW_ATOMS[i] + " & !readonly");
            }
        }

        rwTy = rwTy >> 1;
        roTy = roTy >> 1;
    }
    return "|".'join(...buf);
}

function complexSemTypeToString(t:ComplexSemType ty) returns string {
    string[] buf = [];

    if ty.all != <int>t:NEVER {
        buf.push(nonComplexSemTypeToString(ty.all));
    }

    t:SubtypeData[] subTys = ty.subtypeDataList;
    int roTy = ty.some & <int>t:READONLY;
    int rwTy = ty.some;
    int subTypeI = 0;

    foreach int i in 0 ..< RO_ATOMS.length() {
        if ((roTy & 1) == 1) {
            buf.push(RO_ATOMS[i] + "<" + subtypesToString(subTys[subTypeI]) + ">");
            subTypeI = subTypeI + 1;
        }
        roTy = roTy >> 1;
        rwTy = rwTy >> 1;
    }

    rwTy = rwTy >> t:UT_COUNT_RW;
    int rwSubTypeI = subTypeI + t:bitCount(roTy);
    foreach int i in 0 ..< RW_ATOMS.length() {
        boolean rwBit = (rwTy & 1) == 1;
        boolean roBit = (roTy & 1) == 1;

        if roBit && rwBit && subTys[rwSubTypeI] == subTys[subTypeI] {
            // TODO: improve this case to include cases where subtypes only differ by readonly-ness
            buf.push(RW_ATOMS[i] + "<" + subtypesToString(subTys[rwSubTypeI]) + ">");
            rwSubTypeI = rwSubTypeI + 1;
            subTypeI = subTypeI + 1;
        } 
        else {
            if roBit {
                buf.push(RW_ATOMS[i] + "<" + subtypesToString(subTys[subTypeI]) + "> & readonly");
                subTypeI = subTypeI + 1;
            }
            if rwBit {
                buf.push(RW_ATOMS[i] + "<" + subtypesToString(subTys[rwSubTypeI]) + "> & !readonly");
                rwSubTypeI = rwSubTypeI + 1;
            }
        }

        rwTy = rwTy >> 1;
        roTy = roTy >> 1;
    }
    return "|".'join(...buf);
}

function subtypesToString(t:SubtypeData subTy) returns string {
    if subTy is bdd:Node {
        return bddToString(subTy, []);
    }
    if subTy is t:StringSubtype {
        // TODO: escape
        string[] quoted = from var s in subTy.values
                          select "\"" + s + "\"";
        return "|".'join(...quoted);
    }
    if subTy is t:IntSubtype {
        string[] ranges = from t:Range r in subTy
                          select r.min == r.max ?
                                 r.min.toString() :
                                 r.min.toString() + ".." + r.max.toString();
        return "|".'join(...ranges);
    }
    if subTy is t:BooleanSubtype {
        return subTy.value.toString();
    }
    // TODO: looks like `subTy is boolean` case is unused figure out why
    panic err:unimplemented("subtype `boolean` case is not implemented");
}

function bddToString(bdd:Node node, string[] branch) returns string {
    // TODO: change formatting depending on subtype
    // TODO: serialize subtypes to a defns list
    string[] tree = [];
    if node.left is true {
        branch.push("T" + node.atom.toString());
        tree.push(" & ".'join(...branch));
        _ = branch.pop();
    }
    if node.middle is true {
        // TODO: test this case
        tree.push(" & ".'join(...branch));
    }
    if node.right is true {
        // TODO: test this case
        branch.push("!T" + node.atom.toString());
        tree.push(" & ".'join(...branch));
        _ = branch.pop();
    }
    if node.left is bdd:Node {
        branch.push("T" + node.atom.toString());
        tree.push(bddToString(<bdd:Node>node.left, branch));
        _ = branch.pop();
    }
    if node.middle is bdd:Node {
        // TODO: test this case
        tree.push(bddToString(<bdd:Node>node.middle, branch));
    }
    if node.right is bdd:Node {
        // TODO: test this case
        branch.push("!T" + node.atom.toString());
        tree.push(bddToString(<bdd:Node>node.right, branch));
        _ = branch.pop();
    }

    return " | ".'join(...tree);
}
