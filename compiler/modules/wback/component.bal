import ballerina/io;
import ballerina/file;
import wso2/nballerina.print.wasm;
import wso2/nballerina.types as t;

public class Component {
    final wasm:Module module;
    private ExceptionTag[] exceptionTags = [];
    private string[] globals = [];
    map<StringRecord> segments = {};
    private int offset = 0;
    private RuntimeModule?[] rtModules = [commonMod];
    private string[] rtFunctions = [];
    private wasm:Expression? mainBody = ();
    private wasm:Type[] mainLocals = [];
    private string? mainMangledName = ();
    table<UsedMapAtomicType> key(semType) usedMapAtomicTypes = table [];
    table<UsedRecordSubtype> key(semType) usedRecordSubtypes = table [];

    function init() {
        self.module = new;
    }

    function addExceptionTag(ExceptionTag tag, wasm:Type? kind = ()) {
        if self.exceptionTags.indexOf(tag) == () {
            self.module.addTag(tag, kind);
            self.module.addTagExport(tag, tag);
            self.exceptionTags.push(tag);
        }
    }

    function mayBeAddStringRecord(string val, int[] surrogate) returns string {
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

    function mayBeAddRtFunction(string name) {
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

    public function finish() returns wasm:Wat[]|io:Error?|file:Error? {
        wasm:Module module = self.module;
        module.addGlobal("bal$err", { base: ERROR_TYPE, initial: "null" }, module.refNull(ERROR_TYPE));
        check addRttFunctions(module, self);
        wasm:Expression? mainBody = self.mainBody;
        string? mainMangledName = self.mainMangledName;
        if mainBody != () && mainMangledName != (){
            wasm:Expression extendedBody = self.module.block([initGlobals(module, self.segments, self.offset, self.usedMapAtomicTypes, self.usedRecordSubtypes), mainBody]);
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

function initGlobals(wasm:Module module, map<StringRecord> segments, int offset, table<UsedMapAtomicType> usedMapAtomicTypes, table<UsedRecordSubtype> usedRecordSubtypes) returns wasm:Expression {
    wasm:Expression[] body = [];
    wasm:Expression[] offsetExprs = [];
    string[] byteStrs = [];
    foreach StringRecord rec in segments {
        body.push(...rec.body);
        offsetExprs.push(rec.offsetExpr);
        byteStrs.push(rec.byteStr);
    }
    int pages = (offset / 65536) + 1;
    module.setMemory(pages, "memory", byteStrs, offsetExprs);
    foreach UsedMapAtomicType ty in usedMapAtomicTypes {
        t:SemType[] types = ty.semType.types;
        string symbol = ty.global;
        body.push(module.globalSet(symbol, ty.struct));
        foreach int i in 0..<types.length() {
            body.push(module.arraySet(MAP_TYPE_ARR, 
                                            module.structGet(MAPPING_DESC, "fieldTypes", module.refAs("ref.as_non_null", module.globalGet(symbol))), 
                                            module.addConst({ i32: i }),
                                            module.addConst({ i32: t:widenToUniformTypes(types[i]) })));
        }
    }
    foreach UsedRecordSubtype ty in usedRecordSubtypes {
        t:SemType[] types = ty.semType.types;
        string symbol = ty.global;
        body.push(module.globalSet(symbol, ty.struct));
        foreach int i in 0..<types.length() {
            body.push(module.arraySet(RECORD_SUBTYPE_FIELDS,
                                      module.structGet(RECORD_SUBTYPE, "fields", module.refAs("ref.as_non_null", module.globalGet(symbol))),
                                      module.addConst({ i32: i }), 
                                      module.structNew(RECORD_SUBTYPE_FIELD, [ty.names[i], module.addConst({ i32: t:widenToUniformTypes(types[i]) })])
                                     ));
        }
    }
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
                                component.mayBeAddRtFunction(exp);
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
                        mayBeAddFunction(component, line, rtFunctions);
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

function mayBeAddFunction(Component component, wasm:Wat line, string[] rtFunctions) {
    if line.includes("(call ") || line.includes("(ref.func ") {
        string identifier = getIdentifier(line);
        component.mayBeAddRtFunction(identifier);
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
