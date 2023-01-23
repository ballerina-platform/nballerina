import ballerina/file;
import ballerina/io;
import ballerina/test;
import wso2/nballerina.comm.err;
import wso2/nballerina.comm.sexpr;
import wso2/nballerina.types.sexpr as ts;

type Relation "assert<"|"assert<>"|"assert=";
type Assertion [Relation, ts:Type, ts:Type];
type NameAtom [string, ts:Atom];
type BoundAssertion ["let", NameAtom[], Assertion];
type Test Assertion|BoundAssertion;

const TEST_DATA_DIR = "modules/types/tests/data";

function listTypeTests() returns error|map<[string, int, sexpr:Data]> {
    string absTestDataDir = check file:getAbsolutePath(TEST_DATA_DIR);
    map<[string, int, sexpr:Data]> files = {};
    foreach var file in checkpanic file:readDir(absTestDataDir) {
        string input = check io:fileReadString(file.absPath);
        sexpr:Data[] tests = check sexpr:parse(input);
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
function testTypes(string filename, int index, sexpr:Data testSexpr) returns error? {
    Test test = check testSexpr.cloneWithType();
    Env env = new;
    match test {
        ["let", var nameAtoms, var assertion] => {
            AtomTableSexpr atoms = {};
            foreach var [name, atom] in <NameAtom[]>nameAtoms {
                atoms[name] = atom;
            }
            check testTypeRelation(env, <Assertion>assertion, atomTableFromSexpr(env, atoms));
        }
        var assertion => {
            check testTypeRelation(env, <Assertion>assertion, {});
        }
    }
}

function testTypeRelation(Env env, Assertion assertion, AtomTable atoms) returns error? {
    Context tc = typeContext(env);
    var [relation, t1, t2] = assertion;
    SemType st1 = fromSexpr(env, atoms, t1);
    SemType st2 = fromSexpr(env, atoms, t2);
    var actual = relationFromResult(isSubtype(tc, st1, st2), isSubtype(tc, st2, st1));
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
