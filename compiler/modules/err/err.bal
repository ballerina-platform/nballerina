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
|};

public type Detail record {
    Position? position;
    string? functionName;
};

public type Any Syntax|Semantic|Unimplemented;

// Grammatical inconsistency here is reluctantly intentional
// JBUG defining these as `error<Detail> & distinct error` results in these errors not being distinct
public type Syntax distinct error<Detail>;
public type Semantic distinct error<Detail>;
public type Unimplemented distinct error<Detail>;

public function syntax(Message m, Position? pos = (), string? functionName = (), error? cause = ()) returns Syntax {
    return error Syntax(messageToString(m), cause, position=pos, functionName=functionName);
}

public function semantic(Message m, Position? pos = (), string? functionName = (), error? cause = ()) returns Semantic {
    return error Semantic(messageToString(m), cause, position=pos, functionName=functionName);
}

public function unimplemented(Message m, Position? pos = (), string? functionName = (), error? cause = ()) returns Unimplemented {
    return error Unimplemented(messageToString(m), cause, position=pos, functionName=functionName);
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

public function impossible(string? detail = ()) returns error {
    string msg = "something impossible happened";
    if detail is string {
        msg += " (" + detail + ")";
    }
    return error(msg);
}

