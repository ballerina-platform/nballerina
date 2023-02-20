// Given an input array where n-th int is m, returns true if m-th token at n-th level sexpr tree should be indented.
public type Indenter function(int[]) returns boolean;

public function prettyPrint(Data[] topLevel, Indenter? indentAt = ()) returns string {
    string[] buf = [];
    append(buf, indentAt, topLevel, -1, [], topLevel = true);
    return "".'join(...buf);
}

function append(string[] buf, Indenter? indentAt, Data sexpr, int level, int[] index, boolean space = false, boolean topLevel = false) {
    if sexpr is Data[] {
        if indentAt != () && indentAt(index) {
            buf.push("\n");
            foreach var _ in 0 ..< level {
                buf.push("    ");
            }
        }
        else if space {
            buf.push(" ");
        }
        pushIf(!topLevel, buf, "(");
        boolean afterFirst = false;
        index.push(0);
        int indexLast = index.length() - 1;
        foreach var item in sexpr {
            append(buf, indentAt, item, level + 1, index, afterFirst);
            index[indexLast] += 1;
            afterFirst = true;
        }
        _ = index.pop();
        pushIf(!topLevel, buf, ")");
    }
    else if sexpr is String {
        pushIf(space, buf, " ");
        buf.push("\"");
        appendQuoted(buf, sexpr.s);
        buf.push("\"");
    }
    else {
        pushIf(space, buf, " ");
        buf.push(sexpr.toString());
    }
}

function pushIf(boolean cond, string[] buf, string s) {
    if cond {
        buf.push(s);
    }
}

function appendQuoted(string[] buf, string str) {
    int begin = 0;
    int? loc = str.indexOf("\"");
    while loc != () {
        buf.push(str.substring(begin, loc), "\\");
        begin = loc;
        loc = str.indexOf("\"", begin + 1);
    }
    buf.push(str.substring(begin, str.length()));
}
