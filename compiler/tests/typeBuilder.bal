import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.front as f;

type TypeBuilderError error;
type TypeBuilder object {
    function semtype(int index) returns t:SemType;

    function typeToString(int index) returns string|TypeBuilderError;

    function intType() returns int;

    function floatType() returns int;

    function stringType() returns int;

    function decimalType() returns int;

    function byteType() returns int;

    function neverType() returns int;

    function intConst(int value) returns int;

    function stringConst(string value) returns int;

    function intWidthSigned(int bits) returns int;

    function xmlType() returns int;

    function xmlElementType() returns int;

    function xmlCommentType() returns int;

    function xmlProcessingInstructionType() returns int;

    function xmlTextType() returns int;

    function xmlSequenceType(int constituentType) returns int;

    function list(int[] members = [], int fixedLen = members.length(), int rest = -1) returns int;

    function mapping(Field[] fields = [], int rest = -1) returns int;

    function union(int i1, int i2) returns int;
};

class SemtypeBuilder {
    *TypeBuilder;

    t:Context cx;
    private t:SemType[] defns;
    private int? neverIndex = ();

    function init(t:Context cx) {
        self.cx = cx;
        self.defns = [];
    }

    function semtype(int index) returns t:SemType {
        return self.defns[index];
    }

    function push(t:SemType v) returns int {
        int index = self.defns.length();
        self.defns.push(v);
        return index;
    }

    function intType() returns int {
        return self.push(t:INT);
    }

    function floatType() returns int {
        return self.push(t:FLOAT);
    }

    function stringType() returns int {
        return self.push(t:STRING);
    }

    function decimalType() returns int {
        return self.push(t:DECIMAL);
    }

    function byteType() returns int {
        return self.push(t:BYTE);
    }

    function neverType() returns int {
        if self.neverIndex != () {
            return <int>self.neverIndex;
        }
        else {
            int index = self.push(t:NEVER);
            self.neverIndex = index;
            return index;
        }
    }

    function intConst(int value) returns int {
        return self.push(t:intConst(value));
    }

    function stringConst(string value) returns int {
        return self.push(t:stringConst(value));
    }

    function intWidthSigned(int bits) returns int {
        return self.push(t:intWidthSigned(bits));
    } 

    function xmlSequenceType(int constituentType) returns int {
        return self.push(t:xmlSequence(self.semtype(constituentType)));
    }

    function xmlType() returns int {
        return self.push(t:XML);
    }

    function xmlElementType() returns int {
        return self.push(t:XML_ELEMENT);
    }

    function xmlCommentType() returns int {
        return self.push(t:XML_COMMENT);
    }

    function xmlProcessingInstructionType() returns int {
        return self.push(t:XML_PI);
    }

    function xmlTextType() returns int {
        return self.push(t:XML_TEXT);
    }

    function list(int[] members = [], int fixedLen = members.length(), int rest = -1) returns int {
        t:SemType[] m = from var index in members select self.defns[index];
        t:SemType r = t:NEVER;
        if rest != -1 {
            r = self.defns[rest];
        }
        t:SemType t = t:defineListTypeWrapped(new t:ListDefinition(), self.cx.env, m, fixedLen, r);
        return self.push(t); 
    }

    function mapping(Field[] fields = [], int rest = -1) returns int {
        t:Field[] fs = from var { name, index, ro } in fields select { name, ty: self.defns[index], ro };
        t:SemType r = t:NEVER;
        if rest != -1 {
            r = self.defns[rest];
        }
        t:SemType t = t:defineMappingTypeWrapped(new t:MappingDefinition(), self.cx.env, fs, r);
        return self.push(t);
    }

    function union(int i1, int i2) returns int {
        return self.push(t:union(self.defns[i1], self.defns[i2]));
    }

    function typeToString(int index) returns string|TypeBuilderError {
        return self.defns[index].toString();
    }
}

type TypeDefnToStringTable table<record {| readonly string name; string defn; |}> key(name);

type Field record {|
    string name;
    int index;
    boolean ro = false;
|};

class AstBasedTypeDefBuilder {
    *TypeBuilder;

    final t:Context cx;
    final s:TypeDefn[] defns;
    final table<record { readonly string name; int index; }> key(name) typeNames;
    final s:ModulePart modulePart;
    private int? byteIndex = ();
    private int? decimalIndex = ();
    private int? floatIndex = ();
    private int? intIndex = ();
    private int? stringIndex = ();
    private int? neverIndex = ();
    private int? xmlIndex = ();
    private int? xmlElementIndex = ();
    private int? xmlCommentIndex = ();
    private int? xmlPiIndex = ();
    private int? xmlTextIndex = ();


    function init(t:Context cx) {
        self.cx = cx;
        self.defns = [];
        self.typeNames = table [];
        self.modulePart = { file: s:createSourceFile([], { filename: "" }), partIndex: 0, defns: self.defns, importDecls: [] };
    }

    function typeToString(int index) returns string|TypeBuilderError {
        TypeDefnToStringTable typeDefToString = table [];
        check self.tdToString(self.defns[index], typeDefToString);
        return "\n".'join(...from var def in typeDefToString select def.defn);
    }

    function tdToString(s:TypeDefn defn, TypeDefnToStringTable tab) returns TypeBuilderError? {
        int[] dependencies = [];
        s:TypeDesc typeDesc = defn.td;

        if typeDesc is s:TypeDescRef {
            tab.put({ name: defn.name, defn: s:typeDefnToString(defn) });
        }
        else if typeDesc is s:TupleTypeDesc {
            dependencies.push(...self.findIndices(...typeDesc.members));
            dependencies.push(...self.findIndices(typeDesc.rest));
            tab.put({ name: defn.name, defn: s:typeDefnToString(defn) });
        }
        else if typeDesc is s:ArrayTypeDesc {
            dependencies.push(...self.findIndices(typeDesc.member));
            tab.put({ name: defn.name, defn: s:typeDefnToString(defn) });
        }
        else if typeDesc is s:BinaryTypeDesc {
            dependencies.push(...self.findIndices(...typeDesc.tds));
            tab.put({ name: defn.name, defn: s:typeDefnToString(defn) });
        }
        else if typeDesc is s:SingletonTypeDesc {
            tab.put({ name: defn.name, defn: s:typeDefnToString(defn) });
        }
        else if typeDesc is s:MappingTypeDesc {
            s:FieldDesc[]? fieldDescs = typeDesc.fields;
            if fieldDescs != () {
                dependencies.push(...self.findIndices(...(from var { typeDesc: td } in fieldDescs select td)));
            }
            s:TypeDesc|boolean? rest = typeDesc.rest;
            if rest is s:TypeDesc {
                dependencies.push(...self.findIndices(rest));
            }
            tab.put({ name: defn.name, defn: s:typeDefnToString(defn) });
        }
        else if typeDesc is s:BuiltinTypeDesc {
            tab.put({ name: defn.name, defn: s:typeDefnToString(defn) });
        } 
        else {
            return error("Missing code to handle: " + (typeof typeDesc).toString());
        }

        foreach var index in dependencies {
            check self.tdToString(self.getDefinition(index), tab);
        }
    }

    function findIndex(string name) returns int? {
        record {int index; }? res = self.typeNames[name];
        if res == () {
            return ();
        }
        return res.index;
    }

    function findIndices(s:TypeDesc? ...tds) returns int[] {
        return from var td in tds
               where td is s:TypeDescRef
               let int? index = self.findIndex(td.typeName) 
               where index != () 
               select index;
    }

    private function len() returns int {
        return self.defns.length();
    }

    private function calculatePosition() returns [s:Position, s:Position] {
        int index = self.len();
        return [index, index];
    }

    private function push(s:TypeDefn defn) returns int {
        int index = self.len();
        self.defns.push(defn);
        self.typeNames.add({ name: defn.name, index });
        return index;
    }

    private function createTypeDef(s:TypeDesc td) returns int {
        int index = self.len();
        var [startPos, endPos] = self.calculatePosition();
        string name = "T" + index.toString();
        s:Visibility vis = "public";
        s:TypeDefn defn = { startPos, endPos, name, td, namePos: startPos, vis, part: self.modulePart };
        self.typeNames.add({ name: defn.name, index });
        self.defns.push(defn);
        return index;
    }

    private function createBuiltinTypeDesc(string name) returns s:BuiltinTypeDesc {
        var [startPos, endPos] = self.calculatePosition();
        return { startPos, endPos, builtinTypeName: <s:BuiltinTypeName>name };
    }

    private function createQualifiedTypeDescRef(string typeName, string? prefix = ()) returns s:TypeDescRef {
        var [startPos, endPos] = self.calculatePosition();
        s:Position qNamePos = startPos;
        return  { startPos, endPos, prefix, typeName, qNamePos };
    }

    private function createTypeDescRef(int index) returns s:TypeDescRef {
        return self.createQualifiedTypeDescRef(self.getName(index));
    }

    private function getName(int index) returns string {
        return self.defns[index].name;
    }

    private function getDefinition(int index) returns s:TypeDefn {
        return self.defns[index];
    }

    function semtype(int index) returns t:SemType {
        t:SemType? t = self.defns[index].semType;
        if t == () {
            error? ret = f:resolveModuleDefFromPart(self.cx, self.modulePart, self.getName(index));
            if ret != () {
                panic error("Error resolving types", ret);
            }
            return self.semtype(index);
        }
        else {
            return t;
        }
    }

    function byteType() returns int {
        int? index = self.byteIndex;
        if index == () {
            self.byteIndex = self.createTypeDef(self.createBuiltinTypeDesc("byte"));
        }
        return <int>self.byteIndex;
    }

    function decimalType() returns int {
        int? index = self.decimalIndex;
        if index == () {
            self.decimalIndex =  self.createTypeDef(self.createBuiltinTypeDesc("decimal"));
        }
        return <int>self.decimalIndex;
    }

    function floatType() returns int {
        int? index = self.floatIndex;
        if index == () {
            self.floatIndex = self.createTypeDef(self.createBuiltinTypeDesc("float"));
        }
        return <int>self.floatIndex;
    }

    function intConst(int value) returns int {
        return self.createConstTypeDef(value);
    }

    function intType() returns int {
        int? index = self.intIndex;
        if index == () {
            self.intIndex = self.createTypeDef(self.createBuiltinTypeDesc("int"));
        }
        return <int>self.intIndex;
    }

    function intWidthSigned(int bits) returns int {
        match bits {
            8 | 16 => {
                string name = "Signed" + bits.toString();
                return self.createTypeDef(self.createQualifiedTypeDescRef(name, prefix = "int"));
            }
        }
        panic error("Unsupported int subtype: " + bits.toString());
    }

    function xmlSequenceType(int constituentType) returns int {
        s:TypeDescRef constituentRef = self.createTypeDescRef(constituentType);
        var [startPos, endPos] = self.calculatePosition();
        s:XmlSequenceTypeDesc td = { startPos, endPos, pos:startPos, constituent: constituentRef };
        return self.createTypeDef(td);
    }

    function xmlType() returns int {
        int? index = self.xmlIndex;
        if index == () {
            var [startPos, endPos] = self.calculatePosition();
            s:BuiltinTypeDesc td = { startPos, endPos, builtinTypeName: "xml" };
            self.xmlIndex = self.createTypeDef(td);
        }
        return <int>self.xmlIndex;
    }

    function xmlElementType() returns int {
        if self.xmlElementIndex == () {
            s:TypeDescRef element = self.createQualifiedTypeDescRef("Element", "xml");
            self.xmlElementIndex = self.createTypeDef(element);
        }
        return <int>self.xmlElementIndex;
    }

    function xmlCommentType() returns int {
        if self.xmlCommentIndex == () {
            s:TypeDescRef comment = self.createQualifiedTypeDescRef("Comment", "xml");
            self.xmlCommentIndex = self.createTypeDef(comment);
        }
        return <int>self.xmlCommentIndex;
    }

    function xmlProcessingInstructionType() returns int {
        if self.xmlPiIndex == () {
            s:TypeDescRef pi = self.createQualifiedTypeDescRef("ProcessingInstruction", "xml");
            self.xmlPiIndex = self.createTypeDef(pi);
        }
        return <int>self.xmlPiIndex;
    }

    function xmlTextType() returns int {
        if self.xmlTextIndex == () {
            s:TypeDescRef pi = self.createQualifiedTypeDescRef("Text", "xml");
            self.xmlTextIndex = self.createTypeDef(pi);
        }
        return <int>self.xmlTextIndex;
    }

    function list(int[] members = [], int fixedLen = members.length(), int rest = -1) returns int {
        s:TypeDescRef[] m = from var index in members select self.createTypeDescRef(index);
        s:TypeDescRef? restDesc = rest == -1 ? () : self.createTypeDescRef(rest);
        var [startPos, endPos] = self.calculatePosition();
        s:TypeDesc td;
        // [T1, Tr...] or [Tr...]
        if m.length() != 0 || m.length() == 0 && rest == -1 {
            td = { startPos, endPos, members: m, rest: restDesc };
        }
        // T[]
        else if m.length() == 0 && fixedLen == 0 {
            td = { startPos, endPos, member: <s:TypeDescRef>restDesc, dimensions: [()] };
        }
        // T[N]
        else {
            s:ExtendedLiteralExpr size = { startPos, endPos, base: 10, digits: fixedLen.toString() };
            td = { startPos, endPos, member: <s:TypeDescRef>restDesc , dimensions: [size] };
        }
        return self.createTypeDef(td);
    }

    function mapping(Field[] fields = [], int rest = -1) returns int {
        s:FieldDesc[] fs = from var { name, index, ro } in fields select self.createField(name, index, ro);
        s:TypeDesc? r = ();
        if rest != -1 {
            r = self.createTypeDescRef(rest);
        }
        var [startPos, endPos] = self.calculatePosition();
        s:MappingTypeDesc td = { startPos, endPos, fields: fs, rest: r };
        return self.createTypeDef(td);
    }

    function createField(string name, int index, boolean ro) returns s:FieldDesc {
        var [startPos, endPos] = self.calculatePosition();
        s:TypeDescRef typeDesc = self.createTypeDescRef(index);
        return { startPos, endPos, name, typeDesc, ro };
    }

    function neverType() returns int {
        int? index = self.neverIndex;
        if index == () {
            self.neverIndex = self.createTypeDef(self.createBuiltinTypeDesc("never"));
        }
        return <int>self.neverIndex;
    }

    function stringConst(string value) returns int {
        return self.createConstTypeDef(value);
    }

    private function createConstTypeDef(string|int value) returns int {
        var [startPos, endPos] = self.calculatePosition();
        s:ExtendedLiteralExpr valueExpr;
        if value is string {
            valueExpr = { startPos, endPos, value };
        }
        else {
            valueExpr = { startPos, endPos, base: 10, digits: value.toString() };
        }
        s:SingletonTypeDesc desc = { startPos, endPos, valueExpr };
        return self.createTypeDef(desc);
    }

    function stringType() returns int {
        int? index = self.stringIndex;
        if index == () {
            self.stringIndex = self.createTypeDef(self.createBuiltinTypeDesc("string"));
        }
        return <int>self.stringIndex;
    }

    function union(int i1, int i2) returns int {
        var [startPos, endPos] = self.calculatePosition();
        s:TypeDesc[] tds = [self.createTypeDescRef(i1), self.createTypeDescRef(i2)];
        s:BinaryTypeDesc union = { startPos, endPos, opPos: [startPos], op: "|", tds };
        return self.createTypeDef(union);
    }
}
