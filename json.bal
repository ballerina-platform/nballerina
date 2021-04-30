// Convert from json into a SemType
// Json format is defined in xtype.bal

type JsonPath int[];

type JsonParseDetail record {
    JsonPath path;
};

type JsonParseError error<JsonParseDetail>;

type Binding NameBinding|RecBinding;

type NameBinding record {|
    string name;
    json desc;
    JsonPath path;
    Binding? next;
|};

type RecBinding record {|
   json desc;
   SemType semType;
   Binding? next;
|};

function fromJson(Env env, json j) returns SemType|JsonParseError {
    return parseXType(env, (), j, []);
} 

function parseXType(Env env, Binding? b, json j, JsonPath path) returns SemType|JsonParseError {
    match j {
        XNil => { return NIL; }
        XInt => { return INT; }
        XString => { return STRING; }
        XAny => { return TOP; }
        XNever => { return NEVER; }
        XReadOnly => { return READONLY; }
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
                    return parseCompoundXType(env, b, k, js, path);
                }
            }
           
        } 
    }
    return parseError("unrecognized type syntax", path);  
}

// jlist is a list starting with k
function parseCompoundXType(Env env, Binding? b, string k, json[] jlist, JsonPath parent) returns SemType|JsonParseError {
    match k {
        "|" => {
            SemType[] v = check parseXTypes(env, b, jlist, parent, 1);
            return reduce(v, union, NEVER);
        }
        "&" => {
            SemType[] v = check parseXTypes(env, b, jlist, parent, 1);
            return reduce(v, intersect, TOP);
        }
        "tuple" => {
            if b is () {
                SemType[] v = check parseXTypes(env, b, jlist, parent, 1);
                return tuple(env, ...v);
            }
            else {
                SemType? s = lookupRec(b, jlist);
                if !(s is ()) {
                    return s;
                }
                else {
                    SemType|error result =
                        recursiveTupleParse(env, (e, ref) => parseXTypes(env, <RecBinding>{ desc: jlist, semType: ref, next: b }, jlist, parent, 1).cloneReadOnly());
                    if result is error {
                        return <JsonParseError>result;
                    }
                    else {
                        return result;
                    }
                }

            }
           
        }
        "record" => {
            if b is () {
                Field[] fields = check parseXFields(env, b, jlist, parent, 1);
                return mapping(env, ...fields);
            }
            else {
                SemType? s = lookupRec(b, jlist);
                if !(s is ()) {
                    return s;
                }
                else {
                    SemType|error result =
                        recursiveMappingParse(env, (e, ref) => parseXFields(env, <RecBinding>{ desc: jlist, semType: ref, next: b }, jlist, parent, 1));
                    if result is error {
                        return <JsonParseError>result;
                    }
                    else {
                        return result;
                    }
                }
            }
        }
        "function" => {
            SemType[] v = check parseXTypes(env, b, jlist, parent, 1);
            if v.length() == 0 {
                return FUNCTION;
            }
            SemType ret = v.pop();
            return func(env, tuple(env, ...v), ret);
        }
        "const" => {
            if jlist.length() != 2 {
                return parseError("'const' must be followed by a string", parent, 0);
            }
            final json value = jlist[1];
            if !(value is string) {
                return parseError("'const' must be followed by a string", parent, 1);
            }
            else {
                return stringConst(value);
            }
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
                    return parseXRec(env, b, name, jlist[2], pathAppend(parent, 2));
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
                    return parseXType(env, b, j, path);
                }
            }
        }
    }
    return parseError("unrecognized keyword '" + k + "'", pathAppend(parent, 0));
}

function parseXFields(Env env, Binding? b, json[] jlist, JsonPath parent, int startIndex) returns Field[]|JsonParseError {
    Field[] fields = [];
    foreach int i in startIndex ..< jlist.length() {
        Field f = check parseXField(env, b, jlist[i], pathAppend(parent, i));
        fields.push(f);
    }
    return fields;
}


function parseXField(Env env, Binding? b, json j, JsonPath path) returns Field|JsonParseError {
    if !(j is json[]) || j.length() != 2 {
        return parseError("field must be 2-tuple", path);
    }
    else {
        json name = j[0];
        if !(name is string) {
            return parseError("first member of field must be a string", path, 0);
        }
        else {
            SemType t = check parseXType(env, b, j[1], pathAppend(path, 1));
            return [name, t];
        }
    }
}

function lookupBinding(Binding? b, string name) returns [json, JsonPath]|"loop"? {
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

function lookupRec(Binding? b, json desc) returns SemType? {
    Binding? tem = b;
    while true {
        if tem is () {
            break;
        }
        else if tem is RecBinding {
            if tem.desc === desc {
                return tem.semType;
            }
            tem = tem.next;
        }
        else {
            tem = tem.next;
        }
    }
    return ();
}

function parseXRec(Env env, Binding? b, string name, json t, JsonPath path) returns SemType|JsonParseError {
    NameBinding nb = { name, next: b, desc: t, path };
    return parseXType(env, nb, t, path);
}

function parseXTypes(Env env, Binding? b, json[] js, JsonPath parent, int startIndex) returns SemType[]|JsonParseError {
    SemType[] s = [];
    foreach var i in startIndex ..< js.length() {
        SemType t = check parseXType(env, b, js[i], pathAppend(parent, i));
        s.push(t);
    }
    return s;
}

function parseError(string message, JsonPath path, int? step = ()) returns JsonParseError {
    if !(step is ()) {
        path.push(step);
    }
    return error JsonParseError(message, path=path);
}

function reduce(SemType[] v, function (SemType, SemType) returns SemType binary, SemType initial) returns SemType {
    match v.length() {
        0 => { return initial; }
        1 => { return v[0]; }
    }
    SemType result = binary(v[0], v[1]);
    foreach int i in 2 ..< v.length() {
        result = binary(result, v[i]);
    }
    return result;
}

function pathAppend(JsonPath parent, int index) returns JsonPath {
    JsonPath path = parent.clone();
    path.push(index);
    return path;
}
