import ballerina/io;

import wso2/nballerina.front;
import wso2/nballerina.err;
import wso2/nballerina.types as t;
// import wso2/nballerina.types.bdd;

public function showTypes(front:SourcePart[] sources) returns err:Any|io:Error? {
    string[] results = check subtypeRels(sources);
    foreach var line in results {
        io:println(line);
    }
    // io:println("Total BDDs ", bddGetCount());
}

function subtypeRels(front:SourcePart[] sources) returns string[]|err:Any|io:Error {
    
    var [env, m] = check front:typesFromString(sources);

    var tc = t:typeContext(env);

    var entries = from var [name, t] in m.entries() order by name select [name, t];
    [string, string][] results = [];
    foreach int i in 0 ..< entries.length() {
        foreach int j in i + 1 ..< entries.length() {
            var [name1, t1] = entries[i];
            var [name2, t2] = entries[j];
            if t:isSubtype(tc, t1, t2) {
                results.push([name1, name2]);
            }
            if t:isSubtype(tc, t2, t1) {
                results.push([name2, name1]);
            }
        }
    }
    string[] rels = 
        from var [name1, name2] in results
        let string s = name1 + "<:" + name2
        order by s
        select s;
    return rels;
}

function testSubtypes(front:SourcePart[] sources, string[] expected) returns boolean|err:Any|io:Error {
    
    var [env, m] = check front:typesFromString(sources);
    var tc = t:typeContext(env);
    foreach var item in expected {
        int? i1 = item.indexOf(" < ");
        if i1 is int {
            string n1 = item.substring(0, i1);
            string n2 = item.substring(i1 + 3);
            t:SemType t1 = m.entries().get(n1)[1];
            t:SemType t2 = m.entries().get(n2)[1];
            if !t:isSubtype(tc, t1, t2) || t:isSubtype(tc, t2, t1) {
                return false;
            }
            continue;
        }
        int? i2 = item.indexOf(" <> ");
        if i2 is int {
            string n1 = item.substring(0, i2);
            string n2 = item.substring(i2 + 4);
            t:SemType t1 = m.entries().get(n1)[1];
            t:SemType t2 = m.entries().get(n2)[1];
            if t:isSubtype(tc, t1, t2) || t:isSubtype(tc, t2, t1) {
                return false;
            }
            continue;
        }
        int? i3 = item.indexOf(" = ");
        if i3 is int {
            string n1 = item.substring(0, i3);
            string n2 = item.substring(i3 + 3);
            t:SemType t1 = m.entries().get(n1)[1];
            t:SemType t2 = m.entries().get(n2)[1];
            if !t:isSubtype(tc, t1, t2) || !t:isSubtype(tc, t2, t1) {
                return false;
            }
            continue;
        }
    }
    return true;
}