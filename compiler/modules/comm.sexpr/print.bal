// Each list in a sexpr tree is uniquely identified by an index array.
// Index array is constructed by concatenating each ancestor's (including self) index among it's siblings.
// Indenter returns true if there should be a line break before the list identified by the given index array.
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

        // Uncomment for debugging. This will annotate each list with its index in the sexpr tree.
        // This is the index that will be passed to the indentAt function.
        // buf.push(subscriptToString(index));

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
        appendEscaped(buf, sexpr.s);
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

function appendEscaped(string[] buf, string str) {
    int[] chars = str.toCodePointInts();
    foreach var c in chars {
        if c == BACKSLASH {
            buf.push(string`\\`);
        }
        else if c == LINE_FEED {
            buf.push(string`\n`);
        }
        else if c == QUOTE {
            buf.push(string`\"`);
        }
        else {
            buf.push(checkpanic string:fromCodePointInt(c));
        }
    }
}

// For debugging purposes.

final int ZERO = string:toCodePointInt("0");
final readonly & string[] SUPER_DIGITS = ["⁰", "¹", "²", "³", "⁴", "⁵", "⁶", "⁷", "⁸","⁹"];

function subscriptToString(int[] arr) returns string {
    if arr == [] {
        return "⁻";
    }
    string[] s = [];
    foreach int i in arr {
        foreach int ch in i.toString().toCodePointInts() {
            s.push(SUPER_DIGITS[ch - ZERO]);
        }
    }
    return " ".'join(...s);
}
