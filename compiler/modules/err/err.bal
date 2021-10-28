// Names here are chosen so they work with `err:` prefix.

public type Message string|Template;

public type Template object {
    *object:RawTemplate;
    public (readonly & string[]) strings;
    public (string|int|float)[] insertions;
};

const QUOTE = "'";

// A position is an int that represents a position within a File.
// The File determines how the int is mapped onto a line/column.
// All that is guaranteed is that the ordering of ints
// is consistent with the ordering of positions.
public type Position int;

public type LineColumn readonly & [int, int];

public type File readonly & object {
    public function filename() returns string;
    public function directory() returns string?;
    public function lineColumn(Position pos) returns LineColumn;
};

public type Location readonly & record {|
    string filename;
    LineColumn? startPos;
    LineColumn? endPos;  
|};

public type Detail record {
    Location? location;
    string? functionName;
};

public type Any Syntax|Semantic|Unimplemented;

// Grammatical inconsistency here is reluctantly intentional
public type Syntax distinct error<Detail>;
public type Semantic distinct error<Detail>;
public type Unimplemented distinct error<Detail>;

public type Panic distinct error;

public function location(File file, Position? startPos = (), Position? endPos = ()) returns Location {
    return {
        filename: file.filename(),
        startPos: startPos == () ? () : file.lineColumn(startPos),
        endPos: endPos == () ? () : file.lineColumn(endPos)
    };
}

public function syntax(Message m, Location loc, string? functionName = (), error? cause = ()) returns Syntax {
    return error Syntax(messageToString(m), cause, location=loc, functionName=functionName);
}

public function semantic(Message m, Location loc, string? functionName = (), error? cause = ()) returns Semantic {
    return error Semantic(messageToString(m), cause, location=loc, functionName=functionName);
}

public function unimplemented(Message m, Location loc, string? functionName = (), error? cause = ()) returns Unimplemented {
    return error Unimplemented(messageToString(m), cause, location=loc, functionName=functionName);
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

// This is intended to be used with `panic`.
// When unreachability is implemented we can have this call `panic` and return `never`
public function impossible(Message? detail = ()) returns Panic {
    string msg = "something impossible happened";
    if detail is Message {
        msg += " (" + messageToString(detail) + ")";
    }
    return error Panic(msg);
}

public function illegalArgument(Message detail) returns Panic {
    return error Panic(messageToString(detail));
}
