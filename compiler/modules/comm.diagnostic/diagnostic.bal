import wso2/nballerina.comm.lib;
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

public type Range readonly & record {|
    Position startPos;
    Position endPos;
|};

public type LineColumn readonly & [int, int];

public type File readonly & object {
    public function filename() returns string;
    public function directory() returns string?;
    public function lineColumn(Position pos) returns LineColumn;
    public function lineContent(Position pos) returns string;
};

public type Location readonly & record {|
    File file;
    // If the `range` is just a position, then the end position is the end of the token.
    Range|Position range;
|};

public function locationLineColumn(Location loc) returns LineColumn {
    var range = loc.range;
    Position startPos = range is Position ? range : range.startPos;
    return loc.file.lineColumn(startPos);
}

public enum Category {
    SYNTAX = "syntax",
    SEMANTIC = "semantic",
    UNIMPLEMENTED = "unimplemented"
}

// JBUG if this is readonly, then jBallerina rejects `error<Diagnostic>`
// also err.detail() does not produce the right type
// Probably #31334 is related
public type Diagnostic record {|
    Category category;
    Location location;
    string message;
    string? defnName = ();
|};

public type SyntaxDiagnostic record {|
    *Diagnostic;
    SYNTAX category = SYNTAX;
|};

public type SemanticDiagnostic record {|
    *Diagnostic;
    SEMANTIC category = SEMANTIC;
|};

public type UnimplementedDiagnostic record {|
    *Diagnostic;
    UNIMPLEMENTED category = UNIMPLEMENTED;
|};

public function location(File file, Position startPos, Position? endPos = ()) returns Location {
    Range|Position range;
    if endPos != () {
        range = { startPos, endPos };
    }
    else {
        range = startPos;
    }
    return { file, range };
}

public function messageToString(Message m) returns string {
    if m is string {
        return m;
    }
    else {
        return messageFormat(m);
    }
}

// string arguments are quoted; numbers are not
public function messageFormat(Template t) returns string {
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

public function format(Diagnostic d) returns string[] {
    Location loc = d.location;
    string[] lines = [];
    string line = loc.file.filename();
    LineColumn lc = locationLineColumn(loc);
    // lineColumn returns 0-based lines currently
    line += ":" + lc[0].toString() + ":" + (lc[1] + 1).toString();
    line += ": error: " + d.message;
    lines.push(line);
    Range|Position range = loc.range;
    lines.push(range is Position ? loc.file.lineContent(range) : loc.file.lineContent(range.startPos));
    lines.push(caretLine(loc.file, range));
    return lines;
}

function caretLine(File file, Range|Position range) returns string {
    string carets;
    int startColumn;
    if range is Position {
        startColumn = file.lineColumn(range)[1];
        carets = "^";
    }
    else {
        int startLine;
        [startLine, startColumn] = file.lineColumn(range.startPos);
        var [endLine, endColumn] = file.lineColumn(range.endPos);
        int caretLen;
        if startLine == endLine {
            caretLen = endColumn - startColumn + 1;
        }
        else {
            // multiline err
            string line = file.lineContent(range.startPos);
            caretLen = line.length() - startColumn;
        }
        carets = lib:stringRepeat("^", caretLen);
    }
    string padding = lib:stringRepeat(" ", startColumn);
    return padding + carets;
}
