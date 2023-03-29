import wso2/nballerina.bir.sexpr as bs;
import wso2/nballerina.bir;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types as t;

public function toBirText(bir:Module birMod) returns string|err:Semantic|err:Unimplemented {
    t:Context tc = birMod.getTypeContext();
    return sexpr:prettyPrint(check bs:fromModule(tc, birMod), indentAt);
}

function indentAt(int[] index) returns boolean {
    match index {
        [_, _]|[1, _, 2, 4]|[1, _, 2, 5]|[1, _, 2, 4, _]|[1, _, 2, 5, _] => {
            return true;
        }
        [var n]|[2, _, var n]|[3, 1, var n] => {
            return n > 0;
        }
        [1, _, 2, 5, _, var n] => {
            return n > 1;
        }
    }
    return false;
}
