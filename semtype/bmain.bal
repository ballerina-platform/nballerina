import ballerina/io;

import semtype.b;
import semtype.core;
// import semtype.bdd;

public function bmain(string? f) returns error? {
    string filename = f ?: "tests/data/test.bal";
    string balString = check io:fileReadString(filename);
    string[] results = check subtypeRels(balString);
    foreach var line in results {
        io:println(line);
    }
    // io:println("Total BDDs ", bdd:getCount());
}

function subtypeRels(string balString) returns string[]|error {
    core:Env env = new;
    map<core:SemType> m = check b:parse(env, balString);
    var tc = core:typeCheckContext(env);

    var entries = from var [name, t] in m.entries() order by name select [name, t];
    [string, string][] results = [];
    foreach int i in 0 ..< entries.length() {
        foreach int j in i + 1 ..< entries.length() {
            var [name1, t1] = entries[i];
            var [name2, t2] = entries[j];
            if core:isSubtype(tc, t1, t2) {
                results.push([name1, name2]);
            }
            if core:isSubtype(tc, t2, t1) {
                results.push([name2, name1]);
            }
        }
    }
    string[] lines = 
        from var [name1, name2] in results
        let string s = name1 + "<:" + name2
        order by s
        select s;
    return lines;
}