// Convert from json into a SemType
// Format is defined in schema.bal
import semtype.core;

public type Path int[];

public type ParseDetail record {
    Path path;
};

public type ParseError error<ParseDetail>;

type Binding NameBinding|DefBinding;

type NameBinding record {|
    string name;
    json desc;
    Path path;
    Binding? next;
|};

type DefBinding record {|
   json desc;
   core:Definition def;
   Binding? next;
|};

public function parse(core:Env env, json j) returns core:SemType|ParseError {
    return parseType(env, (), j, []);
} 

function parseType(core:Env env, Binding? b, json j, Path path) returns core:SemType|ParseError {
    match j {
        Nil => { return core:NIL; }
        Boolean => { return core:BOOLEAN; }
        Int => { return core:INT; }
        Byte => { return core:BYTE; }
        "int8" => { return core:intWidthSigned(8); }
        "int16" => { return core:intWidthSigned(16); }
        "int32" => { return core:intWidthSigned(32); }
        "uint8" => { return core:intWidthUnsigned(8); }
        "uint16" => { return core:intWidthUnsigned(16); }
        "uint32" => { return core:intWidthUnsigned(32); }
        Float => { return core:FLOAT; }
        Decimal => { return core:DECIMAL; }
        String => { return core:STRING; }
        "error" => { return core:ERROR; }
        Typedesc => { return core:TYPEDESC; }
        Handle => { return core:HANDLE; }
        Xml => { return core:XML; } 
        Json => { return core:createJson(env); }
        Any => { return core:ANY; }
        Never => { return core:NEVER; }
        ReadOnly => { return core:READONLY; }
        true => { return core:booleanConst(true); }
        false => { return core:booleanConst(false); }
        // Should be able to use match patterns here
        // but there's a compiler bug #29041
        var js if js is json[] => {
            if js.length() == 0 {
                path.push(0);
                return parseError("empty array", path);
            }
            else {
                json k = js[0];
                if !(k is string) {
                    return parseError("expected array to begin with string", path, 0);
                }
                else {
                    return parseCompoundType(env, b, k, js, path);
                }
            }
           
        }
        var s if s is string => {
            return parseError("unrecognized keyword '" + s + "'", path);
        }
    }
    return parseError("unrecognized type syntax", path);  
}

// jlist is a list starting with k
function parseCompoundType(core:Env env, Binding? b, string k, json[] jlist, Path parent) returns core:SemType|ParseError {
    match k {
        "|" => {
            core:SemType[] v = check parseTypes(env, b, jlist, parent, 1);
            return reduce(v, core:union, core:NEVER);
        }
        "&" => {
            core:SemType[] v = check parseTypes(env, b, jlist, parent, 1);
            return reduce(v, core:intersect, core:TOP);
        }
        "tuple" => {
            core:SemType? s = lookupDef(env, b, jlist);
            if !(s is ()) {
                return s;
            }
            core:ListDefinition def = new;
            core:SemType[] members = check parseTypes(env, consDefBinding(jlist, def, b), jlist, parent, 1);
            return def.define(env, members, core:NEVER);
        }
        "list" => {
            core:SemType? s = lookupDef(env, b, jlist);
            if !(s is ()) {
                return s;
            }
            core:ListDefinition def = new;
            core:SemType[] members = check parseTypes(env, consDefBinding(jlist, def, b), jlist, parent, 1);
            core:SemType rest;
            if members.length() == 0 {
                rest = core:TOP;
            }
            else {
                rest = members.pop();
            }
            return def.define(env, members, rest);
        }
        "record" => {
            core:SemType? s = lookupDef(env, b, jlist);
            if !(s is ()) {
                return s;
            }
            core:MappingDefinition def = new;
            core:Field[] fields = check parseFields(env, consDefBinding(jlist, def, b), jlist, parent, 1);
            return def.define(env, fields, core:NEVER);
        }
        "map" => {
            core:SemType? s = lookupDef(env, b, jlist);
            if !(s is ()) {
                return s;
            }
            if jlist.length() == 1 {
                return parseError("'map' must be followed by a type", parent, 0);
            }
            core:MappingDefinition def = new;
            Binding? mb = consDefBinding(jlist, def, b);
            core:SemType rest = check parseType(env, mb, jlist[1], pathAppend(parent, 1));
            core:Field[] fields = check parseFields(env, mb, jlist, parent, 2);
            return def.define(env, fields, rest);
        }
        "function" => {
            core:SemType? s = lookupDef(env, b, jlist);
            if !(s is ()) {
                return s;
            }
            core:FunctionDefinition def = new(env);
            core:SemType[] v = check parseTypes(env, consDefBinding(jlist, def, b), jlist, parent, 1);
            if v.length() == 0 {
                return core:FUNCTION;
            }
            core:SemType ret = v.pop();
            return def.define(env, core:tuple(env, ...v), ret);
        }
        "error" => {
            if jlist.length() != 2 {
                return parseError("'error' must be followed by a string", parent, 0);
            }
            core:SemType detail = check parseType(env, b, jlist[1], pathAppend(parent, 1));
            return core:errorDetail(detail);
        }
        "string" => {
            if jlist.length() != 2 {
                return parseError("'string' must be followed by a string", parent, 0);
            }
            final json value = jlist[1];
            if !(value is string) {
                return parseError("'string' must be followed by a string", parent, 1);
            }
            else {
                return core:stringConst(value);
            }
        }
        "int" => {
            if jlist.length() != 2 {
                return parseError("'int' must be followed by a string", parent, 0);
            }
            final json value = jlist[1];
            final int intValue;
            if value is int {
                intValue = value;
            }
            else if value is string {
                var res = int:fromString(value);
                if res is error {
                    return parseError("not an integer", parent, 1);
                }
                else {
                    intValue = res;
                }
            }
            else {
                return parseError("'int' must be followed by a string", parent, 1);
            }
            return core:intConst(intValue);
        }
        "rec" => {
            if jlist.length() == 1 {
                return parseError("'rec' must be followed by a string and a type", parent, 0);
            }
            final json name = jlist[1];
            if !(name is string) {
                return parseError("'rec' must be followed by a string", parent, 1);
            }
            else {
                if jlist.length() == 3 {
                    return parseRec(env, b, name, jlist[2], pathAppend(parent, 2));
                }
                else {
                    return parseError("'rec' must be followed by two operands",
                                      parent, jlist.length() > 3 ? 3 : 1);
                }
            }
        }
        "ref" => {
            if jlist.length() != 2 {
                return parseError("'ref' must be followed by a string", parent, 0);
            }
            final json name = jlist[1];
            if !(name is string) {
                return parseError("'ref' must be followed by a string", parent, 1);
            }
            else {
                var res = lookupBinding(b, name);
                if res is () {
                    return parseError("no binding for '" + name + "'", parent, 1);
                }
                else if res is "loop" {
                    return parseError("invalid recursion for '" + name + "'", parent, 1);
                }
                else {
                    var [j, path] = res;
                    return parseType(env, b, j, path);
                }
            }
        }
    }
    return parseError("unrecognized keyword '" + k + "'", pathAppend(parent, 0));
}

function consDefBinding(json desc, core:Definition def, Binding? next) returns Binding? {
    if next is () {
        return next;
    }
    DefBinding db = { desc, def, next };
    return db;
}

function parseFields(core:Env env, Binding? b, json[] jlist, Path parent, int startIndex) returns core:Field[]|ParseError {
    core:Field[] fields = [];
    foreach int i in startIndex ..< jlist.length() {
        core:Field f = check parseField(env, b, jlist[i], pathAppend(parent, i));
        fields.push(f);
    }
    return fields;
}


function parseField(core:Env env, Binding? b, json j, Path path) returns core:Field|ParseError {
    if !(j is json[]) || j.length() != 2 {
        return parseError("field must be 2-tuple", path);
    }
    else {
        json name = j[0];
        if !(name is string) {
            return parseError("first member of field must be a string", path, 0);
        }
        else {
            core:SemType t = check parseType(env, b, j[1], pathAppend(path, 1));
            return [name, t];
        }
    }
}

function lookupBinding(Binding? b, string name) returns [json, Path]|"loop"? {
    Binding? tem = b;
    boolean loop = true;
    while true {
        if tem is () {
           break;
        }
        else if tem is NameBinding {
            if tem.name == name {
                if loop {
                    return "loop";
                }
                return [tem.desc, tem.path];
            }
            tem = tem.next;
        }
        else {
            loop = false;
            tem = tem.next;
        }
    }
    return ();
}

function lookupDef(core:Env env, Binding? b, json desc) returns core:SemType? {
    Binding? tem = b;
    while true {
        if tem is () {
            break;
        }
        else if tem is DefBinding {
            if tem.desc === desc {
                return tem.def.getSemType(env);
            }
            tem = tem.next;
        }
        else {
            tem = tem.next;
        }
    }
    return ();
}

function parseRec(core:Env env, Binding? b, string name, json t, Path path) returns core:SemType|ParseError {
    NameBinding nb = { name, next: b, desc: t, path };
    return parseType(env, nb, t, path);
}

function parseTypes(core:Env env, Binding? b, json[] js, Path parent, int startIndex) returns core:SemType[]|ParseError {
    core:SemType[] s = [];
    foreach var i in startIndex ..< js.length() {
        core:SemType t = check parseType(env, b, js[i], pathAppend(parent, i));
        s.push(t);
    }
    return s;
}

function parseError(string message, Path path, int? step = ()) returns ParseError {
    if !(step is ()) {
        path.push(step);
    }
    return error ParseError(message, path=path);
}

function reduce(core:SemType[] v, function (core:SemType, core:SemType) returns core:SemType binary, core:SemType initial) returns core:SemType {
    match v.length() {
        0 => { return initial; }
        1 => { return v[0]; }
    }
    core:SemType result = binary(v[0], v[1]);
    foreach int i in 2 ..< v.length() {
        result = binary(result, v[i]);
    }
    return result;
}

function pathAppend(Path parent, int index) returns Path {
    Path path = parent.clone();
    path.push(index);
    return path;
}
