import wso2/nballerina.err;
import wso2/nballerina.types as t;
import wso2/nballerina.bir;
import wso2/nballerina.front;
import wso2/nballerina.nback;
import ballerina/io;
import ballerina/file;

type TestKind "output" | "panic" | "error";

type BaltTestHeader record {|
    TestKind 'Test\-Case;
    string...;
|};

type BaltTestCase record {|
    int offset;
    BaltTestHeader header;
    string[] content;
|};

enum State {
    BOF,
    HEADER,
    CONTENT
}

// " " is a good approximation
// http://www.bitdance.com/blog/2011/04/11_01_Email6_Rewriting_Header_Folding/
const CONTINUATION_WS = " ";

function compileBaltFile(string filename, string outDir, nback:Options nbackOptions, Options options) returns error? {
    BaltTestCase[] tests = check parseBalt(filename);
    foreach var [i, t] in tests.enumerate() {
        if t.header.Test\-Case == "error" || t.header["Fail-Issue"] != () {
            continue;
        }
        string outBasename = chooseBaltCaseOutputFilename(t, i);
        string outFilename = check file:joinPath(outDir, outBasename) + OUTPUT_EXTENSION;
        string[] lines = t.content;
        check compileAndOutputModule(DEFAULT_ROOT_MODULE_ID, [{ lines }], nbackOptions, options, outFilename);
        string? expectOutDir = options.expectOutDir;
        string expectFilename = check file:joinPath(expectOutDir ?: outDir, outBasename) + ".txt";
        check io:fileWriteLines(expectFilename, expect(t.content));
    }
}

function compileAndOutputModule(bir:ModuleId modId, front:SourcePart[] sources, nback:Options nbackOptions, OutputOptions outOptions, string? outFilename) returns CompileError? {
    LlvmModule llMod = check compileModule(modId, sources, nbackOptions);
    if outFilename != () {
        check outputModule(llMod, outFilename, outOptions);
    }
}

function compileModule(bir:ModuleId modId, front:SourcePart[] sources, nback:Options nbackOptions) returns LlvmModule|CompileError {
    t:Env env = new;
    front:ScannedModule scanned = check front:scanModule(sources, modId);
    bir:Module birMod = check front:resolveModule(scanned, env, []);
    LlvmContext context = new;
    var [llMod, _] = check nback:buildModule(birMod, context, nbackOptions);
    return llMod;
}

function parseBalt(string path) returns  BaltTestCase[]|io:Error|file:Error|err:Any {
    BaltTestCase[] tests = [];
    string[] lines = check io:fileReadLines(path);

    BaltTestHeader? maybeHeader = ();
    string? prevFiledBody  = ();
    string? prevFiledName  = ();
    string[] content = [];
    int offset = 0;

    State s = BOF;
    foreach var [i, l] in lines.enumerate() {
        if l.startsWith("Test-Case:") {
            if s != BOF {
                BaltTestHeader header = <BaltTestHeader>maybeHeader;
                tests.push({ offset, header, content });
            }
            s = HEADER;

            offset = i + 1;
            content = [];
            var [fName, fBody] = parseField(l);
            maybeHeader = {Test\-Case: <TestKind>fBody};
            prevFiledBody = fBody;
            prevFiledName = fName;
        }
        else if s == HEADER {
            if l == "" {
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
        else if s == BOF {
            // xxx add file path
            return error("file should start with 'Test-Case:' header field");
        }
        else {
            panic err:impossible("balt parser illegal state");
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
        tests.push({offset, header, content});
    }
    return tests;
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
            expect.push(l.substring(output + OUTPUT_MARKER.length()).trim());
        }
        int? err = l.indexOf(ERROR_MARKER, begin);
        if err != () {
            expect.push(ERROR_MARKER);
        }
        int? pnk = l.indexOf(PANIC_MARKER, begin);
        if pnk != () {
            string msg = l.substring(pnk + PANIC_MARKER.length()).trim();
            expect.push("panic: line " + (i + 1).toString() + ": " + msg);
        }
    }
    return expect;
}

function chooseBaltCaseOutputFilename(BaltTestCase t, int i) returns string {
   return pad4(i.toString()) + "L" + pad4(t.offset.toString()) + "-" + testKindToLetter(t.header.Test\-Case);
}

// JBUG: can't use Char gives "'string' value 'x' cannot be converted to 'lang.string:Char'
function testKindToLetter(TestKind k) returns string {
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
