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
    public function getRange(Range|Position range) returns string[];
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
    string [] errMessage = [];
    string line = loc.file.filename();
    LineColumn lc = locationLineColumn(loc);
    // lineColumn returns 0-based lines currently
    line += ":" + lc[0].toString() + ":" + (lc[1] + 1).toString();
    line += ": error: " + d.message;
    errMessage.push(line);
    Range|Position range = loc.range;
    errMessage.push(...fileLines(loc.file, range));
    return errMessage;
}

function fileLines(File file, Range|Position range) returns string[] {
    string[] lines = file.getRange(range);
    string[] errMessage = [];
    if range is Position {
        errMessage.push(lines[0]);
        int column = file.lineColumn(range)[1];
        errMessage.push(caretLine(column));
    }
    else {
        if lines.length() == 1 {
            errMessage.push(lines[0]);
            int startColumn = file.lineColumn(range.startPos)[1];
            int endColumn = file.lineColumn(range.endPos)[1];
            int caretLen = endColumn - startColumn + 1;
            errMessage.push(caretLine(startColumn, caretLen));
        }
        else {
            // multiline err
            errMessage.push(lines[0]);
            var [startLine, startColumn] = file.lineColumn(range.startPos);
            var [endLine, endColumn] = file.lineColumn(range.endPos);
            errMessage.push(caretLine(startColumn, lines[0].length() - startColumn));
            foreach int i in startLine+1 ..< endLine {
                string line = lines[i-(startLine+1)];
                errMessage.push(line);
                errMessage.push(caretLine(0, line.length()));
            }
            errMessage.push(lines[lines.length()-1]);
            errMessage.push(caretLine(0, endColumn));
        }
    }
    return errMessage;
}

function caretLine(int startIndex, int len = 1) returns string {
    string padding = "".'join(from var _ in 0 ..<startIndex select " ");
    string carets = "".'join(from var _ in 0 ..<len select "^");
    return padding + carets;
}
