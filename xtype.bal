// External representation of types

type XType XNil|XBoolean|XInt|XString|XSingle|XUnion|XIntersection|XNever|XAny|XList|XFunction|XRec|XRef;

const XNil = "nil";
const XBoolean = "boolean";
const XInt = "int";
const XString = "string";
const XNever = "never";
const XAny = "any";

type XSingle ["const", string];

type XUnion ["|", XType...];
type XIntersection ["&", XType...];

type XList ["list", XType...];
type XFunction ["function", XType...];
type XRec ["rec", string, XList|XFunction];
type XRef ["ref", string];

type JsonPath int[];

type JsonParseDetail record {
    JsonPath path;
};

type JsonParseError error<JsonParseDetail>;

type Binding record {|
    string name;
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
        "list" => {
            SemType[] v = check parseXTypes(env, b, jlist, parent, 1);
            return tuple(env, ...v);
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
                SemType? s = lookupBinding(b, name);
                if s is () {
                    return parseError("no binding for '" + name + "'", parent, 1);
                }
                else {
                    return s;
                }
            }
        }
    }
    return parseError("unrecognized keyword '" + k + "'", pathAppend(parent, 0));
}

function lookupBinding(Binding? b, string name) returns SemType? {
    Binding? tem = b;
    while true {
        if tem is () {
           break;
        }
        else if tem.name == name {
            return tem.semType;
        }
        else {
            tem = tem.next;
        }

    }
    return ();
}

function parseXRec(Env env, Binding? b, string name, json t, JsonPath path) returns SemType|JsonParseError {
    if !(t is json[]) || t.length() == 0 {
        return parseError("rec must be applied to list type", path, 0);
    }
    else {
        json k = t[0];
        if !(k is string) {
            return parseError("rec must be applied to list type", path, 1);
        }
        else {
            final json[] ts = t;
            if k == "list" {
                SemType|error result =
                   recursiveTupleParse(env, (e, ref) => parseXTypes(env, {name, semType: ref, next: b }, ts, path, 1).cloneReadOnly());
                if result is error {
                    return <JsonParseError>result;
                }
                else {
                    return result;
                }
            }
            else {
                return parseError("rec must be applied to list type", path, 0); 
            }
        }
    }
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
