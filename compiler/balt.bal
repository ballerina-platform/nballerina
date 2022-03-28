import wso2/nballerina.comm.err;
import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;
import ballerina/io;
import ballerina/file;

type TestKind "output" | "panic" | "error" | "parser-error" | "skip";

type BaltTestHeader record {|
    TestKind 'Test\-Case;
    string...;
|};

type BaltTestCase record {|
    int offset;
    BaltTestHeader header;
    string[] labels;
    string[] content;
|};

enum State {
    BOF,
    HEADER,
    LABEL,
    CONTENT
}

// " " is a good approximation
// http://www.bitdance.com/blog/2011/04/11_01_Email6_Rewriting_Header_Folding/
const CONTINUATION_WS = " ";

function compileBaltFile(string filename, string basename, string outDir, nback:Options nbackOptions, Options options) returns error? {
    BaltTestCase[] tests = check parseBalt(filename);
    io:println(filename);
    foreach var [i, t] in tests.enumerate() {
        if t.header.Test\-Case is "error"|"parser-error"|"skip"|"panic" || t.header["Fail-Issue"] != () {
            continue;
        }
        if !supportedTest(t) {
            continue;
        }
        io:println("\t", t.labels);
        string outBasename = check chooseBaltCaseOutputFilename(filename, t, i);
        string initFilename = check file:joinPath(outDir, outBasename) + "._init" + OUTPUT_EXTENSION;
        string outFilename = check file:joinPath(outDir, outBasename) + OUTPUT_EXTENSION;
        string[] lines = t.content;
        CompileContext cx = new(basename, check file:joinPath(outDir, outBasename), nbackOptions, options);
        check compileAndOutputModule(cx, DEFAULT_ROOT_MODULE_ID, [{ lines }], nbackOptions, options, outFilename, initFilename);
        string? expectOutDir = options.expectOutDir;
        string expectFilename = check file:joinPath(expectOutDir ?: outDir, outBasename) + ".txt";
        check io:fileWriteLines(expectFilename, expect(t.content));
    }
}

function supportedTest(BaltTestCase test) returns boolean {
    string[] unsupportedLabels = ["unary-minus", "unary-plus", "var", "optional-field-access-expr", "module-class-defn", "byte-array-literal",
                                  "value:toBalString", "defaultable-param", "method-call-expr", "table-constructor-expr",
                                  "value:toString", "raw-template-expr", "HexFloatingPointLiteral", "int:MIN_VALUE", "let-expr", "ternary-conditional-expr",
                                  "BacktickString", "xml", "main-return"];
    string[][] unsupportedGroups = [["member-access-expr","string"], ["optional-type", "string"], ["boolean-literal", "equality"], ["DecimalNumber", "equality"]];
    foreach string testLabel in test.labels {
        if unsupportedLabels.indexOf(testLabel, 0) is int {
            return false;
        }
    }
    foreach string[] group in unsupportedGroups {
        boolean foundAll = true;
        foreach string label in group {
            if test.labels.indexOf(label, 0) is () {
                foundAll = false;
                break;
            }
        }
        if foundAll {
            return false;
        }
    }
    return true;
}

function compileAndOutputModule(CompileContext cx, bir:ModuleId modId, front:SourcePart[] sources, nback:Options nbackOptions, OutputOptions outOptions, string? outFilename, string? initFilename) returns CompileError? {
    front:ResolvedModule mod = check processModule(cx, modId, sources, cx.outputFilename());
    check mod.validMain();
    check generateInitModule(cx, mod);
}

function compileModule(bir:ModuleId modId, front:SourcePart[] sources, nback:Options nbackOptions) returns [LlvmModule, LlvmModule]|CompileError {
    t:Env env = new;
    front:ScannedModule scanned = check front:scanModule(sources, modId);
    bir:Module birMod = check front:resolveModule(scanned, env, []);

    var [llMod, typeUsage] = check nback:buildModule(birMod, nbackOptions);
    LlvmModule initModule = check baltInitModule(env, {id: modId, typeUsage }, birMod);
    return [llMod, initModule];
}

function baltInitModule(t:Env env, nback:ProgramModule programMod, bir:Module birMod) returns LlvmModule|CompileError {
    return nback:buildInitModule(env, [programMod], {});
}

function parseBalt(string path) returns  BaltTestCase[]|io:Error|file:Error|err:Diagnostic {
    BaltTestCase[] tests = [];
    string[] lines = check io:fileReadLines(path);

    BaltTestHeader? maybeHeader = ();
    string? prevFiledBody  = ();
    string? prevFiledName  = ();
    // pr-todo:
    string[] content = ["import ballerina/io;"];
    string[] labels = [];
    int offset = 0;
    State s = BOF;
    foreach var [i, l] in lines.enumerate() {
        if l.startsWith("Test-Case:") {
            if s != BOF {
                BaltTestHeader header = <BaltTestHeader>maybeHeader;
                tests.push({ offset, header, content, labels });
            }
            s = HEADER;

            offset = i + 1;
            // pr-todo:
            content = ["import ballerina/io;"];
            labels = [];
            var [fName, fBody] = parseField(l);
            maybeHeader = {Test\-Case: <TestKind>fBody};
            prevFiledBody = fBody;
            prevFiledName = fName;
        }
        else if l.startsWith("Labels:") {
            var [_, fBody] = parseField(l);
            labels = parseLabels(fBody);
            s = LABEL;
        }
        else if s == LABEL {
            if l.trim() == "" {
                s = CONTENT;
            }
            else {
                labels.push(...parseLabels(l));
            }
        }
        else if s == HEADER {
            if l.trim() == "" {
                s = CONTENT;
            }
            else {
                BaltTestHeader header = <BaltTestHeader>maybeHeader;
                // possible improvement: support other white spaces
                if l.startsWith(" ") {
                    if prevFiledName == () ||  prevFiledBody == () {
                        panic err:impossible("folded field body without field");
                    }
                    header[<string>prevFiledName] = <string>prevFiledBody + l;
                } else {
                    var [fName, fBody] = parseField(l);
                    header[fName] = fBody;
                    prevFiledName = fName;
                    prevFiledBody = fBody;
                }
            }
        }
        else if s == CONTENT {
            content.push(l);
        }
        else {
            BOF _ = s;
            // xxx add file path
            return error("file should start with 'Test-Case:' header field");
        }
    }
    if s == HEADER {
        return error("header without content at EOF ");
    }
    else if s == BOF {
        return error("empty file");
    }
    else {
        BaltTestHeader header = <BaltTestHeader>maybeHeader;
        tests.push({offset, header, content, labels });
    }
    return tests;
}

function parseLabels(string s) returns string[] {
    string[] labels = [];
    string[] content = [];
    foreach string:Char c in s {
        if c == "," {
            labels.push("".'join(...content));
            content = [];
        }
        else if c == " " {
            continue;
        }
        else {
            content.push(c);
        }
    }
    if content.length() != 0 {
        labels.push("".'join(...content));
    }
    return labels;
}

function parseField(string s) returns [string, string] {
    int? i = s.indexOf(":");
    if i == () {
        panic error("Missing `:` in field : " + s);
    } else {
        string fieldName = s.substring(0, i);
        string fieldValue = s.substring(i + 1);
        return [fieldName, fieldValue.trim()];
    }
}

const OUTPUT_MARKER = "@output";
const ERROR_MARKER = "@error";
const PANIC_MARKER = "@panic";

function expect(string[] src) returns string[] {
    string[] expect = [];
    foreach var [i, l] in src.enumerate() {
        int? comment = l.indexOf("//");
        if comment == () {
            continue;
        }

        int begin = <int> comment + 2;
        int? output = l.indexOf(OUTPUT_MARKER, begin);
        if output != () {
            expect.push(l.substring(output + OUTPUT_MARKER.length() + 1));
        }
        int? err = l.indexOf(ERROR_MARKER, begin);
        if err != () {
            expect.push(ERROR_MARKER);
        }
        int? pnk = l.indexOf(PANIC_MARKER, begin);
        if pnk != () {
            string msg = l.substring(pnk + PANIC_MARKER.length() + 1);
            expect.push("panic: line " + (i + 1).toString() + ": " + msg);
        }
    }
    return expect;
}

function chooseBaltCaseOutputFilename(string filename, BaltTestCase t, int i) returns string|file:Error {
   string basename = check file:basename(filename);
   basename = basename.substring(0, basename.length()-5);
   return basename + pad4(i.toString()) + "L" + pad4(t.offset.toString()) + "-" + testKindToLetter(t.header.Test\-Case);
}

function testKindToLetter(TestKind k) returns string:Char {
    match k {
        "error" => {
            return "e";
        }
        "panic" => {
            return "p";
        }
        "output" => {
            return "v";
        }
        _ => {
            panic err:impossible();
        }
    }
}

function pad4(string s) returns string {
    int len = s.length() ;
    if len < 4 {
        return "0000".substring(len) + s;
    }
    return s;
}
