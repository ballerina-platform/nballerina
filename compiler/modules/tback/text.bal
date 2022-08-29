import wso2/nballerina.bir.sexpr as bsexpr;
import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.sexpr as csexpr;
public function toBirText(bir:Module birMod) returns string|err:Semantic|err:Unimplemented {
    bir:FunctionDefn[] functionDefns = birMod.getFunctionDefns();
    bsexpr:Function[] funcSexprs = [];
    foreach int i in 0 ..< functionDefns.length() {
        bir:FunctionDefn defn = functionDefns[i];
        bir:FunctionCode code = check birMod.generateFunctionCode(i);
        bir:File file = birMod.getPartFile(defn.partIndex);
        funcSexprs.push(bsexpr:func(defn, code, file));
    }
    return csexpr:prettyPrint(funcSexprs, indentAt);
}

function indentAt(int[] index) returns boolean {
    match index {
        [5]|[5, _]|[6]|[6, _] => {
            return true;
        }
        [6, _, var n] => {
            return n > 1;
        }
        _ => {
            return false;
        }
    }
}
