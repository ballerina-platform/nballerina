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
        [_, _]|[1, _, 2, 4]|[1, _, 2, 5]|[1, _, 2, 6]|[1, _, 2, 4, _]|[1, _, 2, 5, _] => {
            return true;
        }
        [var n]|[2, _, var n]|[3, 1, var n] => {
            return n > 0;
        }
        [1, _, 2, 5, _, var n] => {
            return n > 1;
        }
    }
    return closureIndentAt(index);
}

function closureIndentAt(int[] index) returns boolean {
    if index.length() < 5 {
        return false;
    }
    int[] prefix = index.slice(0, 4);
    match prefix {
        [1, _, 2, 6] => {
            return closureIndentAtInner(index.slice(4));
        }
    }
    return false;
}

function closureIndentAtInner(int[] suffix) returns boolean {
    match suffix {
        [_]|[_, 1, 3]|[_, 1, 3, _]|[_, 1, 4]|[_, 1, 4, _]|[_, 1, 5] => {
            return true;
        }
        [_, 1, 4, _, var n] => {
            return n > 1;
        }
    }
    if suffix.length() > 4 && suffix.slice(1, 3) == [1, 5] {
        return closureIndentAtInner(suffix.slice(3));
    }
    return false;
}

