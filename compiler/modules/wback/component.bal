import ballerina/io;
import ballerina/file;
import wso2/nballerina.bir;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

const TYPE_TEST = 0;
const INHERENT_TYPE = 1;

type Usage TYPE_TEST|INHERENT_TYPE;

type DecimalRecord record {
    readonly decimal value;
    string global;
    wasm:Expression offsetExpr;
    string byteStr;
    wasm:Expression[] body;
};

public class Component {
    final wasm:Module module;
    private ExceptionTag[] exceptionTags = [];
    private string[] globals = [];
    map<StringRecord> segments = {};
    private table<DecimalRecord> key(value) decimalConsts = table [];
    private int offset = 0;
    private RuntimeModule?[] rtModules = [commonMod];
    private string[] rtFunctions = [];
    private wasm:Expression? mainBody = ();
    private wasm:Type[] mainLocals = [];
    private t:Context typeContext;
    private string? mainMangledName = ();
    table<UsedSemType> key(semType)[2] usedSemTypes = [table [], table[]];
    table<ComplexTypeDefn> key(semType) complexTypeDefns = table [];
    table<InherentTypeDefn> key(semType)[2] inherentTypeDefns = [table [], table[]];
    table<SubtypeDefn> key(typeCode, semType) subtypeDefns = table [];
    boolean inherentTypesComplete = false;
    SubtypeStruct[] subtypeStructs = [];
    wasm:Expression[] types = [];

    function init(bir:Module birMod) {
        self.module = new;
        self.typeContext = birMod.getTypeContext();
        self.rtModules[typeMod.priority] = typeMod;
    }

    function addExceptionTag(ExceptionTag tag, wasm:Type? kind = ()) {
        if self.exceptionTags.indexOf(tag) == () {
            self.module.addTag(tag, kind);
            self.module.addTagExport(tag, tag);
            self.exceptionTags.push(tag);
        }
    }

    function maybeAddStringRecord(string val, int[] surrogate) returns string {
        StringRecord? rec = self.segments[val];
        if rec != () {
            return rec.global;
        }
        int numStrings = self.segments.keys().length();
        string global = "bal$str" + numStrings.toString();
        int length = val.toBytes().length();
        StringRecord newRec = buildGlobalString(self.module, self, val, global, surrogate, self.offset, length);
        self.segments[val] = newRec; 
        self.offset += length;
        return global;
    }

    function maybeAddDecimalRecord(decimal val) returns string {
        DecimalRecord? rec = self.decimalConsts[val];
        if rec != () {
            return rec.global;
        }
        int numDecimal = self.decimalConsts.keys().length();
        string global = "bal$dec" + numDecimal.toString();
        int length = val.toString().toBytes().length();
        DecimalRecord newRec = buildGlobalDecimal(self.module, self, val, global, self.offset, length);
        self.decimalConsts.add(newRec); 
        self.offset += length;
        return global;
    }

    function getTypeContext() returns t:Context {
        return self.typeContext;
    }
    
    function maybeAddRtFunction(string name) {
        if self.rtFunctions.indexOf(name) == () {
            self.rtFunctions.push(name);
        }
    }

    function addRtModule(RuntimeModule rtModule) {
        self.rtModules[rtModule.priority] = rtModule;
    }

    function getRtModules() returns RuntimeModule?[] {
        return self.rtModules;
    }

    function getRtFunctions() returns string[] {
        return self.rtFunctions;
    }

    function getUsedSemType(t:SemType semType, Usage usage) returns UsedSemType {
        UsedSemType? used = self.usedSemTypes[usage][semType];
        if used == () {
            string global = mangleTypeSymbol(self.usedSemTypes[INHERENT_TYPE].length() + self.usedSemTypes[TYPE_TEST].length());
            UsedSemType t = {
                global,
                semType
            };
            self.usedSemTypes[usage].add(t);
            return t;
        }
        else {
            return used;
        }
    }

    public function finish() returns wasm:Wat[]|io:Error?|file:Error? {
        wasm:Module module = self.module;
        module.addGlobal("bal$err", { base: ERROR_TYPE, initial: "null" }, module.refNull(ERROR_TYPE));
        self.types.push(...buildTypes(module, self, self.usedSemTypes));
        check addRttFunctions(module, self);
        wasm:Expression? mainBody = self.mainBody;
        string? mainMangledName = self.mainMangledName;
        if mainBody != () && mainMangledName != (){
            wasm:Expression extendedBody = self.module.block([initGlobals(module, self.segments, self.decimalConsts, self.offset, self.types, self.subtypeStructs, self.complexTypeDefns), mainBody]);
            module.addFunction(mainMangledName, [], "None", self.mainLocals, extendedBody);
        }
        return module.finish();
    }

    function setMainFunction(string mainMangledName, wasm:Expression body, wasm:Type[] locals) {
        self.mainBody = body;
        self.mainLocals = locals;
        self.mainMangledName = mainMangledName;
    }

}

function initGlobals(wasm:Module module, map<StringRecord> segments, table<DecimalRecord> key(value) decimalConsts, int offset, wasm:Expression[] types, SubtypeStruct[] structs, table<ComplexTypeDefn> key(semType) complexTypeDefns) returns wasm:Expression {
    wasm:Expression[] body = [];
    wasm:Expression[] offsetExprs = [];
    string[] byteStrs = [];
    foreach StringRecord rec in segments {
        body.push(...rec.body);
        offsetExprs.push(rec.offsetExpr);
        byteStrs.push(rec.byteStr);
    }
    foreach DecimalRecord rec in decimalConsts {
        body.push(...rec.body);
        offsetExprs.push(rec.offsetExpr);
        byteStrs.push(rec.byteStr);
    }
    int pages = (offset / 65536) + 1;
    module.setMemory(pages, "memory", byteStrs, offsetExprs);
    foreach SubtypeStruct struct in structs {
        body.push(...struct.values);
    }
    foreach ComplexTypeDefn defn in complexTypeDefns {
        body.push(...defn.body);
    }
    body.push(...types);
    return module.block(body);
}

function addRttFunctions(wasm:Module module, Component component) returns io:Error?|file:Error? {
    RuntimeModule?[] rtModules = component.getRtModules();
    string[] rtFunctions = component.getRtFunctions();
    map<wasm:Wat[]> sectionData = {};
    map<wasm:Wat[]> sectionIdentifiers = {};
    map<wasm:Wat[]> functions = {};
    string absPath = check file:getAbsolutePath("");
    string[] dirs = check file:splitPath(absPath);
    RuntimeModule[] filtered = [];
    foreach RuntimeModule? mod in rtModules {
        if mod != () {
            filtered.push(mod);
        }
    }
    string? baseDir = ();
    foreach int i in 0..<dirs.length() {
        int cur = flipIndex(i, dirs.length());
        if dirs[cur].includes("nballerina") {
            baseDir = dirs[cur];
            break;
        }
    }
    if baseDir != () {
        int index = <int>absPath.lastIndexOf(baseDir);
        string basePath = absPath.substring(0, index + baseDir.length() + 1);
        foreach RuntimeModule mod in filtered {
            string path = check file:joinPath(basePath, "wrun", "wat", mod.file);
            wasm:Wat[] wat = check io:fileReadLines(path);
            string? identifier = ();
            string[] content = [];
            foreach wasm:Wat line in wat {
                wasm:Wat trimmed = line.trim();
                int len = trimmed.length();
                if len > 2 && trimmed.substring(0, 2) == ";;" {
                    if identifier is wasm:Section {
                        wasm:Wat[]? data = sectionData[identifier];
                        if data != () {
                            data.push(...content);
                        }
                        else {
                            sectionData[identifier] = content;
                        }
                        if identifier is "export" {
                            foreach wasm:Wat item in content {
                                string exp = getIdentifier(item);
                                component.maybeAddRtFunction(exp);
                            }
                        }
                    }
                    else if identifier != () && (rtFunctions.indexOf(identifier) != ()) {
                        functions[identifier] = content;
                    }
                    identifier = trimmed.substring(3);
                    if identifier == "end" {
                        break;
                    }
                    content = [];
                }
                else if identifier is wasm:Section {
                    wasm:Wat[]? identifiers = sectionIdentifiers[identifier];
                    string iden = getIdentifier(line);
                    if identifiers != () {
                        if identifiers.indexOf(iden) == () {
                            identifiers.push(iden);
                            content.push(line);
                        }
                    }
                    else {
                        sectionIdentifiers[identifier] = [iden];
                        content.push(line);
                    }
                }
                else if identifier != () {
                    if rtFunctions.indexOf(identifier) != () {
                        maybeAddFunction(component, line, rtFunctions);
                    }
                    content.push(line);
                }
            }
        }
        foreach string key in sectionData.keys() {
                module.addSection(<wasm:Section>key, sectionData.get(key));
        }
        foreach string key in functions.keys() {
                module.setRttFuncs(functions.get(key));
        }
    }
    else {
        panic error("invoke inside nballerina directory");
    }
    
}

function maybeAddFunction(Component component, wasm:Wat line, string[] rtFunctions) {
    if line.includes("(call ") || line.includes("(ref.func ") {
        string identifier = getIdentifier(line);
        component.maybeAddRtFunction(identifier);
    }
}

function getIdentifier(wasm:Wat line) returns string {
    int index = <int>line.indexOf("$");
    string sub = line.substring(index);
    int? nextCloseParenthesis = sub.indexOf(")");
    int? nextSpace = sub.indexOf(" ");
    int end; 
    if nextSpace != () && nextCloseParenthesis != () {
        end = nextSpace > nextCloseParenthesis ? nextCloseParenthesis : nextSpace;
    }
    else if nextSpace != () {
        end = nextSpace;
    }
    else if nextCloseParenthesis != () {
        end = nextCloseParenthesis;
    }
    else {
        end = sub.length();
    }
    return sub.substring(0, end);
}
