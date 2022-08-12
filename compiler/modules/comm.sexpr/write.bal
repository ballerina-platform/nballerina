type Indenter function(int[]) returns boolean;

public function prettyPrint(Data[] topLevel, Indenter indentAt) returns string {
    string[] buf = [];
    foreach var l in topLevel {
        append(buf, indentAt, l, 0, []);
    }
    return "".'join(...buf);
}

function append(string[] buf, Indenter indentAt, Data sexpr, int level, int[] index) {
    if sexpr is String {
        buf.push("\"", sexpr.s, "\"");
    }
    else if sexpr is Data[] {
        // io:println("      " + index.toString() + " " + sexpr.toString());
        if indentAt(index) {
            buf.push("\n");
            foreach var _ in 0 ..< level {
                buf.push("    ");
            }
        }
        buf.push("(");
        boolean afterFirst = false;
        int indexLast = index.length();
        index.push(0);
        foreach var item in sexpr {
            if afterFirst {
                buf.push(" ");
            }
            append(buf, indentAt, item, level + 1, index);
            index[indexLast] += 1; 
            afterFirst = true;
        }
        _ = index.pop();
        buf.push(")");
    }
    else {
        buf.push(sexpr.toString());
    }
}
