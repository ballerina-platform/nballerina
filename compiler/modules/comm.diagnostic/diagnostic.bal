import wso2/nballerina.comm.lib;
public type Message string|Template;

public type Template object {
    *object:RawTemplate;
    public (readonly & string[]) strings;
    public (boolean|string|int|float|decimal)[] insertions;
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
    public function lineContent(Position|Range range) returns [string, string, string];
    public function qNameRange(Position startPos) returns Range;
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
    UNIMPLEMENTED = "unimplemented",
    INTERNAL = "internal"
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

public type InternalDiagnostic record {|
    *Diagnostic;
    INTERNAL category = INTERNAL;
|};

public function location(File file, Position|Range range) returns Location {
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

public function toString(Diagnostic d) returns string {
    return "\n".join(...format(d));
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
    string[] content = loc.file.lineContent(range);
    if content[1] == "" {
        panic error(string `error range ${lc.toString()} is empty in ${loc.file.filename()}`);
    }
    lines.push("".'join(...content));
    lines.push(caretLine(loc.file, range));
    return lines;
}

function caretLine(File file, Range|Position range) returns string {
    var [prefix, content, _] = file.lineContent(range);
    string[] paddingContent = [];
    foreach string:Char c in prefix {
        if c == "\t" {
            paddingContent.push(c);
        }
        else {
            paddingContent.push(" ");
        }
    }
    string padding = "".'join(...paddingContent);
    string carets = lib:stringRepeat("^", content.length());
    return padding + carets;
}
