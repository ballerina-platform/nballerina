// Given an input array where n-th int is m, returns true if m-th token at n-th level sexpr tree should be indented.
public type Indenter function(int[]) returns boolean;

public function prettyPrint(Data[] topLevel, Indenter? indentAt = ()) returns string {
    string[] buf = [];
    foreach var l in topLevel {
        append(buf, indentAt, l, 0, []);
    }
    return "".'join(...buf);
}

function append(string[] buf, Indenter? indentAt, Data sexpr, int level, int[] index, boolean space = false) {
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
        buf.push("(");
        boolean afterFirst = false;
        index.push(0);
        int indexLast = index.length() - 1;
        foreach var item in sexpr {
            append(buf, indentAt, item, level + 1, index, afterFirst);
            index[indexLast] += 1;
            afterFirst = true;
        }
        _ = index.pop();
        buf.push(")");
        return;
    }
    if space {
        buf.push(" ");
    }
    if sexpr is String {
        buf.push("\"");
        appendQuoted(buf, sexpr.s);
        buf.push("\"");
    }
    else {
        buf.push(sexpr.toString());
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
