import ballerina/file;
import ballerina/io;
import ballerina/test;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types as t;

type Relation "assert<"|"assert<>"|"assert=";
type Assertion [Relation, Type, Type];
type Binding [string, Atom];
type BoundAssertion ["let", Binding[], Assertion];
type Test readonly & Assertion|BoundAssertion;

const TEST_DATA_DIR = "modules/types.sexpr/tests/data";

function listTypeTests() returns error|map<[string, int, sexpr:Any]> {
    string absTestDataDir = check file:getAbsolutePath(TEST_DATA_DIR);
    map<[string, int, sexpr:Any]> files = {};
    foreach var file in checkpanic file:readDir(absTestDataDir) {
        string input = check io:fileReadString(file.absPath);
        sexpr:Any[] tests = check sexpr:parse(input);
        int i = 0;
        foreach var test in tests {
            string name =  checkpanic file:relativePath(absTestDataDir, file.absPath) + "#" + i.toString();
            files[name] = [file.absPath, i, test];
            i += 1;
        }
    }
    return files;
}

@test:Config {
    dataProvider: listTypeTests
}
function typeTests(string filename, int index, sexpr:Any testSexpr) returns error? {
    Test test = check testSexpr.cloneWithType();
    t:Env env = new;
    t:Context tc = t:typeContext(env);
    map<Atom> bindings = {};
    Assertion assertion;
    if test is BoundAssertion {
        assertion = test[2];
        foreach var [name, atom] in test[1] {
            bindings[name] = atom;
        }
    }
    else {
        assertion = test;
    }
    var [relation, t1, t2] = assertion;
    t:SemType st1 = semTypeFromSexpr(env, bindings, t1);
    t:SemType st2 = semTypeFromSexpr(env, bindings, t2);
    var actual = relationFromResult(t:isSubtype(tc, st1, st2), t:isSubtype(tc, st2, st1));
    string expected = relation.substring(6); // 6 = "assert".length()
    if actual != expected {
        string s1 = t1.toString();
        string s2 = t2.toString();
        test:assertFail(string`expected: ${ s1 } ${ expected } ${ s2 } ${ "\n" }actual: ${ s1 } ${ actual } ${ s2 }`);
    }
}

function relationFromResult(boolean t1t2, boolean t2t1) returns "="|"<"|"<>"|">" {
    match [t1t2, t2t1] {
        [true, true] => { return "="; }
        [true, false] => { return "<"; }
        [false, true] => { return ">"; }
        [false, false] => { return "<>"; }
    }
    panic err:impossible();
}
