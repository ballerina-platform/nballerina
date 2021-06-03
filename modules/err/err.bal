// Names here are chosen so they work with `err:` prefix.

public type Message string|Template;

public type Template object {
    *object:RawTemplate;
    public (readonly & string[]) strings;
    public (string|int)[] insertions;
};

const QUOTE = "'";

public type Position readonly & record {|
    // 1-based
    int lineNumber;
    // 0-based index (in code points) in the line
    int indexInLine;
    string? filename;
|};

public type Detail record {
    Position? position;
};


public type Any Syntax|Semantic|Unimplemented;

// Grammatical inconsistency here is reluctantly intentional
public type Syntax error<Detail> & distinct error;
public type Semantic error<Detail> & distinct error;
public type Unimplemented error<Detail> & distinct error;


public function syntax(Message m, Position? pos = (), error? cause = ()) returns Syntax {
    return error Syntax(messageToString(m), cause, position=pos);
}

public function semantic(Message m, Position? pos = (), error? cause = ()) returns Semantic {
    return error Semantic(messageToString(m), cause, position=pos);
}

public function unimplemented(Message m, Position? pos = (), error? cause = ()) returns Unimplemented {
    return error Semantic(messageToString(m), cause, position=pos);
}

public function messageToString(Message m) returns string {
    if m is string {
        return m;
    }
    else {
        return format(m);
    }
}

// string arguments are quoted; numbers are not
public function format(Template t) returns string {
    string[] strs = [];
    int i = 0;
    foreach var ins in t.insertions {
        strs.push(t.strings[i]);
        i += 1;
        if ins is string {
            strs.push(QUOTE);
            strs.push(ins);
            strs.push(QUOTE);
        }
        else {
            strs.push(ins.toString());
        }
    }
    strs.push(t.strings[i]);
    return string:concat(...strs);
}

public function unreached(string? detail = ()) returns never {
    string msg = "Unreachable code was reached";
    if !(detail is ()) {
        msg += ": " + detail;
    }
    panic error(msg);
}


