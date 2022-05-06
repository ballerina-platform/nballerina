import wso2/nballerina.types as t;
import wso2/nballerina.front.syntax as s;
import wso2/nballerina.front as f;

type TypeBuilder object {
    function semtype(int index) returns t:SemType;

    function typeToString(int index) returns string;

    function intType() returns int;

    function floatType() returns int;

    function stringType() returns int;

    function decimalType() returns int;

    function byteType() returns int;

    function neverType() returns int;

    function intConst(int value) returns int;

    function stringConst(string value) returns int;

    function intWidthSigned(int bits) returns int;

    function list(int[] members = [], int fixedLen = members.length(), int rest = -1) returns int;

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

    function list(int[] members = [], int fixedLen = members.length(), int rest = -1) returns int {
        t:SemType[] m = from var index in members select self.defns[index];
        t:SemType r = t:NEVER;
        if rest != -1 {
            r = self.defns[rest];
        }
        t:SemType t = (new t:ListDefinition()).define(self.cx.env, m, fixedLen, r);
        return self.push(t); 
    }

    function union(int i1, int i2) returns int {
        return self.push(t:union(self.defns[i1], self.defns[i2]));
    }

    function typeToString(int index) returns string {
        return self.defns[index].toString();
    }
}

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

    function init(t:Context cx) {
        self.cx = cx;
        self.defns = [];
        self.typeNames = table [];
        self.modulePart = { file: s:createSourceFile([], { filename: "" }), partIndex: 0, defns: self.defns, importDecls: [] };
    }

    function typeToString(int index) returns string {
        string [] list = [];
        self.tdToString(self.defns[index], list);
        return "\n".'join(...list);
    }

    function tdToString(s:TypeDefn defn, string[] list) {
        int[] dep = [];
        s:TypeDesc typeDesc = defn.td;

        var toList = function (s:TypeDesc[] tds, int[] d) returns string[] {
            string[] typeNames = [];
            foreach var td in tds {
                if td is s:TypeDescRef {
                    _ = self.findAndPush(td.typeName, d);
                    typeNames.push(td.typeName);
                }
                else {
                    panic error("xxxxxxxxf");
                }
            }
            return typeNames;
        };

        var constToString = function (s:ExtendedLiteralExpr expr) returns string {
            if expr is s:IntLiteralExpr {
                return expr.digits;
            }
            else if expr is s:LiteralExpr {
                return string `"${expr.value.toString()}"`;
            }
            panic error("Unsupported const expr");
        };

        if typeDesc is s:TypeDescRef {
            _ = self.findAndPush(typeDesc.typeName, dep);
            list.push(string `type ${defn.name} ${typeDesc.typeName}`);
        }
        else if typeDesc is s:TupleTypeDesc {
            string[] typeNames = toList(typeDesc.members, dep);
            if typeDesc.rest != () {
                typeNames.push(toList([<s:TypeDesc>typeDesc.rest], dep)[0] + "...");
            }
            list.push(string `type ${defn.name} [${", ".'join(...typeNames)}]`);
        }
        else if typeDesc is s:ArrayTypeDesc {
            string m = toList([<s:TypeDesc>typeDesc.member], dep)[0];
            s:SimpleConstExpr? r = typeDesc.dimensions.length() == 0 ? () : typeDesc.dimensions[0];
            string len = r == () ? "" : constToString(<s:ExtendedLiteralExpr>r);
            list.push(string `type ${defn.name} ${m}[${len}]`);
        }
        else if typeDesc is s:BinaryTypeDesc {
            string[] typeNames = toList(typeDesc.tds, dep);
            list.push((string `type ${defn.name} ${typeDesc.op}`).'join(...typeNames));
        }
        else if typeDesc is s:SingletonTypeDesc {
            list.push(string `type ${defn.name} ${constToString(typeDesc.valueExpr)}`);
        }

        foreach var index in dep {
            self.tdToString(self.defns[index], list);
        }
    }

    function find(string name) returns int? {
        record {int index; }? res = self.typeNames[name];
        if res == () {
            return ();
        }
        return res.index;
    }

    function findAndPush(string name, int[] indices) returns int? {
        int? index = self.find(name);
        if index is int {
            indices.push(index);
        }
        return index;
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
        s:Position namePos = startPos;
        string name = "T" + index.toString();
        s:Visibility vis = "public";
        s:TypeDefn defn = { startPos, endPos, name, td, namePos, vis, part: self.modulePart };
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

    function list(int[] members = [], int fixedLen = members.length(), int rest = -1) returns int {
        s:TypeDescRef[] m = [];
        foreach var index in members {
            m.push(self.createTypeDescRef(index));
        }
        s:TypeDescRef? restDesc = rest == -1 ? () : self.createTypeDescRef(rest);
        var [startPos, endPos] = self.calculatePosition();
        s:TypeDesc td;
        if m.length() != 0 || m.length() == 0 && rest == -1 {
            s:TupleTypeDesc tuple = { startPos, endPos, members: m, rest: restDesc };
            td = tuple;
        }
        else if m.length() == 0 && fixedLen == 0 {
            td = { startPos, endPos, member: <s:TypeDescRef>restDesc, dimensions: [()] };
        }
        else {
            s:ExtendedLiteralExpr size = { startPos, endPos, base: 10, digits: fixedLen.toString() };
            td = { startPos, endPos, member: <s:TypeDescRef>restDesc , dimensions: [size] };
        }
        return self.createTypeDef(td);
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
